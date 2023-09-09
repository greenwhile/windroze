package wind.maps.windroze.areas;

import org.geotools.geometry.jts.JTSFactoryFinder;
import org.geotools.referencing.crs.DefaultGeographicCRS;
import org.geotools.referencing.cs.DefaultCartesianCS;
import org.locationtech.jts.geom.Coordinate;
import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.Polygon;
import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.FactoryException;
import org.opengis.referencing.crs.CRSFactory;
import org.opengis.referencing.crs.GeographicCRS;
import org.opengis.referencing.crs.ProjectedCRS;
import org.opengis.referencing.cs.CartesianCS;
import org.opengis.referencing.operation.Conversion;
import org.opengis.referencing.operation.MathTransformFactory;
import wind.maps.windroze.barbs.WindBarb;
import wind.maps.windroze.barbs.WindBarbForAfricaArea;
import wind.maps.windroze.centroid.Centroids;
import wind.maps.windroze.centroid.CentroidsForAfricaArea;
import wind.maps.windroze.csv.CsvWriter;
import wind.maps.windroze.csv.CsvWriterForAfricaArea;
import wind.maps.windroze.data.WindMapInfo;
import wind.maps.windroze.grid.GridCoverage;
import wind.maps.windroze.grid.GridCoverageForAfricaArea;
import wind.maps.windroze.handler.LocalResourcesPathManager;
import wind.maps.windroze.info.LabelInfo;
import wind.maps.windroze.info.LabelInfoAfricaArea;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;


