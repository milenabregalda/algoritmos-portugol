package com.mycompany.milenatrabalho2;

import java.awt.Container;
import javax.swing.JFrame;

// Milena Bregalda
// Trabalho de 04/03/2024 - Planejar e implementar própria interface
// com JPanel Form (Pesquisa de satisfação Senac Tech)

// Em caso de incompatibilidade:
// pom.xml > Properties > mudar source e target para JDK anterior

public class MilenaTrabalho2 extends JFrame {

    public MilenaTrabalho2() {
        super("Formulário de Pesquisa 2 - Milena Bregalda");
        Container c = getContentPane();
        c.add(new Interface());
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(420, 425);
        setVisible(true);
    }
    public static void main(String[] args) {
        new MilenaTrabalho2();
    }
}
