package wind.maps.windroze.layers;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.JPanel;
import javax.xml.transform.TransformerException;
import org.geotools.data.FileDataStore;
import org.geotools.data.FileDataStoreFinder;
import org.geotools.data.simple.SimpleFeatureSource;
import org.geotools.geometry.jts.JTSFactoryFinder;
import org.geotools.geometry.jts.ReferencedEnvelope;
import org.geotools.map.FeatureLayer;
import org.geotools.map.MapContent;
import org.geotools.referencing.ReferencingFactoryFinder;
import org.geotools.renderer.GTRenderer;
import org.geotools.renderer.lite.StreamingRenderer;
import org.geotools.styling.SLD;
import org.geotools.styling.Style;
import org.locationtech.jts.geom.GeometryFactory;
import org.locationtech.jts.geom.Polygon;
import org.opengis.referencing.crs.CRSFactory;
import org.opengis.referencing.crs.CoordinateReferenceSystem;
import org.opengis.referencing.crs.GeographicCRS;
import org.opengis.referencing.operation.MathTransformFactory;
import wind.maps.windroze.areas.EurAfr;
import wind.maps.windroze.areas.IcaoArea;
import wind.maps.windroze.handler.LocalResourcesPathManager;
import wind.maps.windroze.info.LabelInfo;
import wind.maps.windroze.properties.PropertiesHandler;


public class WorldMap extends JPanel {

    private static final Logger LOGGER;
//    private final static String CONTINENT_FILES_DIR_ROOT = "./resources/substrate/shape/continent/continent.shp";
//    private final static String LAKES_FILES_DIR_ROOT = "./resources/substrate/shape/world_biggest_lakes/world_biggest_lakes.shp";
//    private final static String MAPS_OUTPUT_FILES_DIR_ROOT;

    private final File continentShapeFile;
    private final File lakesShapeFile;
    private CoordinateReferenceSystem crs;
    private final SimpleFeatureSource continentFeatureSource;
    private final SimpleFeatureSource lakesFeatureSource;
    private final Style continentStyle;
    private final Style lakesStyle;
    private final MapContent map;
    private final GeometryFactory geometryFactory;
    private final MathTransformFactory mtFactory;
    private final CRSFactory crsFactory;
    private final FileDataStore continentFileDataStore;
    private final FileDataStore lakesFileDataStore;

    static {
        LOGGER = Logger.getLogger(WorldMap.class.getName());
//        MAPS_OUTPUT_FILES_DIR_ROOT = PropertiesHandler.MAPS_OUTPUT_FILES_DIR_ROOT;
    }

    public WorldMap() throws IOException {
        this.continentShapeFile = new File(LocalResourcesPathManager.CONTINENT_FILES_DIR_ROOT);
        this.lakesShapeFile = new File(LocalResourcesPathManager.LAKES_FILES_DIR_ROOT);
        this.continentFileDataStore = FileDataStoreFinder.getDataStore(continentShapeFile);
        this.lakesFileDataStore = FileDataStoreFinder.getDataStore(lakesShapeFile);
        this.continentFeatureSource = continentFileDataStore.getFeatureSource();
        this.lakesFeatureSource = lakesFileDataStore.getFeatureSource();
        this.continentStyle = SLD.createSimpleStyle(continentFeatureSource.getSchema());
        this.lakesStyle = SLD.createSimpleStyle(lakesFeatureSource.getSchema());
        this.map = new MapContent();
        this.geometryFactory = JTSFactoryFinder.getGeometryFactory( null );
        this.mtFactory = ReferencingFactoryFinder.getMathTransformFactory(null);
        this.crsFactory = ReferencingFactoryFinder.getCRSFactory(null);
    }