public class EurAfr implements IcaoArea {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(EurAfr.class.getName());
    }
        
    private MathTransformFactory mtFactory;
    private ParameterValueGroup parameters;
    private Conversion conversion;
    private Map<String, ?> properties;
    private ProjectedCRS projCRS;
    private CRSFactory crsFactory;
    private GeographicCRS geoCRS;
    private CartesianCS cartCS;    
    private GeometryFactory geometryFactory;
    private File windBarbsSldFile;
    private File centroidsSldFile;
    private File centroidsCsvFile;
    private CsvWriter csvWriter;
    private File dataSourceDirRoot;
    
    private final Coordinate[] area = new Coordinate[] { 
        new Coordinate(-35.00, 75.00), 
        new Coordinate(70.00, 75.00), 
        new Coordinate(70.00, -45.00), 
        new Coordinate(-35.00, -45.00),
        new Coordinate(-35.00, 75.00)
    };       
        
    public EurAfr(File binaryFile) {  
        try {            
            this.dataSourceDirRoot = new File(LocalResourcesPathManager.AFRICA_DATASOURCE_DIR_ROOT);
            this.windBarbsSldFile = new File(LocalResourcesPathManager.AFRICA_WINDBARBS_SLD_FILE_DIR_ROOT);
            this.centroidsSldFile = new File(LocalResourcesPathManager.AFRICA_CENTROIDS_SLD_FILE_DIR_ROOT);
            this.csvWriter = new CsvWriterForAfricaArea(dataSourceDirRoot, binaryFile);
            this.centroidsCsvFile = new File(LocalResourcesPathManager.AFRICA_DATASOURCE_CENTROIDS_CSV_FILE_DIR_ROOT);
            this.geometryFactory = JTSFactoryFinder.getGeometryFactory(null);
            this.geoCRS = DefaultGeographicCRS.WGS84;
            this.cartCS = DefaultCartesianCS.GENERIC_2D;
        } catch (IOException ex) {
            Logger.getLogger(EurAfr.class.getName()).log(Level.SEVERE, null, ex);
        }                 
    }
           
    @Override
    public void writeDataIntoCsvFile(){
        csvWriter.write();
    }

    @Override
    public Coordinate[] getArea() {
        return area;
    }
    
    @Override
    public Polygon getPolygon(){
        return geometryFactory.createPolygon(area);
    }

    @Override
    public Conversion getConversion() {
        return conversion;
    }

    @Override
    public Map<String, ?> getProperties() {
        return properties;
    }

    @Override
    public ProjectedCRS getProjCRS() {
        return projCRS;
    }

    public GeographicCRS getGeoCRS() {
        return geoCRS;
    }

    @Override
    public WindBarb getWindBarbs(File csvFile) {
        WindBarb windBarb = null;
        try {
            windBarb = new WindBarbForAfricaArea(csvFile, windBarbsSldFile, parameters, projCRS);
        } catch (IOException | FactoryException ex) {
            Logger.getLogger(EurAfr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return windBarb;
    }
    
    @Override
    public Centroids getCentroids() {
        Centroids centroids = null;
        try {
            centroids = new CentroidsForAfricaArea(centroidsCsvFile, centroidsSldFile, parameters, projCRS);
        } catch (IOException ex) {
            Logger.getLogger(EurAfr.class.getName()).log(Level.SEVERE, null, ex);
        }
        return centroids;
    }
    
    @Override
    public GridCoverage getGridCoverage() {
        return new GridCoverageForAfricaArea();
    }
    
    @Override
    public String getInfoForFileName(File csvFile, String areaName) {
        WindMapInfo info = new WindMapInfo(csvFile);        
        return "u_".concat("QWR".concat(info.getLiteralForecatstTime())).concat(info.getLevelInf()).concat("_").concat(areaName).concat("_").concat("H+").concat(info.getDigitalForecatstTime()).concat("_K=").concat(info.getBasedOnDayInf()).concat(info.getBasedOnObservationHoursInf());
    }
    
    @Override
    public LabelInfo getInfoLabel(File csvFile) { 
        WindMapInfo info = new WindMapInfo(csvFile);
        String text = "ISSUED BY WAFC LONDON\n" +
                "PROVIDED BY UKRAINIAN\n" +
                "HYDROMETEOROLOGICAL CENTRE\n" +
                "WIND / TEMPERATURE\n" +
                "FL " + info.getFlyghtInf() + " – " + info.getLevel() + " hPA\n" +
                "FIXED TIME PROGNOSTIC CART\n" +
                "ICAO AREA C\n" +
                "VALID " + info.getValidOnDateInfo().substring(12,14) + " UTC " + info.getValidOnDateInfo().substring(9,11) + " " + info.getValidOnDateInfo().substring(5,8) + " " + info.getValidOnDateInfo().substring(0,4) + " (H+" + info.getDigitalForecatstTime() + ")\n" +
                "BASED ON " + info.getBasedOnObservationHoursInf() + " UTC " + info.getBasedOnDateInfo().substring(9,11) + " " + info.getBasedOnDateInfo().substring(5,8) + " " + info.getBasedOnDateInfo().substring(0,4) +"\n" +
                "Units used: knots, degrees Celcius\n" +
                "Temperatures negative\n" +
                "unless prefixed by a \"+\"";
        return new LabelInfoAfricaArea(2307, 0, "QWR".concat(info.getLiteralForecatstTime()) + info.getLevelInf()  + " UKMS " + info.getBasedOnDayInf() + info.getBasedOnObservationHoursInf()+ info.getObservationTime(), text);
    }
    
    @Override
    public File getDataSourceDirRoot() {
        return dataSourceDirRoot;
    }

    @Override
    public CsvWriter getCsvWriter() {
        return this.csvWriter;
    }

    @Override
    public String toString() {
        return "AfricaArea{" + "mtFactory=" + mtFactory + ", "
                + "parameters=" + parameters + ", "
                + "conversion=" + conversion + ", "
                + "properties=" + properties + ", "
                + "projCRS=" + projCRS + ", "
                + "crsFactory=" + crsFactory + ", "
                + "geoCRS=" + geoCRS + ", "
                + "cartCS=" + cartCS + ", "
                + "geometryFactory=" + geometryFactory + ", "
                + "area=" + Arrays.toString(area) + '}';
    }
    
}
