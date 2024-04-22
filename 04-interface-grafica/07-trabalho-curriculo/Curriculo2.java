package com.mycompany.curriculo2;

// Milena Bregalda
// Trabalho de 29/02/2024 até 08/03/2024 - Currículo (JFrame Form + Tabbed Pane)

import javax.swing.JFrame;

public class Curriculo2 extends JFrame {

    public Curriculo2() {
        Painel2 p = new Painel2();
        p.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        p.setSize(540, 540);
        p.setVisible(true);
    }
    
    public static void main(String[] args) {
        new Curriculo2();
    }
}
