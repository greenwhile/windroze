package wind.maps.windroze.grid;

import org.geotools.data.collection.ListFeatureCollection;
import org.geotools.data.simple.SimpleFeatureSource;
import org.geotools.feature.simple.SimpleFeatureBuilder;
import org.geotools.feature.simple.SimpleFeatureTypeBuilder;
import org.geotools.geometry.jts.ReferencedEnvelope;
import org.geotools.grid.GridFeatureBuilder;
import org.geotools.grid.Lines;
import org.geotools.grid.ortholine.LineOrientation;
import org.geotools.grid.ortholine.OrthoLine;
import org.geotools.grid.ortholine.OrthoLineDef;
import org.geotools.map.FeatureLayer;
import org.geotools.map.Layer;
import org.geotools.referencing.crs.DefaultGeographicCRS;
import org.geotools.styling.Style;
import org.opengis.feature.simple.SimpleFeature;
import org.opengis.feature.simple.SimpleFeatureType;
import org.opengis.referencing.crs.GeographicCRS;
import wind.maps.windroze.builder.LineFeatureBuilder;
import wind.maps.windroze.builder.OrthoLineBuilder;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Logger;


public abstract class GridCoverage {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(GridCoverage.class.getName());
    }
    
    private final GeographicCRS geoCRS;
    private final ReferencedEnvelope gridBounds;
    private final List<OrthoLineDef> lineDefs;    
    private final SimpleFeatureType simpleFeatureGridType;
    private final double vertexSpacing;

    public GridCoverage() { 
        this.geoCRS = DefaultGeographicCRS.WGS84;
        this.gridBounds = new ReferencedEnvelope(-180.0, 180.00, -90.00, 90.00, geoCRS);
        this.lineDefs = getOrtoLineDef();
        this.simpleFeatureGridType = getSimpleFeatureType();
        this.vertexSpacing = 0.1;
    }
    
    private List<OrthoLineDef> getOrtoLineDef(){
        return Arrays.asList(
            new OrthoLineDef(LineOrientation.VERTICAL, 2, 10.0),
            new OrthoLineDef(LineOrientation.VERTICAL, 1, 10.0),
            new OrthoLineDef(LineOrientation.HORIZONTAL, 2, 10.0),
            new OrthoLineDef(LineOrientation.HORIZONTAL, 1, 10.0));
    }
    
    private SimpleFeatureType getSimpleFeatureType(){
        SimpleFeatureTypeBuilder typeBuilder = new SimpleFeatureTypeBuilder();
        typeBuilder.setName("LineGrid");
        typeBuilder.add(
            GridFeatureBuilder.DEFAULT_GEOMETRY_ATTRIBUTE_NAME,
            OrthoLine.class,
            geoCRS);
        typeBuilder.add("id", Integer.class);
        typeBuilder.add("level", Integer.class);
        typeBuilder.add("value", Object.class);
        typeBuilder.add("label", String.class);
        return typeBuilder.buildFeatureType();
    }
    
    private SimpleFeatureSource getSimpleFeatureSorce(){
        SimpleFeatureBuilder simpleFeatureGridBuilder = new SimpleFeatureBuilder(simpleFeatureGridType);        
        List<SimpleFeature>simpleFeatureGridList = new ArrayList<>(); 
        GridFeatureBuilder gridFeatureBuilder = new LineFeatureBuilder(simpleFeatureGridType);
        ListFeatureCollection listFeatureCollection = new ListFeatureCollection(simpleFeatureGridType, simpleFeatureGridList);
        OrthoLineBuilder orthoLinebuilder = new OrthoLineBuilder(gridBounds);
        orthoLinebuilder.buildGrid(lineDefs, gridFeatureBuilder, vertexSpacing, listFeatureCollection);        
        return Lines.createOrthoLines(gridBounds, lineDefs, vertexSpacing, gridFeatureBuilder);        
    }    
    
    protected abstract Style getStyle();
        
    public Layer getLayer() {
        return new FeatureLayer(getSimpleFeatureSorce(), getStyle());
    }
            
}