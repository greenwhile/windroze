package wind.maps.windroze.entity;

import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.logging.Logger;


public class Temperature implements Comparable<Temperature> {   
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(Temperature.class.getName());
    }
         
    private WindPK windPK;
    private Float temperature; 
    private static Map<WindPK,Float>temperatureMap = new TreeMap<WindPK,Float>();
    
    public Temperature() {
    }

    public Temperature(WindPK windPK, Float temperature) {
        this.windPK = windPK;
        this.temperature = temperature;
        if(temperatureMap.isEmpty() || !temperatureMap.containsKey(windPK)){
            temperatureMap.put(windPK,temperature);
        }
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

    public static Map<WindPK, Float> getTemperatureMap() {
        return temperatureMap;
    }
    
    public static Map<WindPK,Float> getTemperatureForLevel(Double level){
        Map<WindPK,Float>temperature = new TreeMap<WindPK,Float>();
        for(Map.Entry temperatureEntry : Temperature.getTemperatureMap().entrySet()){
            WindPK key = (WindPK)temperatureEntry.getKey();
            if(key.getLevel().equals(level)){
                temperature.put(key,(Float)temperatureEntry.getValue());
            }
        }
        return temperature;
    }
  
    public static Float getValueByKey(WindPK windPK){
        for(Map.Entry temperatureEntry : Temperature.getTemperatureMap().entrySet()){
            WindPK key = (WindPK)temperatureEntry.getKey();
            if(key.equals(windPK)){
                return (Float)temperatureEntry.getValue();
            }
        }
        return null;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 13 * hash + Objects.hashCode(this.windPK);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Temperature other = (Temperature) obj;
        if (!Objects.equals(this.windPK, other.windPK)) {
            return false;
        }
        return true;
    }    

    @Override
    public int compareTo(Temperature other) {
        return windPK.compareTo(other.windPK);
    }
    
    @Override
    public String toString() {
        return "windPK=" + windPK + ", "
                + "temperature=" + temperature;
    }
    
}
