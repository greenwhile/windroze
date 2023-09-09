package wind.maps.windroze.csv;


import wind.maps.windroze.data.WindData;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;


public class CsvWriterForAfricaArea extends CsvWriter {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(CsvWriterForAfricaArea.class.getName());
    } 

    public CsvWriterForAfricaArea(File file, File binaryFile) throws IOException {
        super(file, binaryFile);
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
                        if(latitudeFilter(data.getWindPK().getLatitude()) && longitudeFilter(data.getWindPK().getLongitude())){
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
                            sb.append(String.valueOf(getMeteorologicalAngle(getAngle(data.getUComponentOfWind(), data.getVComponentOfWind()))));
                            sb.append('\n');
                        }
                    }
                    writer.write(sb.toString());
                    writer.close();
                } catch (FileNotFoundException ex) {
                    deleteAllFilesFromFolder(file);
                    Logger.getLogger(CsvWriterForAfricaArea.class.getName()).log(Level.SEVERE, null, ex);
                } 
            }             
        }       
    }       
}
