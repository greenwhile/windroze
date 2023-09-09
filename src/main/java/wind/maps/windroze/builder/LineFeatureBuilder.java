package wind.maps.windroze.builder;

import org.geotools.grid.GridElement;
import org.geotools.grid.GridFeatureBuilder;
import org.geotools.grid.ortholine.LineOrientation;
import org.geotools.grid.ortholine.OrthoLine;
import org.geotools.measure.CoordinateFormat;
import org.locationtech.jts.geom.Coordinate;
import org.opengis.feature.simple.SimpleFeatureType;
import org.opengis.referencing.cs.CoordinateSystem;

import java.text.Format;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LineFeatureBuilder extends GridFeatureBuilder {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(LineFeatureBuilder.class.getName());
    }
    
    public static final String DEFAULT_TYPE_NAME = "linegrid";
    public static final String ID_ATTRIBUTE_NAME = "id";
    public static final String LEVEL_ATTRIBUTE_NAME = "level";
    public static final String VALUE_ATTRIBUTE_NAME = "value";
    public static final String VALUE_LABEL_NAME = "label";

    protected int id;
    private final SimpleFeatureType type;
    private final CoordinateFormat formatter;
    private final Format xFormat;
    private final Format yFormat;
    private final String xUnit;
    private final String yUnit;

    public LineFeatureBuilder(SimpleFeatureType type2) {
        super(type2);
        this.type = type2;
        formatter = new CoordinateFormat();
        formatter.setNumberPattern("##0.00");
        formatter.setAnglePattern("DD.dd");
        formatter.setCoordinateReferenceSystem(type.getCoordinateReferenceSystem());
        xFormat = formatter.getFormat(0);
        yFormat = formatter.getFormat(1);
        CoordinateSystem coordinateSystem = type.getCoordinateReferenceSystem().getCoordinateSystem();
        xUnit = "" + coordinateSystem.getAxis(0).getUnit().toString();
        yUnit = "" + coordinateSystem.getAxis(1).getUnit().toString();         
    }

    @Override
    public void setAttributes(GridElement el, Map<String, Object> attributes) {
        try{
            if (el instanceof OrthoLine) {        
                OrthoLine orthoLine = (OrthoLine) el;
                attributes.put(ID_ATTRIBUTE_NAME, ++id);
                attributes.put(LEVEL_ATTRIBUTE_NAME, orthoLine.getLevel());
                Coordinate v0 = orthoLine.getVertices()[0];
                Double value = null;
                String label = null;
                if (orthoLine.getOrientation() == LineOrientation.HORIZONTAL) {
                  value = v0.y;
                  label = yFormat.format(v0.y) + yUnit;
                } else {
                  value = v0.x;
                  label = xFormat.format(v0.x) + xUnit;
                }
                attributes.put(VALUE_ATTRIBUTE_NAME, value);
                attributes.put(VALUE_LABEL_NAME, label);
            }
        } catch(IllegalArgumentException ex){
            LOGGER.log(Level.SEVERE, "Some attributes are incorrect", ex);
        }        
    }
}
