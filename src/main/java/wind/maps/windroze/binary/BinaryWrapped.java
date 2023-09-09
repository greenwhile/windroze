package wind.maps.windroze.binary;

import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.attribute.BasicFileAttributes;

public class BinaryWrapped {
    private Integer WMO_BINARY_DATA_DETERMINATIVE_GRIB2_HEADER_LENGTH_LONDON = 21;
    byte[] bytes;
    Integer [] indexes;

    byte [] t1t2a1a2;
    byte [] t1t2a1;
    byte [] a2;
    byte [] level;
    byte [] datasource;
    byte [] observation;
    File binaryFilePath;

    // Z_GRIB2+T18,,121200_C_EGRR_20191112155614

    public String getTargetBinaryFileName() throws IOException {
        return "Z_GRIB2+T"+getA2()+",,"+getObservation()+"_C_"+getDatasource()+ "_"+getCreationTime()+".b";
    }
    public BinaryWrapped(File binaryFilePath) throws IOException {
        this.bytes = Files.readAllBytes(Paths.get(binaryFilePath.getPath()));
        this.indexes = getHeaderIndexes();
        this.t1t2a1a2 = new byte[4];
        this.t1t2a1 = new byte[3];
        this.a2 = new byte[1];
        this.level = new byte[2];
        this.datasource = new byte[4];
        this.observation = new byte[6];
        this.binaryFilePath = binaryFilePath;

        int count = 0;
        if(this.indexes[0]!=null || this.indexes[0] != null){
            for(int i = this.indexes[0]; i <= this.indexes[1]; i++){
                if(count < 3){
                    this.t1t2a1[count] = this.bytes[i];
                    this.t1t2a1a2[count] = this.bytes[i];
                }
                if(count == 3){
                    this.a2[0] = this.bytes[i];
                    this.t1t2a1a2[count] = this.bytes[i];
                }
                if(count >= 4 && count <= 5){
                    Integer indx = 4;
                    this.level[count-indx] = this.bytes[i];
                }
                if(count >= 7 && count <= 10){
                    Integer indx = 7;
                    this.datasource[count-indx] = this.bytes[i];
                }
                if(count >= 12 && count <= 17){
                    Integer indx = 12;
                    observation[count-indx] = bytes[i];
                }
                count++;
            }
        }
    }

    public String getCreationTime() throws IOException {
        BasicFileAttributes attr = Files.readAttributes(this.binaryFilePath.toPath(), BasicFileAttributes.class);
        String yyyyMMdd = attr.creationTime().toString().replaceAll("-", "").substring(0, 8);
        String hhmmss = attr.creationTime().toString().replaceAll(":", "").substring(11, 17);
        System.out.println("creation:  " + attr.creationTime() + "  " + yyyyMMdd + "  " + hhmmss);
        return yyyyMMdd + hhmmss;
    }

    public Integer[] getHeaderIndexes(){
        boolean flag = false;
        Integer index = 0;
        Integer [] indexes = new Integer [2];
        for(int i = 0; i < bytes.length; i++) {
            if((char)bytes[i] == (char)1) { // SOH - START OF HEADING
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
                                indexes[1] = i - 3 - 1; //
                                indexes[0] = i - WMO_BINARY_DATA_DETERMINATIVE_GRIB2_HEADER_LENGTH_LONDON;

                                System.out.println( firstGribSymbol + " [0] " + (char)bytes[indexes[0]] + "  [1] " + (char)bytes[indexes[1]]);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return indexes;
    }
    public String getA2() {
        String _a2 = new String(a2, StandardCharsets.ISO_8859_1);
        for (A2 a2 : A2.values()) {
            if (a2.name().equalsIgnoreCase(_a2))
                return a2.getForecast();
        }
        return null;
    }
    public String getLevel() {
        return new String(level, StandardCharsets.ISO_8859_1);
    }
    public String getDatasource() {
        return new String(datasource, StandardCharsets.ISO_8859_1);
    }
    public String getObservation() {
        return new String(observation, StandardCharsets.ISO_8859_1);
    }
}
