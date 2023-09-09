package wind.maps.windroze.barbs;

import org.geotools.feature.simple.SimpleFeatureTypeBuilder;
import org.locationtech.jts.geom.Point;
import org.opengis.feature.simple.SimpleFeatureType;
import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.crs.CoordinateReferenceSystem;
import wind.maps.windroze.data.LabelsTemplate;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;


public abstract class WindBarb extends LabelsTemplate {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(WindBarb.class.getName());
    }
   
    public WindBarb(File csvFile, File sldFile, ParameterValueGroup parameters, CoordinateReferenceSystem crs) throws IOException {
        super(csvFile, sldFile, parameters, crs);            
    }
        
    @Override
    protected SimpleFeatureType getSimpleFeatureType(){
        SimpleFeatureTypeBuilder typeBuilder = new SimpleFeatureTypeBuilder();
        typeBuilder.setName("WindBarb");
        typeBuilder.setCRS(crs);
        typeBuilder.add("location", Point.class);
        typeBuilder.add("temperature", Double.class);
        typeBuilder.add("u", Double.class);
        typeBuilder.add("v", Double.class);
        typeBuilder.add("windSpeed", Integer.class);
        typeBuilder.add("angle", Double.class);        
        return typeBuilder.buildFeatureType();
    }
    
}
