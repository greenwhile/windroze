package wind.maps.windroze.entity;

import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.logging.Logger;


public class UComponentOfWind implements Comparable<UComponentOfWind>{
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(UComponentOfWind.class.getName());
    }
    
    private WindPK windPK;
    private Float uComponentOfWind; 
    public static Map<WindPK,Float>uComponentMap = new TreeMap<WindPK,Float>();
       
    public UComponentOfWind() {        
    }

    public UComponentOfWind(WindPK windPK, Float uComponentOfWind) {
        this.windPK = windPK;
        this.uComponentOfWind = uComponentOfWind;
        if(uComponentMap.isEmpty() || !uComponentMap.containsKey(windPK)){
            uComponentMap.put(windPK, uComponentOfWind);
        }
    }

    public WindPK getWindPK() {
        return windPK;
    }

    public void setWindPK(WindPK windPK) {
        this.windPK = windPK;
    }

    public Float getUComponentOfWind() {
        return uComponentOfWind;
    }

    public void setUComponentOfWind(Float uComponentOfWind) {
        this.uComponentOfWind = uComponentOfWind;
    }

    public static Map<WindPK, Float> getUComponentMap() {
        return uComponentMap;
    }
    
    public static Map<WindPK,Float> getUComponentForLevel(Double level){
        Map<WindPK,Float>ucomp = new TreeMap<WindPK,Float>();
        for(Map.Entry ucompEntry : UComponentOfWind.getUComponentMap().entrySet()){
            WindPK key = (WindPK)ucompEntry.getKey();
            if(key.getLevel().equals(level)){
                ucomp.put(key,(Float)ucompEntry.getValue());
            }
        }
        return ucomp;
    }
   
    public static Float getValueByKey(WindPK windPK){
        for(Map.Entry uComponentEntry : UComponentOfWind.getUComponentMap().entrySet()){
            WindPK key = (WindPK)uComponentEntry.getKey();
            if(key.equals(windPK)){
                return (Float)uComponentEntry.getValue();
            }
        }
        return null;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 37 * hash + Objects.hashCode(this.windPK);
        hash = 37 * hash + Objects.hashCode(this.uComponentOfWind);
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
        final UComponentOfWind other = (UComponentOfWind) obj;
        if (!Objects.equals(this.windPK, other.windPK)) {
            return false;
        }
        if (!Objects.equals(this.uComponentOfWind, other.uComponentOfWind)) {
            return false;
        }
        return true;
    }

    @Override
    public int compareTo(UComponentOfWind other) {
        return windPK.compareTo(other.windPK);
    }
    
    @Override
    public String toString() {
        return "windPK=" + windPK + ", "
                + "uComponentOfWind=" + uComponentOfWind;
    }
    
}
