package wind.maps.windroze.grid;

import org.geotools.styling.*;
import org.opengis.filter.FilterFactory;

import java.awt.*;
import java.awt.Font;
import java.util.logging.Logger;


public class GridCoverageForAsiaArea extends GridCoverage {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(GridCoverageForAsiaArea.class.getName());
    }

    @Override
    protected Style getStyle() {
        StyleBuilder gridStyleBuilder = new StyleBuilder();
        PolygonSymbolizer gridSymbolizer = gridStyleBuilder.createPolygonSymbolizer(Color.LIGHT_GRAY, Color.LIGHT_GRAY, 0);
        gridSymbolizer.getFill().setOpacity(gridStyleBuilder.literalExpression(0.0));
        Style gridStyle = gridStyleBuilder.createStyle(gridSymbolizer);
        
        FilterFactory gridFilterFactory = gridStyleBuilder.getFilterFactory();
        Font font = new Font("Arial", Font.BOLD, 24);
        
        TextSymbolizer textGridSymbolizer = gridStyleBuilder.createTextSymbolizer(Color.BLACK, gridStyleBuilder.createFont(font), "label");
        LabelPlacement labelPlacement = gridStyleBuilder.createLinePlacement(gridFilterFactory.literal(4));
        textGridSymbolizer.setLabelPlacement(labelPlacement);
        gridStyle.featureTypeStyles().get(0).rules().get(0).symbolizers().add(textGridSymbolizer); 
        return gridStyle;
    }
    
}
