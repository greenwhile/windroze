package wind.maps.windroze.barbs;

import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.FactoryException;
import org.opengis.referencing.crs.CoordinateReferenceSystem;

import java.io.File;
import java.io.IOException;
import java.util.logging.Logger;


public class WindBarbForAtlanticArea extends WindBarb {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(WindBarbForAtlanticArea.class.getName());
    }

    public WindBarbForAtlanticArea(File csvFile, File sldFile, ParameterValueGroup parameters, CoordinateReferenceSystem crs) throws IOException, FactoryException {
        super(csvFile, sldFile, parameters, crs);
    }
    
}
