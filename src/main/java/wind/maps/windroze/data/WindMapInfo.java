package wind.maps.windroze.data;

import wind.maps.windroze.exception.IllegalLiteralForecastTimeArgumentException;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class WindMapInfo {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(WindMapInfo.class.getName());
    } 
    
    private final File file; // csv File
    private Map<Integer,String>flyghtMap;
    private Map<Integer,Integer>levelMap;  

    public WindMapInfo(File file) {
        this.file = file;
        this.flyghtMap = new HashMap<Integer,String>();
        this.levelMap = new HashMap<Integer,Integer>();
        this.flyghtMap = initFlyght();
        this.levelMap = initLevel();
    }
    
    private Map<Integer,String>initFlyght(){
        flyghtMap.put(100,"530");
        flyghtMap.put(125,"480");
        flyghtMap.put(150,"450");
        flyghtMap.put(175,"410");
        flyghtMap.put(200,"390");
        flyghtMap.put(225,"360");
        flyghtMap.put(250,"340");
        flyghtMap.put(275,"320");
        flyghtMap.put(300,"300");
        flyghtMap.put(350,"270");
        flyghtMap.put(400,"240");
        flyghtMap.put(450,"210");
        flyghtMap.put(500,"180");
        flyghtMap.put(600,"140");
        flyghtMap.put(700,"100");
        flyghtMap.put(750,"080");
        flyghtMap.put(850,"050");
        return flyghtMap;
    }
    
    private Map<Integer,Integer>initLevel(){
        levelMap.put(100,10);
        levelMap.put(125,12);
        levelMap.put(150,15);
        levelMap.put(175,17);
        levelMap.put(200,20);
        levelMap.put(225,22);
        levelMap.put(250,25);
        levelMap.put(275,27);
        levelMap.put(300,30);
        levelMap.put(350,35);
        levelMap.put(400,40);
        levelMap.put(450,45);
        levelMap.put(500,50);
        levelMap.put(600,60);
        levelMap.put(700,70);
        levelMap.put(750,75);        
        levelMap.put(850,85);
        return levelMap;
    }
    
    public String getObservationTime(){
        return file.getName().substring(17, 19);
    }
        
    public String getLiteralForecatstTime(){
        String literalForecastTime = null;
        Integer digitalForecatstTime = Integer.valueOf(getDigitalForecatstTime());
        switch(digitalForecatstTime){
            case (0):{
                literalForecastTime = "A";
                break;
            }
            case (3):{
                literalForecastTime = "B";
                break;
            }
            case (6):{
                literalForecastTime = "C";
                break;
            }
            case (9):{
                literalForecastTime = "D";
                break;
            }
            case (12):{
                literalForecastTime = "E";
                break;
            }
            case (15):{
                literalForecastTime = "F";
                break;
            }
            case (18):{
                literalForecastTime = "G";
                break;
            }
            case (21):{
                literalForecastTime = "H";
                break;
            }
            case (24):{
                literalForecastTime = "I";
                break;
            }
            default: {
                Logger.getLogger(WindMapInfo.class.getName()).log(Level.SEVERE, "The forecast time isn't present in the forecast scale", new IllegalLiteralForecastTimeArgumentException("The forecast time isn't present in the forecast scale"));
            }   
        }
        return literalForecastTime;
    }
    
    public String getDigitalForecatstTime(){
        return file.getName().substring(9, 11);
    }
    
    public String getLevel(){
        return file.getName().substring(47, 50);
    }
    
    public String getLevelInf(){
        for(Map.Entry<Integer, Integer> item : levelMap.entrySet()){
            Integer key = item.getKey();  
            if(Integer.valueOf(getLevel()).equals(key)){
                return String.valueOf(item.getValue());
            }
        }
        return null;
    }
    
    public String getFlyghtInf(){
        for(Map.Entry<Integer, String> item : flyghtMap.entrySet()){
            Integer key = item.getKey();  
            if(Integer.valueOf(getLevel()).equals(key)){
                return (String)item.getValue();
            }
        }
        return null;
    } 
        
    public String getValidOnDayInf(){
        return file.getName().substring(33, 35);
    }
    
    public String getValidOnMonthInf(){
        return file.getName().substring(31, 33);
    }
    
    public String getValidOnYearInf(){
        return file.getName().substring(27, 31);
    }
    
    public String getValidOnDateInfo(){
        Locale customLocale = new Locale("en", "US");
        Locale.setDefault(customLocale);
        Calendar cal = new GregorianCalendar(Integer.valueOf(getValidOnYearInf()),Integer.valueOf(getValidOnMonthInf()),Integer.valueOf(getValidOnDayInf()));        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd HH");
        Date date = getValidOnDate();
        return sdf.format(date);
    }
    
    // ------------------------------------------------------------------------------------- //
    
    public String getBasedOnTimeInf(){
        return file.getName().substring(17, 19);
    }  
    
    public boolean isValidForecatstTime(){
        return Integer.valueOf(getDigitalForecatstTime()) < 24;
    }
        
    public String getBasedOnDayInf(){
        return file.getName().substring(13, 15);
    }
    
    public String getBasedOnObservationHoursInf(){
        return file.getName().substring(15, 17);
    }
    
    public String getBasedOnMonthInf(){
        return file.getName().substring(31, 33);
    }
    
    public String test(){
        return file.getName().substring(53, 59);
    }
    
    public String getBasedOnYearInf(){
        return file.getName().substring(27, 31);
    }
    
    public String getBasedOnDateInfo(){
        Locale customLocale = new Locale("en", "US");
        Locale.setDefault(customLocale);
        Calendar cal = new GregorianCalendar(Integer.valueOf(getBasedOnYearInf()),Integer.valueOf(getBasedOnMonthInf())-1,Integer.valueOf(getBasedOnDayInf()));        
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd HH");
        return sdf.format(cal.getTime());
    }    
    
    // ------------------------------ ///// -------------------------------- //
    
    private boolean isLeapYear(int year) {
	return ((!(year % 4 == 0) && (year % 100 == 0)) || (!(year % 400 == 0)));
    }  
    
    private boolean isFirstDayOfMonth(){
	return Integer.valueOf(getBasedOnYearInf()) == 1;
    }
    
    public Date getValidOnDate(){
        Calendar calendar_valid_on = new GregorianCalendar(Integer.valueOf(getBasedOnYearInf()), Integer.valueOf(getBasedOnMonthInf())-1, Integer.valueOf(getBasedOnDayInf()), Integer.valueOf(getBasedOnObservationHoursInf()), 0);
        calendar_valid_on.add(Calendar.HOUR_OF_DAY, +Integer.valueOf(getDigitalForecatstTime()));
        return calendar_valid_on.getTime();        
    }

}