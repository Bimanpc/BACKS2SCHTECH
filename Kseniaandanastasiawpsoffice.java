import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Kseniaandanastasiawpsoffice extends Frame {
    JButton button_1;
    JLabel WPSOFFICE4U;

    public Kseniaandanastasiawpsoffice() {
        KseniaandanastasiawpsofficeLayout customLayout = new KseniaandanastasiawpsofficeLayout();

        setFont(new Font("Helvetica", Font.PLAIN, 12));
        setLayout(customLayout);

        button_1 = new JButton("https://www.wps.com/");
        add(button_1);

        WPSOFFICE4U = new JLabel("https://www.wps.com/");
        add(WPSOFFICE4U);

        setSize(getPreferredSize());

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });
    }

    public static void main(String args[]) {
        Kseniaandanastasiawpsoffice window = new Kseniaandanastasiawpsoffice();

        window.setTitle("Kseniaandanastasiawpsoffice");
        window.pack();
        window.show();
    }
}

class KseniaandanastasiawpsofficeLayout implements LayoutManager {

    public KseniaandanastasiawpsofficeLayout() {
    }

    public void addLayoutComponent(String name, Component comp) {
    }

    public void removeLayoutComponent(Component comp) {
    }

    public Dimension preferredLayoutSize(Container parent) {
        Dimension dim = new Dimension(0, 0);

        Insets insets = parent.getInsets();
        dim.width = 320 + insets.left + insets.right;
        dim.height = 240 + insets.top + insets.bottom;

        return dim;
    }

    public Dimension minimumLayoutSize(Container parent) {
        Dimension dim = new Dimension(0, 0);
        return dim;
    }

    public void layoutContainer(Container parent) {
        Insets insets = parent.getInsets();

        Component c;
        c = parent.getComponent(0);
        if (c.isVisible()) {c.setBounds(insets.left+72,insets.top+152,112,32);}
        c = parent.getComponent(1);
        if (c.isVisible()) {c.setBounds(insets.left+88,insets.top+72,72,24);}
    }
}
