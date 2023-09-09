package wind.maps.windroze.info;

import java.awt.FontMetrics;
import java.awt.Graphics;
import java.util.logging.Logger;
import javax.swing.JPanel;


public abstract class LabelInfo extends JPanel {
    
    private static final Logger LOGGER;

    static {
        LOGGER = Logger.getLogger(LabelInfo.class.getName());
    }
    
    protected int x;
    protected int y;
    protected String title;
    protected String info; 
    
    public LabelInfo(int x, int y, String title, String info) {
        this.x = x;
        this.y = y;
        this.title = title;
        this.info = info; 
    }
    
    @Override
    public void paintComponent(Graphics g) {
    }
    
    protected void drawCenteredString(String s, int w, int h, Graphics g) {
        FontMetrics fm = g.getFontMetrics();
        int x_pos = x + (w - fm.stringWidth(s)) / 2;
        g.drawString(s, x_pos, h);
    }
    
}
