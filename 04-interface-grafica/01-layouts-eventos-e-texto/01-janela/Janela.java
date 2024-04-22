package com.mycompany.janela;

import javax.swing.JFrame;
import javax.swing.JButton;
import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.GridLayout;
import javax.swing.JPanel;

// Aula de 19/02/2024 - Introdução à Java Swing
// + Aula de 20/02/2024 - Layouts

public class Janela extends JFrame {
   // Classe principal do projeto e do objeto Janela extendendo a classe JFrame
    
    public Janela() { // Construtor do objeto Janela
        super("Layouts");
        Container c = getContentPane();
        
        // - Misturando Layouts
        
        c.setLayout(new BorderLayout());
        
        Container c2 = new JPanel();
        c2.setLayout(new GridLayout(4,1));
        
        c2.add(new JButton("Ok"));
        c2.add(new JButton("Cancel"));
        c2.add(new JButton("Setup"));
        c2.add(new JButton("Help"));
        // Cria um novo container de GridLayout com os 4 botões
        
        c.add(BorderLayout.CENTER, new JButton("Centro"));
        c.add(BorderLayout.EAST, c2);
        // Depois adiciona esse novo container no container principal como se os 4 botões
        // fossem agrupados em um botão só, e alinha como BorderLayout com um botão escrito Centro
        
        // - GridLayout: Dispõe os controles em linhas e colunas
//        c.setLayout(new GridLayout(2, 3)); // Define parâmetros de linhas e colunas
//        
//        c.add(new JButton("Botão 1"));
//        c.add(new JButton("Botão 2"));
//        c.add(new JButton("Botão 3"));
//        c.add(new JButton("Botão 4"));
//        c.add(new JButton("Botão 5"));
//        c.add(new JButton("Botão 6"));
        
        // - FlowLayout: 
        // Alinha botões no centro superior da janela na ordem em que são adicionados no código
//        c.setLayout(new FlowLayout());
//        
//        c.add(new JButton("Botão 1"));
//        c.add(new JButton("Botão 2"));
//        c.add(new JButton("Botão 3"));
//        c.add(new JButton("Botão 4"));
//        c.add(new JButton("Botão 5"));

        // - BorderLayout: Alinha todos os botões em tamanhos diferentes ocupando toda a janela
//        // Para ter vários botões, um em cada parte da janela:
//        JButton botao = new JButton("Botão 1");
//        c.add(BorderLayout.NORTH, botao);
//        // Forma resumida de ter vários botões, um em cada parte da janela:
//        c.add(BorderLayout.WEST, new JButton("Botão 2")); // Forma resumida de fazer a mesma coisa
//        c.add(BorderLayout.CENTER, new JButton("Botão 3"));
//        c.add(BorderLayout.EAST, new JButton("Botão 4"));
//        c.add(BorderLayout.SOUTH, new JButton("Botão 5"));
        
//      - Código inicial:
//      //JFrame minhaJanela = new JFrame(); // Criava objeto do tipo JFrame (com extends, não precisa disso)
//      JButton botao = new JButton("Clique");
//      JButton botao2 = new JButton("Botão 2");
//
//      // Cria objeto de tipo botão onde está escrito Clique
//      getContentPane().add(botao);
//      getContentPane().add(botao2);
//
//      // Adiciona o componente (botao) para o contêiner do JFrame, para que o botão apareça na janela

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // Faz o botão de fechar funcionar
        setSize(500, 500); // Configura o tamanho da janela (largura e altura)
        setVisible(true); // Faz a janela aparecer para o usuário (senão, fica escondida)
    }

    public static void main(String[] args) { // Método principal do projeto
        new Janela();
    }
}