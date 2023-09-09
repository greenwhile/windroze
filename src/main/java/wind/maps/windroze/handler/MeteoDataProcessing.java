package wind.maps.windroze.handler;

import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import wind.maps.windroze.areas.*;
import wind.maps.windroze.data.Constants;
import wind.maps.windroze.entity.Temperature;
import wind.maps.windroze.entity.UComponentOfWind;
import wind.maps.windroze.entity.VComponentOfWind;
import wind.maps.windroze.entity.WindPK;
import wind.maps.windroze.exception.NotFolderException;
import wind.maps.windroze.gts.GTSTelegramHandler;
import wind.maps.windroze.layers.WorldMap;
import wind.maps.windroze.properties.PropertiesHandler;

import javax.xml.transform.TransformerException;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@Component
public class MeteoDataProcessing {
    private static final Logger LOGGER;
//    private final static String LOCAL_SERVER_BINARY_FILES_FOLDER;
//
//    private final static String GRIB2_FILES_DIR_ROOT = "./resources/GRIB2";
//    private static final String BINARY_FILES_FOLDER = "./resources/BINARY/";
//
//    private static final String EUROPE_DATA_SOURCE_DIR_ROOT = "./resources/DATASOURCE/EUROPE/";
//    private static final String AFRICA_DATA_SOURCE_DIR_ROOT = "./resources/DATASOURCE/AFRICA/";
//    private static final String ASIA_DATA_SOURCE_DIR_ROOT = "./resources/DATASOURCE/ASIA/";
//    private static final String ATLANTIC_DATA_SOURCE_DIR_ROOT = "./resources/DATASOURCE/ATLANTIC/";

    static {
        System.setProperty("java.util.logging.config.file", "./resources/logger.properties");
        LOGGER = Logger.getLogger(MeteoDataProcessing.class.getName());
//        LOCAL_SERVER_BINARY_FILES_FOLDER = PropertiesHandler.LOCAL_SERVER_BINARY_FILES_FOLDER;

//        deleteAllFilesFromFolder(LocalResourcesPathManager.BINARY_FILES_DIR_ROOT);
//        deleteAllFilesFromFolder(LocalResourcesPathManager.GRIB2_FILES_DIR_ROOT);
//        deleteAllFilesFromFolder(LocalResourcesPathManager.EUROPE_DATA_SOURCE_DIR_ROOT);
//        deleteAllFilesFromFolder(LocalResourcesPathManager.AFRICA_DATA_SOURCE_DIR_ROOT);
//        deleteAllFilesFromFolder(LocalResourcesPathManager.ASIA_DATA_SOURCE_DIR_ROOT);
//        deleteAllFilesFromFolder(LocalResourcesPathManager.ATLANTIC_DATA_SOURCE_DIR_ROOT);
    }

    public void consumeMessageFromQueue(String message) {
        System.out.println(" From MeteoDataProcessing.class receiver: " + message);
    }

