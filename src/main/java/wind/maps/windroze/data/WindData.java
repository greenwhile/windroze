package wind.maps.windroze.data;



import wind.maps.windroze.entity.WindPK;

import java.util.logging.Logger;


public class WindData {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(WindData.class.getName());
    }
    
    private WindPK windPK;
    private Float temperature;
    private Float uComponentOfWind; 
    private Float vComponentOfWind;
    
    public WindData() {
    }

    public WindData(WindPK windPK, Float temperature, Float uComponentOfWind, Float vComponentOfWind) {
        this.windPK = windPK;
        this.temperature = temperature;
        this.uComponentOfWind = uComponentOfWind;
        this.vComponentOfWind = vComponentOfWind;
    }

    public WindPK getWindPK() {
        return windPK;
    }

    public void setWindPK(WindPK windPK) {
        this.windPK = windPK;
    }

    public Float getTemperature() {
        return temperature;
    }

    public void setTemperature(Float temperature) {
        this.temperature = temperature;
    }

    public Float getUComponentOfWind() {
        return uComponentOfWind;
    }

    public void setUComponentOfWind(Float uComponentOfWind) {
        this.uComponentOfWind = uComponentOfWind;
    }

    public Float getVComponentOfWind() {
        return vComponentOfWind;
    }

    public void setVComponentOfWind(Float vComponentOfWind) {
        this.vComponentOfWind = vComponentOfWind;
    }

    @Override
    public String toString() {
        return "windPK=" + windPK + ", "
                + "temperature=" + temperature + ", "
                + "uComponentOfWind=" + uComponentOfWind + ", "
                + "vComponentOfWind=" + vComponentOfWind;
    }     
    
}
