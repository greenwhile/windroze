package wind.maps.windroze.properties;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

@Service
public class PropertiesHandler {

//    @Value("${input.files.location.dir.root}")
//    public static String MAPS_OUTPUT_FILES_DIR_ROOT;
//
//    @Value("${output.files.location.dir.root}")
//    public static String LOCAL_SERVER_BINARY_FILES_FOLDER;
    
//    static {
//        init();
//    }

//    public static void init(){
//        ClassLoader classLoader = PropertiesHandler.class.getClassLoader();
//        File file = new File(classLoader.getResource("./resources/config.properties").getFile());
//
//        try (InputStream input = classLoader.getResourceAsStream("./resources/config.properties")) {
//            Properties prop = new Properties();
//            prop.load(input);
//            LOCAL_SERVER_BINARY_FILES_FOLDER = prop.getProperty("input.files.location.dir.root");
//            MAPS_OUTPUT_FILES_DIR_ROOT = prop.getProperty("output.files.location.dir.root");
//        } catch (IOException ex) {
//            ex.printStackTrace();
//        }
//    }
    
}
