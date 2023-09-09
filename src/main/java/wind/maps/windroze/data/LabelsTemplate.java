package wind.maps.windroze.data;

import org.geotools.data.*;
import org.geotools.data.csv.CSVDataStoreFactory;
import org.geotools.factory.CommonFactoryFinder;
import org.geotools.feature.FeatureCollection;
import org.geotools.map.FeatureLayer;
import org.geotools.map.Layer;
import org.geotools.styling.NamedLayer;
import org.geotools.styling.Style;
import org.geotools.styling.StyleFactory;
import org.geotools.styling.StyledLayerDescriptor;
import org.geotools.util.URLs;
import org.geotools.xml.styling.SLDParser;
import org.geotools.xml.styling.SLDTransformer;
import org.opengis.feature.simple.SimpleFeature;
import org.opengis.feature.simple.SimpleFeatureType;
import org.opengis.parameter.ParameterValueGroup;
import org.opengis.referencing.crs.CoordinateReferenceSystem;

import javax.xml.transform.TransformerException;
import java.io.*;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class LabelsTemplate {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(LabelsTemplate.class.getName());
    }
    
    protected File sldFile;
    protected File csvFile;
    private final StyledLayerDescriptor sld; 
    protected final SimpleFeatureType TYPE;
    protected DataStore dataStore;
    private final FileDataStoreFactorySpi factory;
    protected ParameterValueGroup parameters;
    protected CoordinateReferenceSystem crs;
     
    public LabelsTemplate(File csvFile, File sldFile, ParameterValueGroup parameters, CoordinateReferenceSystem crs) throws IOException { 
        this.sldFile = sldFile;
        this.csvFile = csvFile;
        this.sld = getStyledLayerDescriptor();
        this.factory = new CSVDataStoreFactory();
        this.dataStore = getDataStore(this.csvFile);
        this.crs = crs;
        this.TYPE = getSimpleFeatureType();
        this.parameters = parameters;
    }

    private StyledLayerDescriptor getStyledLayerDescriptor() throws FileNotFoundException{
        InputStream inputStream = new FileInputStream(sldFile.getPath()); 
        StyleFactory styleFactory = CommonFactoryFinder.getStyleFactory(null);
        SLDParser parser = new SLDParser(styleFactory, inputStream);
        return parser.parseSLD();
    }
        
    protected Style getStyle() throws MalformedURLException{
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        SLDTransformer transformer = new SLDTransformer();            
        try {
            transformer.setIndentation(0);
            transformer.transform(sld, bos);              
        } catch (TransformerException ex) {
            Logger.getLogger(LabelsTemplate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ((NamedLayer) sld.layers().get(0)).getStyles()[0];
    }
        
    private DataStore getDataStore(File fileName){        
        Map<String, Serializable> params = new HashMap<String, Serializable>();
        try {
            params.put(CSVDataStoreFactory.URL_PARAM.key, URLs.fileToUrl(fileName));
            params.put(CSVDataStoreFactory.STRATEGYP.key, CSVDataStoreFactory.SPECIFC_STRATEGY);
            params.put(CSVDataStoreFactory.LATFIELDP.key, "latitude");
            params.put(CSVDataStoreFactory.LnGFIELDP.key, "longitude");
            dataStore = factory.createDataStore(params);
        } catch (IOException ex) {
            Logger.getLogger(LabelsTemplate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dataStore;
    }
        
    protected FeatureCollection<SimpleFeatureType, SimpleFeature> getFeatureCollection(){
        FeatureCollection<SimpleFeatureType, SimpleFeature> collection = null;
        try {
            String typeName = dataStore.getTypeNames()[0];
            FeatureSource<SimpleFeatureType, SimpleFeature> source = dataStore.getFeatureSource(typeName);
            collection = source.getFeatures();
        } catch (IOException ex) {
            Logger.getLogger(LabelsTemplate.class.getName()).log(Level.SEVERE, null, ex);
        }
        return collection;
    } 
    
    public Layer getLayer() throws MalformedURLException {
        return new FeatureLayer(getFeatureCollection(), getStyle());
    }
    
    protected abstract SimpleFeatureType getSimpleFeatureType();    
         
}