    public List<File> getCsvFilesList(File folder){
        File[] folderEntries = folder.listFiles();
        List<File> files = new ArrayList<>();
        for (File entry : folderEntries) {
            if (entry.isDirectory()) {
                List<File> subFolderEntries = getCsvFilesList(entry);
                for (File subEntry : subFolderEntries) {
                    if(subEntry.isFile())
                        files.add(subEntry);
                }
            }
            if(entry.isFile() && entry.getName().endsWith("csv")){
                files.add(entry);
            }
        }
        return files;
    }

    public void saveImage(LabelInfo label, final MapContent map, final String file, final int imageWidth) {
        GTRenderer renderer = new StreamingRenderer();
        renderer.setMapContent(map);
        Rectangle imageBounds = null;
        ReferencedEnvelope mapBounds = null;
        try {
            mapBounds = map.getViewport().getBounds();
            double heightToWidth = mapBounds.getSpan(1) / mapBounds.getSpan(0);
            imageBounds = new Rectangle(0, 0, imageWidth, (int) Math.round(imageWidth * heightToWidth));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        BufferedImage image = new BufferedImage(imageBounds.width, imageBounds.height, BufferedImage.TYPE_INT_RGB);
        Graphics2D gr = image.createGraphics();
        gr.fillRect(0, 0, imageBounds.width, imageBounds.height);
        gr.setPaint(Color.WHITE);
        gr.fill(imageBounds);
        try {
            renderer.paint(gr, imageBounds, mapBounds);
            label.paintComponent(gr);
            File fileToSave = new File(file);
            ImageIO.write(image, "png", fileToSave);
            LOGGER.log(Level.INFO, "The file {0} is successfully saved!", fileToSave.getName());
        } catch (IOException ex) {
            Logger.getLogger(WorldMap.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void display(File csvFile, IcaoArea area) throws MalformedURLException, TransformerException{

        map.addLayer(new FeatureLayer(continentFeatureSource, continentStyle));
        map.addLayer(new FeatureLayer(lakesFeatureSource, lakesStyle));

        try {

            LabelInfo label = null;
            if(area instanceof EurAfr){
                map.addLayer(area.getGridCoverage().getLayer());
                map.addLayer(area.getWindBarbs(csvFile).getLayer());
                map.addLayer(area.getCentroids().getLayer());
                label = area.getInfoLabel(csvFile);
                setViewPortArea(((EurAfr) area).getGeoCRS(), area.getPolygon());
            }
            else{
                map.addLayer(area.getGridCoverage().getLayer());
                map.addLayer(area.getWindBarbs(csvFile).getLayer());
                map.addLayer(area.getCentroids().getLayer());
                label = area.getInfoLabel(csvFile);
                setViewPortArea(area.getProjCRS(), area.getPolygon());
            }
            saveImage(label, map, LocalResourcesPathManager.MAPS_FILES_DIR_ROOT + area.getInfoForFileName(csvFile, area.getClass().getSimpleName()) + ".png", 3000);
            map.dispose();
            csvFile.delete();

        } catch (IOException ex) {
            Logger.getLogger(WorldMap.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private String getOutputFileName(String fileName){
        return fileName.substring(0, fileName.length()-4);
    }

    public void setViewPortArea(CoordinateReferenceSystem crs, Polygon polygon){
        org.geotools.map.MapViewport viewport = map.getViewport();
        GTRenderer gtRenderer = new StreamingRenderer();
        viewport.setCoordinateReferenceSystem(crs);
        viewport.setBounds(new ReferencedEnvelope(polygon.getEnvelopeInternal(), crs));
        gtRenderer.setMapContent(map);
        map.setViewport(viewport);
    }

    public void setViewPortArea(GeographicCRS geoCRS, Polygon polygon){
        org.geotools.map.MapViewport viewport = map.getViewport();
        GTRenderer gtRenderer = new StreamingRenderer();
        viewport.setCoordinateReferenceSystem(geoCRS);
        viewport.setBounds(new ReferencedEnvelope(polygon.getEnvelopeInternal(), geoCRS));
        gtRenderer.setMapContent(map);
        map.setViewport(viewport);
    }
    
}