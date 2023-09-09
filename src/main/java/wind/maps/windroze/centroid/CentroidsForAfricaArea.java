package wind.maps.windroze.centroid;

import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.crs.CoordinateReferenceSystem;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;


public class CentroidsForAfricaArea extends Centroids {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(CentroidsForAfricaArea.class.getName());
    }

    public CentroidsForAfricaArea(File csvFile, File sldFile, ParameterValueGroup parameters, CoordinateReferenceSystem crs) throws IOException {
        super(csvFile, sldFile, parameters, crs);
    }    
    
}
