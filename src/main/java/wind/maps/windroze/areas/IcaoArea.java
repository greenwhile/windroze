package wind.maps.windroze.areas;

import org.locationtech.jts.geom.Coordinate;
import org.locationtech.jts.geom.Polygon;
import org.opengis.referencing.crs.ProjectedCRS;
import org.opengis.referencing.operation.Conversion;
import wind.maps.windroze.barbs.WindBarb;
import wind.maps.windroze.centroid.Centroids;
import wind.maps.windroze.csv.CsvWriter;
import wind.maps.windroze.grid.GridCoverage;
import wind.maps.windroze.info.LabelInfo;

import java.io.File;
import java.util.Map;


public interface IcaoArea {  
    public File getDataSourceDirRoot();

    public CsvWriter getCsvWriter();
    public void writeDataIntoCsvFile();
    public Conversion getConversion();
    public Map<String, ?> getProperties();
    public ProjectedCRS getProjCRS();
    public Polygon getPolygon();
    public Coordinate[] getArea(); 
    public WindBarb getWindBarbs(File csvFile);
    public LabelInfo getInfoLabel(File csvFile);
    public Centroids getCentroids();
    public String getInfoForFileName(File csvFile, String areaName);
    public GridCoverage getGridCoverage();    
}
