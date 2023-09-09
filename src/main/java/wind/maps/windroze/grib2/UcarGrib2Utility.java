package wind.maps.windroze.grib2;

import ucar.nc2.grib.grib2.Grib2RecordScanner;
import ucar.nc2.grib.grib2.Grib2SectionDataRepresentation;
import ucar.nc2.grib.grib2.Grib2SectionIndicator;
import ucar.unidata.io.RandomAccessFile;
import wind.maps.windroze.binary.BinaryWrapped;
import wind.maps.windroze.data.WindData;
import wind.maps.windroze.entity.Temperature;
import wind.maps.windroze.entity.UComponentOfWind;
import wind.maps.windroze.entity.VComponentOfWind;
import wind.maps.windroze.entity.WindPK;
import wind.maps.windroze.handler.LocalResourcesPathManager;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;


public class UcarGrib2Utility {

    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(UcarGrib2Utility.class.getName());
    }

//    final static String INPUT_FILES_DIR_ROOT = "./resources/GRIB2";
    private final File currentBinaryFile;
    private final File targetBinaryFile;

    public UcarGrib2Utility(File currentBinaryFile) throws IOException {
        this.currentBinaryFile = currentBinaryFile;
        System.out.println("FROM UCARUTIL: " + new File(new BinaryWrapped(currentBinaryFile).getTargetBinaryFileName()).getPath());
        this.targetBinaryFile = new File(new BinaryWrapped(currentBinaryFile).getTargetBinaryFileName());
    }

    public File getTargetBinaryFile() {
        return targetBinaryFile;
    }

    public File getCurrentBinaryFile() {
        return currentBinaryFile;
    }

    private RandomAccessFile getRandomAccessFile(String grib2file) {
        RandomAccessFile randomAccessFile = null;
        try {
            randomAccessFile = new RandomAccessFile(grib2file, "r");
            randomAccessFile.order(RandomAccessFile.BIG_ENDIAN);
        } catch (IOException ex) {
            Logger.getLogger(UcarGrib2Utility.class.getName()).log(Level.SEVERE, null, ex);
        }
        return randomAccessFile;
    }

    public List<File> getGrib2FilesList(File folder){
        File[] folderEntries = folder.listFiles();
        List<File> files = new ArrayList<>();
        for (File entry : folderEntries) {
            if (entry.isDirectory()) {
                List<File> subFolderEntries = getGrib2FilesList(entry);
                subFolderEntries.stream().filter((subEntry) -> (subEntry.isFile())).forEachOrdered((subEntry) -> {
                    files.add(subEntry);
                });
            }
            if(entry.isFile() && entry.getName().endsWith("grib2") || entry.getName().endsWith("grb2")){
                files.add(entry);
            }
        }
        return files;
    }

    private String getFtpCurrentDirectoryName(){
        String dayInString = null;
        String monthInString = null;
        int day = LocalDate.now().getDayOfMonth();
        int month = LocalDate.now().getMonthValue();
        if(day < 10){
            dayInString = "0".concat(String.valueOf(LocalDate.now().getDayOfMonth()));
        }
        else{
           dayInString = String.valueOf(LocalDate.now().getDayOfMonth());
        }
        if(month < 10){
            monthInString = "0".concat(String.valueOf(LocalDate.now().getMonthValue()));
        }
        else{
            monthInString = String.valueOf(LocalDate.now().getMonthValue());
        }
        return dayInString.concat("_").concat(monthInString);
    }

    private boolean isGrib2FileValid(File grib2file) throws IOException{
        RandomAccessFile randomAccessFile = new RandomAccessFile(grib2file.getPath(), "r");
        Grib2RecordScanner scan = new Grib2RecordScanner(randomAccessFile);
        ucar.nc2.grib.grib2.Grib2Record record = scan.next();
        return record == null ? false : true;
    }

    private void initByFile(File grib2file) {
        try(RandomAccessFile randomAccessFile = new RandomAccessFile(grib2file.getPath(), "r")) {
            Grib2RecordScanner scan = new Grib2RecordScanner(randomAccessFile);
            while (scan.hasNext()) {
                ucar.nc2.grib.grib2.Grib2Record record = scan.next();
                Grib2SectionDataRepresentation dataRepresentationSection = record.getDataRepresentationSection();
                ucar.nc2.grib.grib2.Grib2SectionIdentification id = record.getId();
                Grib2SectionIndicator is = record.getIs();
                ucar.nc2.grib.grib2.Grib2Pds pdsv = record.getPDS();
                ucar.nc2.grib.grib2.Grib2Gds gdsv = record.getGDS();
                float[] values = record.readData(randomAccessFile, dataRepresentationSection.getStartingPosition());

                double lon_start = gdsv.makeHorizCoordSys().getStartX();
                double lon_end =  gdsv.makeHorizCoordSys().getEndX(); // x
                double lat_start = gdsv.makeHorizCoordSys().getStartY();
                double lat_end = gdsv.makeHorizCoordSys().getEndY(); // y
                int index = 0;

                for(double lat = lat_start; lat < lat_end; lat+=1.25){
                    for(double lon = lon_start; lon < lon_end; lon+=1.25){
                        if ((is.getDiscipline() == 0) && (pdsv.getParameterCategory()== 2) && (pdsv.getParameterNumber()== 2) && pdsv.getForecastTime() == Integer.valueOf(grib2file.getName().substring(9, 11)) && (pdsv.getLevelValue1()>=10000 && pdsv.getLevelValue1()<= 85000)){
                            new UComponentOfWind(new WindPK(lat, getLatLon(lon), pdsv.getLevelValue1()), values[index]);
                            index++;
                        }
                        if ((is.getDiscipline() == 0) && (pdsv.getParameterCategory() == 2) && (pdsv.getParameterNumber() == 3) && pdsv.getForecastTime() == Integer.valueOf(grib2file.getName().substring(9, 11)) && (pdsv.getLevelValue1()>=10000 && pdsv.getLevelValue1()<= 85000)){
                            new VComponentOfWind(new WindPK(lat, getLatLon(lon), pdsv.getLevelValue1()), values[index]);
                            index++;
                        }
                        if ((is.getDiscipline() == 0) && (pdsv.getParameterCategory() == 0) && (pdsv.getParameterNumber() == 0) && pdsv.getForecastTime() == Integer.valueOf(grib2file.getName().substring(9, 11)) && pdsv.getLevelValue1()>=10000 && pdsv.getLevelValue1()<= 85000){
                            new Temperature(new WindPK(lat, getLatLon(lon), pdsv.getLevelValue1()), values[index]);
                            index++;
                        }
                    }
                }
            }
        } catch(IOException ex){
            Logger.getLogger(UcarGrib2Utility.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteAllFilesFromFolder(File folder){
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

    public void init(File grib2FilesPath) {
        List<File>grib2files = getGrib2FilesList(grib2FilesPath);
        System.out.println("FROM UcarGribUtility: " + grib2FilesPath + "  --->  " + grib2files.size());
        for (File grib2 : grib2files) {
            initByFile(grib2);
            grib2.delete();
        } //            deleteAllFilesFromFolder(new File(INPUT_FILES_DIR_ROOT));
    }

    public List<WindData> getWindDataList(Double level){
        List<WindData>windDataList = new ArrayList<WindData>();
        Map<WindPK,Float> temperatureMap = Temperature.getTemperatureForLevel(level);
        Map<WindPK,Float> ucomponentMap = UComponentOfWind.getUComponentForLevel(level);
        Map<WindPK,Float> vcomponentMap = VComponentOfWind.getVComponentForLevel(level);

        if(!(temperatureMap.isEmpty() && ucomponentMap.isEmpty() && vcomponentMap.isEmpty()) &&
            ((temperatureMap.size() == ucomponentMap.size()) && (temperatureMap.size() == vcomponentMap.size()))){
            for(WindPK pk : WindPK.getKeys()){
                if(pk.getLevel().equals(level)){
                    Float temperature = (Float)temperatureMap.get(pk);
                    Float ucomponent = (Float)ucomponentMap.get(pk);
                    Float vcomponent = (Float)vcomponentMap.get(pk);
                    windDataList.add(new WindData(pk, temperature, ucomponent, vcomponent));
                }
            }
        }
        else{
            LOGGER.log(Level.WARNING, "Temperature, UComponent and VComponent list don't match equal sizes for level", level);
        }
        return windDataList;
    }

    public Set<Double> getDistinctLevels(){
        return WindPK.getLevels();
    }

    private double getLatLon(double longitude){
        return longitude >= 180.0 ? longitude - 360.0 : longitude;
    }

}
