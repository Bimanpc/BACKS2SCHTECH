import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class slackwork extends JFrame {
    JButton LetsWork;

    public slackwork() {
        slackworkLayout customLayout = new slackworkLayout();

        getContentPane().setFont(new Font("Helvetica", Font.PLAIN, 12));
        getContentPane().setLayout(customLayout);

        LetsWork = new JButton("slack.com");
        getContentPane().add(LetsWork);

        setSize(getPreferredSize());

        addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });
    }

    public static void main(String args[]) {
        slackwork window = new slackwork();

        window.setTitle("slackwork");
        window.pack();
        window.show();
    }
}

class slackworkLayout implements LayoutManager {

    public slackworkLayout() {
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
        if (c.isVisible()) {c.setBounds(insets.left+16,insets.top+112,280,88);}
    }
}
