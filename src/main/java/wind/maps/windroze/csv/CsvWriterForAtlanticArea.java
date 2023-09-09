package wind.maps.windroze.csv;

import wind.maps.windroze.data.WindData;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CsvWriterForAtlanticArea extends CsvWriter {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(CsvWriterForAtlanticArea.class.getName());
    } 

    public CsvWriterForAtlanticArea(File file, File binaryFile, double rotation) throws IOException {
        super(file, binaryFile, rotation);
    }    
    
    @Override
    public void write() {
        if(!isEmpty(file)){
            deleteAllFilesFromFolder(file);
        }
        for(double level : distinctLevels){                
            windDataList = util.getWindDataList(level);        
            if(!windDataList.isEmpty()){
                PrintWriter writer;
                try {
                    writer = new PrintWriter(new File(file.getPath() + "/" + getOutputFileName() + "_wind_" + getOutputFileName(level) + "hPa" + ".csv"));
                    LOGGER.log(Level.INFO, "PrintWriter for wind_{0}hPa.csv file is opened", getOutputFileName(level));
                    StringBuilder sb = new StringBuilder();
                    sb.append("latitude");
                    sb.append(',');
                    sb.append("longitude");
                    sb.append(',');
                    sb.append("temperature");
                    sb.append(',');
                    sb.append("u");
                    sb.append(',');
                    sb.append("v");
                    sb.append(',');
                    sb.append("windSpeed");
                    sb.append(',');
                    sb.append("angle");
                    sb.append('\n');

                    for(WindData data : windDataList){
                        if(Math.abs(data.getWindPK().getLatitude()) > 80.0 && Math.abs(data.getWindPK().getLatitude()) <= 90.0){
                            if(latitudeFilter(data.getWindPK().getLatitude()) && longitudeFilterForFourthSector(data.getWindPK().getLongitude())) {                                                    
                                sb.append(String.valueOf(data.getWindPK().getLatitude()));
                                sb.append(',');
                                sb.append(String.valueOf(to_180(data.getWindPK().getLongitude())));
                                sb.append(',');
                                sb.append(String.valueOf(convertToCelsius(data.getTemperature())));
                                sb.append(',');
                                sb.append(String.valueOf(data.getUComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(data.getVComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(getWindSpeed(data.getUComponentOfWind(), data.getVComponentOfWind())));
                                sb.append(',');
                                sb.append(String.valueOf(getCorrectedMeteorologicalAngle(data.getWindPK().getLongitude(), getMeteorologicalAngle(getAngle(data.getUComponentOfWind(), data.getVComponentOfWind())))));
                                sb.append('\n');
                            }
                        }
                        if(Math.abs(data.getWindPK().getLatitude()) == 80.0){
                            if(latitudeFilter(data.getWindPK().getLatitude()) && longitudeFilterForThirdSector (data.getWindPK().getLongitude())) {                                                    
                                sb.append(String.valueOf(data.getWindPK().getLatitude()));
                                sb.append(',');
                                sb.append(String.valueOf(to_180(data.getWindPK().getLongitude())));
                                sb.append(',');
                                sb.append(String.valueOf(convertToCelsius(data.getTemperature())));
                                sb.append(',');
                                sb.append(String.valueOf(data.getUComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(data.getVComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(getWindSpeed(data.getUComponentOfWind(), data.getVComponentOfWind())));
                                sb.append(',');
                                sb.append(String.valueOf(getCorrectedMeteorologicalAngle(data.getWindPK().getLongitude(), getMeteorologicalAngle(getAngle(data.getUComponentOfWind(), data.getVComponentOfWind())))));
                                sb.append('\n');
                            }
                        }
                        if(Math.abs(data.getWindPK().getLatitude()) > 60.0 && Math.abs(data.getWindPK().getLatitude()) < 80.0){
                            if(latitudeFilter(data.getWindPK().getLatitude()) && longitudeFilterForSecondSector (data.getWindPK().getLongitude())) {                                                    
                                sb.append(String.valueOf(data.getWindPK().getLatitude()));
                                sb.append(',');
                                sb.append(String.valueOf(to_180(data.getWindPK().getLongitude())));
                                sb.append(',');
                                sb.append(String.valueOf(convertToCelsius(data.getTemperature())));
                                sb.append(',');
                                sb.append(String.valueOf(data.getUComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(data.getVComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(getWindSpeed(data.getUComponentOfWind(), data.getVComponentOfWind())));
                                sb.append(',');
                                sb.append(String.valueOf(getCorrectedMeteorologicalAngle(data.getWindPK().getLongitude(), getMeteorologicalAngle(getAngle(data.getUComponentOfWind(), data.getVComponentOfWind())))));
                                sb.append('\n');
                            }
                        }
                        else if(Math.abs(data.getWindPK().getLatitude()) > 30.0 && Math.abs(data.getWindPK().getLatitude()) <= 60.0){
                            if(latitudeFilter(data.getWindPK().getLatitude()) && longitudeFilterForFirstSector(data.getWindPK().getLongitude())) {                                                    
                                sb.append(String.valueOf(data.getWindPK().getLatitude()));
                                sb.append(',');
                                sb.append(String.valueOf(to_180(data.getWindPK().getLongitude())));
                                sb.append(',');
                                sb.append(String.valueOf(convertToCelsius(data.getTemperature())));
                                sb.append(',');
                                sb.append(String.valueOf(data.getUComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(data.getVComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(getWindSpeed(data.getUComponentOfWind(), data.getVComponentOfWind())));
                                sb.append(',');
                                sb.append(String.valueOf(getCorrectedMeteorologicalAngle(data.getWindPK().getLongitude(), getMeteorologicalAngle(getAngle(data.getUComponentOfWind(), data.getVComponentOfWind())))));
                                sb.append('\n');
                            } 
                        }                                    
                        else if(Math.abs(data.getWindPK().getLatitude()) >= 0.0 && Math.abs(data.getWindPK().getLatitude()) <= 30.0){
                            if(latitudeFilter(data.getWindPK().getLatitude()) && longitudeFilter(data.getWindPK().getLongitude())) {
                                sb.append(String.valueOf(data.getWindPK().getLatitude()));
                                sb.append(',');
                                sb.append(String.valueOf(to_180(data.getWindPK().getLongitude())));
                                sb.append(',');
                                sb.append(String.valueOf(convertToCelsius(data.getTemperature())));
                                sb.append(',');
                                sb.append(String.valueOf(data.getUComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(data.getVComponentOfWind()));
                                sb.append(',');
                                sb.append(String.valueOf(getWindSpeed(data.getUComponentOfWind(), data.getVComponentOfWind())));
                                sb.append(',');
                                sb.append(String.valueOf(getCorrectedMeteorologicalAngle(data.getWindPK().getLongitude(), getMeteorologicalAngle(getAngle(data.getUComponentOfWind(), data.getVComponentOfWind())))));
                                sb.append('\n');
                            }
                        }                            
                    }
                    writer.write(sb.toString());
                    writer.close();
                } catch (FileNotFoundException ex) {
                    deleteAllFilesFromFolder(file);
                    Logger.getLogger(CsvWriter.class.getName()).log(Level.SEVERE, null, ex);
                }
            }              
        }       
    }    
                 
    private boolean longitudeFilterForFirstSector(Double value){
        return Math.abs(value) % 10 == 0; 
    }

    private boolean longitudeFilterForSecondSector(Double value){
        return Math.abs(value) % 20 == 0; 
    }
    
    private boolean longitudeFilterForThirdSector(Double value){
        return Math.abs(value) % 30 == 0;
    }
    
    private boolean longitudeFilterForFourthSector(Double value){
        return Math.abs(value) % 90 == 0;
    } 
    
}
