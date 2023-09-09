package wind.maps.windroze.areas;

import org.geotools.geometry.jts.JTS;
import org.geotools.geometry.jts.JTSFactoryFinder;
import org.geotools.referencing.CRS;
import org.geotools.referencing.ReferencingFactoryFinder;
import org.geotools.referencing.crs.DefaultGeographicCRS;
import org.geotools.referencing.cs.DefaultCartesianCS;
import org.geotools.referencing.operation.DefiningConversion;
import org.locationtech.jts.geom.Coordinate;
import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.Polygon;
import org.opengis.geometry.MismatchedDimensionException;
import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.FactoryException;
import org.opengis.referencing.NoSuchIdentifierException;
import org.opengis.referencing.crs.CRSFactory;
import org.opengis.referencing.crs.GeographicCRS;
import org.opengis.referencing.crs.ProjectedCRS;
import org.opengis.referencing.cs.CartesianCS;
import org.opengis.referencing.operation.Conversion;
import org.opengis.referencing.operation.MathTransformFactory;
import org.opengis.referencing.operation.TransformException;
import wind.maps.windroze.barbs.WindBarb;
import wind.maps.windroze.barbs.WindBarbForAtlanticArea;
import wind.maps.windroze.centroid.Centroids;
import wind.maps.windroze.centroid.CentroidsForAtlanticArea;
import wind.maps.windroze.csv.CsvWriter;
import wind.maps.windroze.csv.CsvWriterForAtlanticArea;
import wind.maps.windroze.data.WindMapInfo;
import wind.maps.windroze.grid.GridCoverage;
import wind.maps.windroze.grid.GridCoverageForAtlanticArea;
import wind.maps.windroze.handler.LocalResourcesPathManager;
import wind.maps.windroze.info.LabelInfo;
import wind.maps.windroze.info.LabelInfoAtlanticArea;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;


