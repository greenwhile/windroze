package wind.maps.windroze.csv;

import wind.maps.windroze.data.WindData;
import wind.maps.windroze.grib2.UcarGrib2Utility;
import wind.maps.windroze.handler.LocalResourcesPathManager;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class CsvWriter {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(CsvWriter.class.getName());
    } 
        
    protected File file;
    protected UcarGrib2Utility util;
    protected double rotation;
    protected Set<Double> distinctLevels;
    protected List<WindData> windDataList;
//    final static String INPUT_FILES_DIR_ROOT = "./resources/GRIB2/";
    
    public CsvWriter(File file, File binaryFile, double rotation) throws IOException {
        this.file = file;
        this.util = new UcarGrib2Utility(binaryFile);
//        this.util.init();
//        this.util.deleteAllFilesFromFolder(new File(LocalResourcesPathManager.GRIB2_FILES_DIR_ROOT));
        this.distinctLevels = util.getDistinctLevels();
        this.rotation = rotation;
    }

    public UcarGrib2Utility getUtil() {
        return util;
    }

    public CsvWriter(File file, File binaryFile) throws IOException{
        this.file = file;
        this.util = new UcarGrib2Utility(binaryFile);
//        this.util.init();
//        this.util.deleteAllFilesFromFolder(new File(LocalResourcesPathManager.GRIB2_FILES_DIR_ROOT));
        this.distinctLevels = util.getDistinctLevels();
    }
            
    protected void deleteAllFilesFromFolder(File folder){
        File[] folderEntries = folder.listFiles();
        if(folderEntries.length != 0){
            for (File entry : folderEntries) {
                entry.delete();
            }
            if(folderEntries.length == 0){
                LOGGER.log(Level.INFO, "All files from {0} are successfully deleted!", folder.getName());
            }
        }  
    }
    
    protected boolean isEmpty(File folder){
        return folder.listFiles().length == 0;
    }
     
    public abstract void write();
        
    protected boolean longitudeFilter(Double value){
        return Math.abs(value) % 5 == 0; 
    }
        
    protected boolean latitudeFilter(Double value){
        return Math.abs(value) % 5 == 0; 
    }
    
    protected Integer getWindSpeed(Float uComponentOfWind, Float vComponentOfWind){
        return convertToKnots(Math.sqrt(Math.pow(uComponentOfWind, 2) + Math.pow(vComponentOfWind, 2)));
    }
    
    protected Double getAngle(Float uComponentOfWind, Float vComponentOfWind){
        return (180.0/Math.PI)*Math.atan2(uComponentOfWind, vComponentOfWind)+270.0;
    }
    
    protected Double convertToCelsius(Float temperatureInKelvins){
        return temperatureInKelvins - 273.15;
    }
    
    protected Double to_180(Double longitude){
        return mod((longitude + 180.0), 360.0) - 180.0 + getModulo(longitude); 
    }
        
    protected double mod(double x, double y){
        return (int)( x - (int)Math.floor( x / y ) * y );
    }
        
    protected double getModulo(double longitude){
        return longitude - Math.floor(longitude);
    }
        
    protected Double getMeteorologicalAngle(Double angle){
        return angle < 0.0 ? angle + 360.0 : angle;
    }
    
    private Double getSharpMeridianAngle(double longitude){
        return longitude > rotation ? (longitude - rotation) : -(longitude - rotation);
    }
    
    protected Double getCorrectedMeteorologicalAngle(double longitude, Double meteorologicalAngle){
        return longitude > rotation ? meteorologicalAngle - getSharpMeridianAngle(longitude) : meteorologicalAngle + getSharpMeridianAngle(longitude);
    }
        
    protected Integer convertToKnots(Double windSpeedInMetersPerSecond){
        return (int)Math.round(1.943844 * windSpeedInMetersPerSecond);
    }
    
    protected String getOutputFileName(Double level){
        String fileName = null;
        if(level != 0){
            fileName = String.valueOf(level).substring(0, 3);
        }
        else{
            fileName = "000";
        } 
        return fileName;
    }

    // ************************************
    protected String getOutputFileName(){
        String fileName = util.getTargetBinaryFile().getName();
        return fileName.substring(0, fileName.length()-2);
    }
    
    public List<File> getGrib2FilesList(File folder){
        File[] folderEntries = folder.listFiles();
        List<File> files = new ArrayList<>();
        for (File entry : folderEntries) {
            if (entry.isDirectory()) {
                List<File> subFolderEntries = getCsvFilesList(entry.getPath());
                for (File subEntry : subFolderEntries) {
                    if(subEntry.isFile())
                    files.add(subEntry);
                }
            }
            if((entry.isFile() && entry.getName().endsWith("grib2") || entry.isFile() && entry.getName().endsWith("grb2")) && entry.isFile() && !entry.getName().startsWith("XXX")){
                files.add(entry);
            }
        }
        return files;
    }

    public List<File> getCsvFilesList(String folder){
        File[] folderEntries = new File(folder).listFiles();
        List<File> files = new ArrayList<>();
        for (File entry : folderEntries) {
            if (entry.isDirectory()) {
                List<File> subFolderEntries = getCsvFilesList(entry.getPath());
                for (File subEntry : subFolderEntries) {
                    if(subEntry.isFile())
                        files.add(subEntry);
                }
            }
            if((entry.isFile() && entry.getName().endsWith(".csv"))){
                files.add(entry);
            }
        }
        return files;
    }
    
}