package wind.maps.windroze.entity;

import java.util.Objects;
import java.util.Set;
import java.util.TreeSet;
import java.util.logging.Logger;


public class WindPK implements Comparable<WindPK> {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(WindPK.class.getName());
    }
    
    private Double latitude;
    private Double longitude;
    private Double level;
    
    private static Set<WindPK>keys = new TreeSet<WindPK>();
    private static Set<Double>levels = new TreeSet<Double>();
    
    public WindPK() {
    }

    public WindPK(Double latitude, Double longitude, Double level) {
        this.latitude = latitude;
        this.longitude = longitude;
        this.level = level;
        levels.add(level);
        keys.add(this);
    }

    public Double getLatitude() {
        return latitude;
    }

    public void setLatitude(Double latitude) {
        this.latitude = latitude;
    }

    public Double getLongitude() {
        return longitude;
    }

    public void setLongitude(Double longitude) {
        this.longitude = longitude;
    }

    public Double getLevel() {
        return level;
    }

    public void setLevel(Double level) {
        this.level = level;
    }

    public static Set<WindPK> getKeys() {
        return keys;
    }

    public static void setKeys(Set<WindPK> keys) {
        WindPK.keys = keys;
    }

    public static Set<Double> getLevels() {
        return levels;
    }

    public static void setLevels(Set<Double> levels) {
        WindPK.levels = levels;
    }
    
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + Objects.hashCode(this.latitude);
        hash = 17 * hash + Objects.hashCode(this.longitude);
        hash = 17 * hash + Objects.hashCode(this.level);
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
        final WindPK other = (WindPK) obj;
        if (!Objects.equals(this.latitude, other.latitude)) {
            return false;
        }
        if (!Objects.equals(this.longitude, other.longitude)) {
            return false;
        }
        if (!Objects.equals(this.level, other.level)) {
            return false;
        }
        return true;
    }
    
    @Override
    public int compareTo(WindPK other) {
        
        int result = level.compareTo(other.level);        
        if(result!=0){
            return result;
        }
        
        result = latitude.compareTo(other.latitude);        
        if(result!=0){
            return result;
        }
        
        result = longitude.compareTo(other.longitude);        
        if(result!=0){
            return result;
        }
                
        return 0;        
    }
    
    @Override
    public String toString() {
        return "latitude=" + latitude + ", "
                + "longitude=" + longitude + ", "
                + "level=" + level;
    }
    
}