    @RabbitListener(queues = Constants.GRIB2_QUEUE)
    public void go(String message) {
//        System.out.println(" From MeteoDataProcessing.class receiver: " + message);
        try {
//            BinaryDataFilter filter = new BinaryDataFilter();
//            List<File>binaryFilesList = filter.getBinaryFilesList(LOCAL_SERVER_BINARY_FILES_FOLDER);
//            Map<String, File> filesMap = filter.getUpToDateBinaryFiles(binaryFilesList);
//
//            for(Map.Entry<String, File> item : filesMap.entrySet()){
//                String fileName = (String) item.getKey();
//                File file = (File) item.getValue();
//
//                filter.copyFile(file, new File(BINARY_FILES_FOLDER + file.getName()));
//                LOGGER.log(Level.INFO, fileName + " -> " + file);
//            }

            String[] info = message.split(":");
            // grib2TelegramsDetails[0] - grib2filespath
            // grib2TelegramsDetails[1] - grib2filessource
//            System.out.println("temps:  " + grib2TelegramsDetails[0]);

//            GTSTelegramHandler handler = new GTSTelegramHandler();
//            List<File> binaryFiles = getBinaryDataFilesList(LocalResourcesPathManager.BINARY_FILES_DIR_ROOT);
//            for(File binaryFile : binaryFiles){
//                handler.convertBinaryDataIntoGrib2Files(binaryFile, LocalResourcesPathManager.GRIB2_FILES_DIR_ROOT);
            String binaryFilePath = LocalResourcesPathManager.BINARY_FILES_DIR_ROOT + info[1];
                IcaoArea[] areas = new IcaoArea[] { new EurAs(new File(binaryFilePath)), /*Caused by: java.lang.NullPointerException: null
	at wind.maps.windroze.handler.MeteoDataProcessing.go(MeteoDataProcessing.java:87)*/
                        new NorthAtl(new File(binaryFilePath)),
                        new Eur(new File(binaryFilePath)),
                        new EurAfr(new File(binaryFilePath)) };

                for(IcaoArea area : areas){
                    area.getCsvWriter().getUtil().init(new File(info[0])); /* add exception Caused by: java.lang.NullPointerException: null
                    at wind.maps.windroze.handler.MeteoDataProcessing.go(MeteoDataProcessing.java:87) ~[classes/:na] */

                    area.writeDataIntoCsvFile();
                    File csvFilesDirRoot = area.getDataSourceDirRoot();
                    List<File> dataSourceFiles = getCsvFilesList(csvFilesDirRoot);
                    LOGGER.log(Level.INFO, "datasource: {0} from {1}", new Object[]{csvFilesDirRoot.getName(), MeteoDataProcessing.class.getName()});
                    for(File csvFile : dataSourceFiles){
                        WorldMap map = new WorldMap();
                        map.display(csvFile, area);
                        csvFile.delete();
                    }
                }
//                binaryFile.delete();
                clearEntitiyContainers();
//            }
        } catch (IOException | TransformerException ex) {
            Logger.getLogger(MeteoDataProcessing.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<File> getBinaryDataFilesList(String folderPath){
        File[] folderEntries = new File(folderPath).listFiles();
        List<File> files = new ArrayList<File>();
        if(folderEntries.length > 0){
            for (File entry : folderEntries) {
                if (entry.isDirectory()) {
                    List<File> subFolderEntries = getBinaryDataFilesList(folderPath);
                    for (File subEntry : subFolderEntries) {
                        if(subEntry.isFile())
                        files.add(subEntry);
                    }
                }
                if(entry.isFile() /*&& entry.getName().endsWith("b")*/){
                    files.add(entry);
                }
            }
        }
        else{
            LOGGER.log(Level.SEVERE, "BINARY folder is empty", new RuntimeException("BINARY folder is empty"));
        }
        return files;
    }

    private void clearEntitiyContainers(){
        if(!Temperature.getTemperatureMap().isEmpty()){
            Temperature.getTemperatureMap().clear();
        }
        if(!UComponentOfWind.getUComponentMap().isEmpty()){
            UComponentOfWind.getUComponentMap().clear();
        }
        if(!VComponentOfWind.getVComponentMap().isEmpty()){
            VComponentOfWind.getVComponentMap().clear();
        }
        if(!WindPK.getKeys().isEmpty()){
            WindPK.getKeys().clear();
        }
        if(!WindPK.getLevels().isEmpty()){
            WindPK.getLevels().clear();
        }
    }

    public List<File> getCsvFilesList(File folder){
        File[] folderEntries = new File(folder.getPath()).listFiles();
        List<File> files = new ArrayList<File>();
        if(folderEntries.length > 0) {
            for (File entry : folderEntries) {
                if (entry.isDirectory()) {
                    List<File> subFolderEntries = getCsvFilesList(folder);
                    for (File subEntry : subFolderEntries) {
                        if (subEntry.isFile())
                            files.add(subEntry);
                    }
                }
                if (entry.isFile() && entry.getName().endsWith("csv")) {
                    files.add(entry);
                }
            }
        }
        return files;
    }

    public boolean isEmpty(String folderPath){
        File file = new File(folderPath);
        try{
            if(file.isDirectory()){
                if(file.list().length > 0){
                    return false;
                }
            }
        } catch(NotFolderException ex){
            Logger.getLogger(MeteoDataProcessing.class.getName()).log(Level.SEVERE, "The file " + file.getName() + " isn't a directory", ex);
        }
        return  true;
    }

    public void deleteAllFilesFromFolder(String folderPath){
        File folder = new File(folderPath);
        File[] folderEntries = folder.listFiles();
        if(!isEmpty(folderPath)){
            for (File entry : folderEntries) {
                entry.delete();
            }
            LOGGER.log(Level.INFO, "All files from {0} are successfully deleted!", folder.getName());
        }
    }
}