public final class NorthAtl implements IcaoArea {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(NorthAtl.class.getName());
    }
        
    private MathTransformFactory mtFactory;
    private ParameterValueGroup parameters;
    private double rotation;
    private Conversion conversion;
    private Map<String, ?> properties;
    private ProjectedCRS projCRS; 
    private GeographicCRS geoCRS;
    private CartesianCS cartCS;
    private CRSFactory crsFactory;
    private GeometryFactory geometryFactory;
    private File windBarbsSldFile;
    private File centroidsSldFile;
    private File centroidsCsvFile;
    private CsvWriter csvWriter;
    private File dataSourceDirRoot;
    
    private final Coordinate[] area = new Coordinate[] { 
        new Coordinate(-148.36, 31.27), 
        new Coordinate(56.45, 24.11), 
        new Coordinate(-6.51, -1.27), 
        new Coordinate(-79.02, 1.33),
        new Coordinate(-148.36, 31.27)
    };
        
    public NorthAtl(File binaryFile) {
        try {
            this.rotation = -45.0;
            this.mtFactory = ReferencingFactoryFinder.getMathTransformFactory(null);
            this.geometryFactory = JTSFactoryFinder.getGeometryFactory(null);        
            this.crsFactory = ReferencingFactoryFinder.getCRSFactory(null);
            this.parameters = getParameterValueGroup();        
            this.conversion = new DefiningConversion("Oblique_Stereographic", parameters);
            this.properties = Collections.singletonMap("name", "Oblique Stereographic " + rotation);
            this.geoCRS = DefaultGeographicCRS.WGS84;
            this.cartCS = DefaultCartesianCS.GENERIC_2D;
            this.projCRS = crsFactory.createProjectedCRS(properties, geoCRS, conversion, cartCS);
            this.dataSourceDirRoot = new File(LocalResourcesPathManager.ATLANTIC_DATASOURCE_DIR_ROOT);
            this.csvWriter = new CsvWriterForAtlanticArea(dataSourceDirRoot, binaryFile, rotation);
            this.windBarbsSldFile = new File(LocalResourcesPathManager.ATLANTIC_WINDBARBS_SLD_FILE_DIR_ROOT);
            this.centroidsSldFile = new File(LocalResourcesPathManager.ATLANTIC_CENTROIDS_SLD_FILE_DIR_ROOT);
            this.centroidsCsvFile = new File(LocalResourcesPathManager.ATLANTIC_DATASOURCE_CENTROIDS_CSV_FILE_DIR_ROOT);
        } catch (FactoryException | IOException ex) {
            Logger.getLogger(NorthAtl.class.getName()).log(Level.SEVERE, null, ex);
        }        
    } 
    
    public ParameterValueGroup getParameterValueGroup() {
        ParameterValueGroup params = null;
        try {
            params = mtFactory.getDefaultParameters("Oblique_Stereographic");
            params.parameter("central_meridian").setValue(rotation);
            params.parameter("latitude_of_origin").setValue(90.0);
            params.parameter("scale_factor").setValue(1);
            params.parameter("false_easting").setValue(0.0);
            params.parameter("false_northing").setValue(0.0); 
        } catch (NoSuchIdentifierException ex) {
            Logger.getLogger(NorthAtl.class.getName()).log(Level.SEVERE, null, ex);
        }        
        return params;
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
        Polygon polygon = geometryFactory.createPolygon(area);
        try {
            polygon = (Polygon) JTS.transform(polygon, CRS.findMathTransform(geoCRS, projCRS));
        } catch (FactoryException | MismatchedDimensionException | TransformException ex) {
            Logger.getLogger(EurAs.class.getName()).log(Level.SEVERE, null, ex);
        }
        return polygon;
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

    @Override
    public WindBarb getWindBarbs(File csvFile) {
        WindBarb windBarb = null;
        try {
            windBarb = new WindBarbForAtlanticArea(csvFile, windBarbsSldFile, parameters, projCRS);
        } catch (IOException | FactoryException ex) {
            Logger.getLogger(NorthAtl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return windBarb;
    }
    
    @Override
    public Centroids getCentroids() {
        Centroids centroids = null;
        try {
            centroids = new CentroidsForAtlanticArea(centroidsCsvFile, centroidsSldFile, parameters, projCRS);
        } catch (IOException ex) {
            Logger.getLogger(NorthAtl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return centroids;
    }
    
    @Override
    public GridCoverage getGridCoverage() {
        return new GridCoverageForAtlanticArea();
    }
    
    @Override
    public String getInfoForFileName(File csvFile, String areaName) {
        WindMapInfo info = new WindMapInfo(csvFile);
        return "u_".concat("QWA".concat(info.getLiteralForecatstTime())).concat(info.getLevelInf()).concat("_").concat(areaName).concat("_").concat("H+").concat(info.getDigitalForecatstTime()).concat("_K=").concat(info.getBasedOnDayInf()).concat(info.getBasedOnObservationHoursInf());
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
                "ICAO AREA H\n" +
                "VALID " + info.getValidOnDateInfo().substring(12,14) + " UTC " + info.getValidOnDateInfo().substring(9,11) + " " + info.getValidOnDateInfo().substring(5,8) + " " + info.getValidOnDateInfo().substring(0,4) + " (H+" + info.getDigitalForecatstTime() + ")\n" +
                "BASED ON " + info.getBasedOnObservationHoursInf() + " UTC " + info.getBasedOnDateInfo().substring(9,11) + " " + info.getBasedOnDateInfo().substring(5,8) + " " + info.getBasedOnDateInfo().substring(0,4) +"\n" +
                "Units used: knots, degrees Celcius\n" +
                "Temperatures negative\n" +
                "unless prefixed by a \"+\"";
        return new LabelInfoAtlanticArea(2465, 1921, "QWA".concat(info.getLiteralForecatstTime()) + info.getLevelInf()  + " UKMS " + info.getBasedOnDayInf() + info.getBasedOnObservationHoursInf()+ info.getObservationTime(), text);
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
        return "EuropeArea{" + 
                "mtFactory=" + mtFactory + ", "
                + "parameters=" + parameters + ", "
                + "rotation=" + rotation + ", "
                + "conversion=" + conversion + ", "
                + "properties=" + properties + ", "
                + "projCRS=" + projCRS + ", "
                + "geoCRS=" + geoCRS + ", "
                + "cartCS=" + cartCS + ", "
                + "crsFactory=" + crsFactory + ", "
                + "area=" + Arrays.toString(area) + 
                '}';
    }  
    
}
