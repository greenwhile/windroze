package wind.maps.windroze.centroid;

import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.crs.CoordinateReferenceSystem;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;


public class CentroidsForAsiaArea extends Centroids {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(CentroidsForAsiaArea.class.getName());
    }

    public CentroidsForAsiaArea(File csvFile, File sldFile, ParameterValueGroup parameters, CoordinateReferenceSystem crs) throws IOException {
        super(csvFile, sldFile, parameters, crs);
    }
    
}
