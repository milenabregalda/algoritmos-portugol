package com.mycompany.jpanelform;

import java.awt.Container;
import javax.swing.JFrame;

public class JPanelForm extends JFrame {
    
    public JPanelForm() {
        Container c = getContentPane();
        c.add(new Calculadora());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(430, 430);
        setVisible(true);
    }
    public static void main(String[] args) {
        new JPanelForm();
    }
}
