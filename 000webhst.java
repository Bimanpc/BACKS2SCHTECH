import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class 000webhst extends JFrame {
    JButton 000Webhost;

    public 000webhst() {
        000webhstLayout customLayout = new 000webhstLayout();

        getContentPane().setFont(new Font("Helvetica", Font.PLAIN, 12));
        getContentPane().setLayout(customLayout);

        000Webhost = new JButton("000Webhost.com");
        getContentPane().add(000Webhost);

        setSize(getPreferredSize());

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });
    }

    public static void main(String args[]) {
        000webhst window = new 000webhst();

        window.setTitle("000webhst");
        window.pack();
        window.show();
    }
}

class 000webhstLayout implements LayoutManager {

    public 000webhstLayout() {
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
        if (c.isVisible()) {c.setBounds(insets.left+64,insets.top+128,144,56);}
    }
}
