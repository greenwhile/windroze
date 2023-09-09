package wind.maps.windroze.info;

import java.awt.*;
import java.util.logging.Logger;


public class LabelInfoAtlanticArea extends LabelInfo {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(LabelInfoAtlanticArea.class.getName());
    }

    private final int width;
    private final int height;
    private final int title_alignement;
    private final int x_main;
    private final int y_main;
    private final int width_main;
    private final int height_main;
    private int info_alignement; 
    
    public LabelInfoAtlanticArea(int x, int y, String title, String info) {
        super(x, y, title, info);
        this.width = 534;
        this.height = 56;        
        this.title_alignement = y + 12;        
        this.x_main = x;
        this.y_main = y+height;
        this.width_main = width;
        this.height_main = 400;
        this.info_alignement = y_main + 12;
    }
    
    @Override
    public void paintComponent(Graphics g) {
        super.paintComponent(g); 
        
        Font font = new Font("Arial", Font.PLAIN, 29);
        g.setFont(font);
        
        g.setColor(Color.BLACK);
        g.drawRect((int)g.getClipBounds().getX(), (int)g.getClipBounds().getY(), (int)g.getClipBounds().getWidth(), (int)g.getClipBounds().getHeight());
        
        FontMetrics fm = g.getFontMetrics();
        
        g.setColor(Color.BLACK);
        g.drawRect(x, y, width, height);
        g.setColor(Color.WHITE);
        g.fillRect(x+1, y+1, width-1, height-1);
        g.setColor(Color.BLACK);
        drawCenteredString(title, width, fm.getAscent()+title_alignement, g);
        
        g.setColor(Color.BLACK);
        g.drawRect(x_main, y_main, width_main, height_main);
        g.setColor(Color.WHITE);
        g.fillRect(x_main+1, y_main+1, width_main-1, height_main-1);
        g.setColor(Color.BLACK);        
        
        for(String s : info.split("\n")){   
            drawCenteredString(s, width_main, fm.getAscent()+info_alignement, g);
            info_alignement+=31;
        }
    }    
}