package wind.maps.windroze.centroid;

import org.geotools.feature.simple.SimpleFeatureTypeBuilder;
import org.locationtech.jts.geom.Point;
import org.opengis.feature.simple.SimpleFeatureType;
import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.crs.CoordinateReferenceSystem;
import wind.maps.windroze.data.LabelsTemplate;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;


public class Centroids extends LabelsTemplate {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(Centroids.class.getName());
    }

    public Centroids(File csvFile, File sldFile, ParameterValueGroup parameters, CoordinateReferenceSystem crs) throws IOException {
        super(csvFile, sldFile, parameters, crs);
    }

    @Override
    protected SimpleFeatureType getSimpleFeatureType() {
        SimpleFeatureTypeBuilder typeBuilder = new SimpleFeatureTypeBuilder();
        typeBuilder.setName("Centroids");
        typeBuilder.setCRS(crs);
        typeBuilder.add("location", Point.class);
        typeBuilder.add("name", String.class);    
        return typeBuilder.buildFeatureType();
    } 
      
}
