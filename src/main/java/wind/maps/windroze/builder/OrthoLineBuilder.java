package wind.maps.windroze.builder;

import org.geotools.data.collection.ListFeatureCollection;
import org.geotools.feature.simple.SimpleFeatureBuilder;
import org.geotools.geometry.jts.ReferencedEnvelope;
import org.geotools.grid.GridFeatureBuilder;
import org.geotools.grid.ortholine.LineOrientation;
import org.geotools.grid.ortholine.OrthoLine;
import org.geotools.grid.ortholine.OrthoLineDef;
import org.opengis.feature.simple.SimpleFeature;

import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrthoLineBuilder {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(OrthoLineBuilder.class.getName());
    }
    
    private static final double TOL = 1.0e-8;
    private final ReferencedEnvelope gridBounds;
    private boolean hasVerticals;
    private boolean hasHorizontals;
    private boolean densify;
    private SimpleFeatureBuilder featureBuilder;

    public OrthoLineBuilder(ReferencedEnvelope gridBounds) {
        this.gridBounds = gridBounds;
    }

    public void buildGrid(Collection<OrthoLineDef> lineDefs, GridFeatureBuilder lineFeatureBuilder, double vertexSpacing, ListFeatureCollection fc) {
        init(lineDefs, lineFeatureBuilder, vertexSpacing);
        List<OrthoLineDef> horizontal = new ArrayList<>();
        List<OrthoLineDef> vertical = new ArrayList<>();
        for (OrthoLineDef lineDef : lineDefs) {
            switch (lineDef.getOrientation()) {
                case HORIZONTAL:
                    horizontal.add(lineDef);
                    break;
                case VERTICAL:
                    vertical.add(lineDef);
                    break;
            }
        }
        doBuildLineFeatures(horizontal, LineOrientation.HORIZONTAL, lineFeatureBuilder, densify, vertexSpacing, fc);
        doBuildLineFeatures(vertical, LineOrientation.VERTICAL, lineFeatureBuilder, densify, vertexSpacing, fc);
    }

    private void doBuildLineFeatures(
        List<OrthoLineDef> lineDefs,
        LineOrientation orientation,
        GridFeatureBuilder lineFeatureBuilder,
        boolean densify,
        double vertexSpacing,
        ListFeatureCollection fc) {

        final int NDEFS = lineDefs.size();
        if (NDEFS > 0) {
            double minOrdinate, maxOrdinate;
            if (orientation == LineOrientation.HORIZONTAL) {
                minOrdinate = gridBounds.getMinY();
                maxOrdinate = gridBounds.getMaxY();
            } else {
                minOrdinate = gridBounds.getMinX();
                maxOrdinate = gridBounds.getMaxX();
            }
            double[] pos = new double[NDEFS];
            boolean[] active = new boolean[NDEFS];
            boolean[] atCurPos = new boolean[NDEFS];
            boolean[] generate = new boolean[NDEFS];

            Map<String, Object> attributes = new HashMap<>();
            String geomPropName = lineFeatureBuilder.getType().getGeometryDescriptor().getLocalName();
            for (int i = 0; i < NDEFS; i++) {
                pos[i] = minOrdinate;
                active[i] = true;
            }
            int numActive = NDEFS;
            while (numActive > 0) {
                double curPos = maxOrdinate;
                for (int i = 0; i < NDEFS; i++) {
                    if (active[i] && pos[i] < curPos - TOL) {
                        curPos = pos[i];
                    }
                }
                for (int i = 0; i < NDEFS; i++) {
                    atCurPos[i] = active[i] && Math.abs(pos[i] - curPos) < TOL;
                }
                System.arraycopy(atCurPos, 0, generate, 0, NDEFS);
                for (int i = 0; i < NDEFS - 1; i++) {
                    if (generate[i] && atCurPos[i]) {
                        for (int j = i + 1; j < NDEFS; j++) {
                            if (generate[j] && atCurPos[j]) {
                                if (lineDefs.get(i).getLevel() >= lineDefs.get(j).getLevel()) {
                                    generate[j] = false;
                                } else {
                                    generate[i] = false;
                                    break;
                                }
                            }
                        }
                    } else {
                        generate[i] = false;
                    }
                }
                
                for (int i = 0; i < NDEFS; i++) {
                    if (generate[i]) {
                        OrthoLine element = new OrthoLine(gridBounds, orientation, pos[i], lineDefs.get(i).getLevel());
                        if (lineFeatureBuilder.getCreateFeature(element)) { 
                            lineFeatureBuilder.setAttributes(element, attributes);
                            if (densify) { 
                                featureBuilder.set(geomPropName, element.toDenseGeometry(vertexSpacing));
                            } else {
                                featureBuilder.set(geomPropName, element.toGeometry());
                            }
                            attributes.keySet().forEach((propName) -> {
                                featureBuilder.set(propName, attributes.get(propName));
                            });
                            String featureID = lineFeatureBuilder.getFeatureID(element);
                            SimpleFeature feature = featureBuilder.buildFeature(featureID);
                            fc.add(feature);
                        }
                    }
                }

                for (int i = 0; i < NDEFS; i++) {
                    if (atCurPos[i]) {
                        pos[i] += lineDefs.get(i).getSpacing();
                        if (pos[i] > maxOrdinate + TOL) {
                            active[i] = false;
                            numActive--;
                        }
                    }
                }
            }
        }
    }

    private boolean isValidDenseVertexSpacing(double v) {
        double minDim;
        if (hasVerticals) {
            if (hasHorizontals) {
                minDim = Math.min(gridBounds.getWidth(), gridBounds.getHeight());
            } else {
                minDim = gridBounds.getHeight();
            }
        } else {
            minDim = gridBounds.getWidth();
        }
        return v > 0 && v < minDim / 2;
    }

    private void init(Collection<OrthoLineDef> controls, GridFeatureBuilder lineFeatureBuilder, double vertexSpacing) {
//        if (gridBounds == null || gridBounds.isEmpty()) {
//            throw new IllegalArgumentException("gridBounds must not be null or empty");
//        }
//        if (controls == null || controls.isEmpty()) {
//            throw new IllegalArgumentException("required one or more line parameters");
//        }
        
        try{
            controls.forEach((OrthoLineDef param) -> {
                if (null == param.getOrientation()) {
                    throw new IllegalArgumentException("Only horizontal and vertical lines are supported");
                } else switch (param.getOrientation()) {
                    case HORIZONTAL:
                        hasHorizontals = true;
                        break;
                    case VERTICAL:
                        hasVerticals = true;
                        break;
                    default:
                        throw new IllegalArgumentException("Only horizontal and vertical lines are supported");
                }
            });
            densify = isValidDenseVertexSpacing(vertexSpacing);
            featureBuilder = new SimpleFeatureBuilder(lineFeatureBuilder.getType());
        } catch(IllegalArgumentException ex){
            LOGGER.log(Level.SEVERE, "gridBounds or controls must not be null or empty", ex);
        }        
    }
}
