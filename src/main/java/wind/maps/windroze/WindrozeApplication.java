package wind.maps.windroze;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import wind.maps.windroze.handler.MeteoDataProcessing;

@ComponentScan(basePackages = {"wind.maps.windroze.config",
        "wind.maps.windroze.handler",
        "wind.maps.windroze.properties"})
@SpringBootApplication
public class WindrozeApplication {

    public static void main(String[] args) {
        SpringApplication.run(WindrozeApplication.class, args);
//        MeteoDataProcessing meteo = new MeteoDataProcessing();
//        meteo.go();
    }

}
