package wind.maps.windroze.gts;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class GTSTelegramHandler {

    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(GTSTelegramHandler.class.getName());
    }

    public GTSTelegramHandler() {
    }

    private byte[] readFromBinaryFile(String fileName) throws IOException {
        Path path = Paths.get(fileName);
        return Files.readAllBytes(path);
    }

    private void writeIntoBinaryFile(byte[] bytes, String fileName) throws IOException {
        Path path = Paths.get(fileName);
        Files.write(path, bytes);
    }

    private Integer getStartIndexOfRecord(byte[] bytes){
        boolean flag = false;
        for(int i = 0; i < bytes.length - 4; i++) {
            if((char)bytes[i] == (char)1){
                flag = true;
            }
            if(flag){
                char firstGribSymbol = (char)bytes[i];
                char secondGribSymbol = (char)bytes[i+1];
                char thirdGribSymbol = (char)bytes[i+2];
                char fourthGribSymbol = (char)bytes[i+3];

                if(firstGribSymbol == (char)71) { // (char)71 = G
                    if(secondGribSymbol == (char)82) { // (char)82 = R
                        if(thirdGribSymbol == (char)73) { // (char)73 = I
                            if(fourthGribSymbol == (char)66) { // (char)66 = B
                                return i;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    private Integer getEndIndexOfRecord(byte[] bytes){
        boolean sohflag = false;
        boolean etxflag = false;
        for(int i = 0; i < bytes.length - 4; i++) {
            if((char)bytes[i] == (char)1){
                sohflag = true;
            }
            if((char)bytes[i] == (char)3){
                etxflag = true;
            }
            if(!sohflag && etxflag){
                continue;
            }
            else{
                char firstGribSymbol = (char)bytes[i];
                char secondGribSymbol = (char)bytes[i+1];
                char thirdGribSymbol = (char)bytes[i+2];
                char fourthGribSymbol = (char)bytes[i+3];

                if(firstGribSymbol == (char)55) { // (char)55 = 7
                    if(secondGribSymbol == (char)55) {
                        if(thirdGribSymbol == (char)55) {
                            if(fourthGribSymbol == (char)55) {
                                return i + 3;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    private Integer getStartIndexOfSupplementaryInfo(byte[] bytes){
        for(int i = 0; i < bytes.length; i++) {
            if((char)bytes[i] == (char)1){
                return i;
            }
        }
        return null;
    }

    private Integer getEndIndexOfSupplementaryInfo(byte[] bytes){
        for(int i = 0; i < bytes.length; i++) {
            if((char)bytes[i] == (char)3){
                return i;
            }
        }
        return null;
    }

    private String getOutputFileName(byte[] bytes) {
        StringBuffer header = new StringBuffer(6);
        for(int i = 0; i < bytes.length - 6; i++) {

            char firstHeaderSymbol = (char)bytes[i];
            char secondHeaderSymbol = (char)bytes[i+1];
            char thirdHeaderSymbol = (char)bytes[i+2];
            char fourthHeaderSymbol = (char)bytes[i+3];
            char fifthHeaderSymbol = (char)bytes[i+4];
            char sixthHeaderSymbol = (char)bytes[i+5];

            if(firstHeaderSymbol == (char)89) { // (char)89 = Y
                header.append(firstHeaderSymbol);

                if(secondHeaderSymbol == (char)85 || secondHeaderSymbol == (char)86 || secondHeaderSymbol == (char)84 || //(char)85 = U (char)86 = V (char)84 = T
                        secondHeaderSymbol == (char)82 || secondHeaderSymbol == (char)72 || secondHeaderSymbol == (char)73 || //(char)82 = R (char)72 = H (char)73 = I
                        secondHeaderSymbol == (char)70 || secondHeaderSymbol == (char)76 || secondHeaderSymbol == (char)66) { //(char)70 = F (char)76 = L (char)66 = B

                    header.append(secondHeaderSymbol);

                    if(thirdHeaderSymbol == (char)88) { //(char)88 = X

                        header.append(thirdHeaderSymbol);

                        if(fourthHeaderSymbol == (char)65 || fourthHeaderSymbol == (char)66 || fourthHeaderSymbol == (char)67 || //(char)65 = A (char)66 = B (char)67 = C
                                fourthHeaderSymbol == (char)68 || fourthHeaderSymbol == (char)69 || fourthHeaderSymbol == (char)70 || //(char)68 = D (char)69 = E (char)70 = F
                                fourthHeaderSymbol == (char)71 || fourthHeaderSymbol == (char)72 || fourthHeaderSymbol == (char)73 || //(char)71 = G (char)72 = H (char)73 = I
                                fourthHeaderSymbol == (char)74 || fourthHeaderSymbol == (char)75 || fourthHeaderSymbol == (char)76 ) { //(char)74 = J (char)75 = K (char)76 = L

                            header.append(fourthHeaderSymbol);
                            header.append(fifthHeaderSymbol);
                            header.append(sixthHeaderSymbol);

                            Integer level = Integer.parseInt(header.substring(4, 6));
                            break;
                        }
                    }
                }
            }
        }
        return header.toString();
    }

    public String getCurrentTime(){
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("YYYYmmdd");
        SimpleDateFormat simpleTimeFormat = new SimpleDateFormat("HHmmss");
        long millis = System.currentTimeMillis();
        return simpleDateFormat.format(cal.getTime()) + "_" + simpleTimeFormat.format(cal.getTime()) + "_" + millis;
    }

    private boolean deleteAllFilesFromFolder(File folder){
        File[] folderEntries = folder.listFiles();
        if(folderEntries.length != 0){
            for (File entry : folderEntries) {
                entry.delete();
            }
            if(folderEntries.length == 0){
                LOGGER.log(Level.INFO, "All files from {0} are successfully deleted!", folder.getName());
            }
        }
        return true;
    }

    public void convertBinaryDataIntoGrib2Files(File file, String outputFolder) throws IOException {
        boolean flag = false;
        try {
            byte[] bytes = readFromBinaryFile(file.getPath());

            for(int i = 0; i < bytes.length; i++) {

//                int startSupplIndex = getStartIndexOfSupplementaryInfo(bytes);
//                int endSupplIndex = getEndIndexOfSupplementaryInfo(bytes);
//                LOGGER.log(Level.INFO, "suppl indx: " + startSupplIndex + " " + endSupplIndex); // startSupplIndex=13 2
                int startIndex = getStartIndexOfRecord(bytes);
                int endIndex = getEndIndexOfRecord(bytes) + 1;
//                System.out.println("indx: " + startIndex + " " + endIndex); // 44 endIndex=11

//                System.out.println("indx: " + startIndex + " " + endIndex);

                byte[] gribFileBytes = Arrays.copyOfRange(bytes, startIndex, endIndex);
                bytes = Arrays.copyOfRange(bytes, endIndex + 1, bytes.length);

                String outputFileName1 = file.getName().substring(0,file.getName().length()-2);
                String outputFileName2 = getOutputFileName(bytes);
                String currTime = getCurrentTime();

                try {
                    if(!outputFileName2.isEmpty()){
                        System.out.println("grib2: " + outputFolder + " => " + new File(outputFolder) + "/" + outputFileName1 + "_" + outputFileName2 + "_" + currTime + ".grib2");
                        writeIntoBinaryFile(gribFileBytes, new File(outputFolder) + "/" + outputFileName1 + "_" + outputFileName2 + "_" + currTime + ".grib2");
                    }
                } catch (IOException ex) {
                    Logger.getLogger(GTSTelegramHandler.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        } catch (IOException ex) {
            Logger.getLogger(GTSTelegramHandler.class.getName()).log(Level.SEVERE, null, ex);
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

}
