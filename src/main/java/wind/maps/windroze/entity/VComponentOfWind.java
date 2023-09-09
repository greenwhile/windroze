package wind.maps.windroze.entity;

import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.logging.Logger;

public class VComponentOfWind implements Comparable<VComponentOfWind> {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(VComponentOfWind.class.getName());
    }
    
    private WindPK windPK;
    private Float vComponentOfWind; 
    private static Map<WindPK,Float>vComponentMap = new TreeMap<WindPK,Float>();
    
    public VComponentOfWind() {
    }

    public VComponentOfWind(WindPK windPK, Float vComponentOfWind) {
        this.windPK = windPK;
        this.vComponentOfWind = vComponentOfWind;
        if(vComponentMap.isEmpty() || !vComponentMap.containsKey(windPK)){
            vComponentMap.put(windPK, vComponentOfWind);
        }
    }

    public WindPK getWindPK() {
        return windPK;
    }

    public void setWindPK(WindPK windPK) {
        this.windPK = windPK;
    }

    public Float getVComponentOfWind() {
        return vComponentOfWind;
    }

    public void setVComponentOfWind(Float vComponentOfWind) {
        this.vComponentOfWind = vComponentOfWind;
    }

    public static Map<WindPK, Float> getVComponentMap() {
        return vComponentMap;
    }
    
    public static Map<WindPK,Float> getVComponentForLevel(Double level){
        Map<WindPK,Float>vcomp = new TreeMap<WindPK,Float>();
        for(Map.Entry temperatureEntry : VComponentOfWind.getVComponentMap().entrySet()){
            WindPK key = (WindPK)temperatureEntry.getKey();
            if(key.getLevel().equals(level)){
                vcomp.put(key,(Float)temperatureEntry.getValue());
            }
        }
        return vcomp;
    }
    
    public static Float getValueByKey(WindPK windPK){
        for(Map.Entry vComponentEntry : VComponentOfWind.getVComponentMap().entrySet()){
            WindPK key = (WindPK)vComponentEntry.getKey();
            if(key.equals(windPK)){
                return (Float)vComponentEntry.getValue();
            }
        }
        return null;
    } 

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 89 * hash + Objects.hashCode(this.windPK);
        hash = 89 * hash + Objects.hashCode(this.vComponentOfWind);
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
        final VComponentOfWind other = (VComponentOfWind) obj;
        if (!Objects.equals(this.windPK, other.windPK)) {
            return false;
        }
        if (!Objects.equals(this.vComponentOfWind, other.vComponentOfWind)) {
            return false;
        }
        return true;
    }

    @Override
    public int compareTo(VComponentOfWind other) {
        return windPK.compareTo(other.windPK);
    }
    
    @Override
    public String toString() {
        return "windPK=" + windPK + ", "
                + "vComponentOfWind=" + vComponentOfWind;
    } 
    
}
