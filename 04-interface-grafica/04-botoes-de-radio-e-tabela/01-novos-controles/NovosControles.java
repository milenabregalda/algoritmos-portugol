package com.mycompany.novoscontroles;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextArea;

// Aula de 29/02/2024 - Botões de rádio

public class NovosControles extends JFrame implements ItemListener, ActionListener {
    
    JRadioButton btJava, btCSharp;
    // Botão que pode ou não estar marcado (boolean) e é dependente de outros botões
        
    JTextArea tArea;
    // Caixa onde coloca-se uma grande quantidade de texto

    JLabel myLabel;
    JButton btEnviar;
    
    public NovosControles() {
        super("Outros controles");
//        setLayout(new FlowLayout()); // Configurava diretamente o container atual (JFrame)

        // Atualizado para usar mais containers/painéis e organizar componentes neles:
        
        Container c = getContentPane(); // Container principal
        Container c2 = new JPanel(); // Container da pergunta de linguagens de programação e opções
        c2.setLayout(new FlowLayout()); // Container da caixa de texto e do botão "Enviar"
        
        myLabel = new JLabel("Qual é a melhor linguagem de programação?");
        // O texto da opção é um parâmetro na criação do JRadioButton
        btJava = new JRadioButton("Java", false);
        btCSharp = new JRadioButton("C#", false);
        
//        add(myLabel); // Adicionava componentes diretamente no container atual (JFrame)
//        add(btJava);
//        add(btCSharp);
        c2.add(myLabel);
        c2.add(btJava);
        c2.add(btCSharp);
        
        // Botões de rádio (JRadioButton) usam ItemListener
        // Para quando clica em um deles (as opções de linguagens de programação)
        // e muda seu estado (marcado/desmarcado):
        btJava.addItemListener(this);
        btCSharp.addItemListener(this);

        Container c3 = new JPanel();
        c3.setLayout(new FlowLayout());
        tArea = new JTextArea(10, 20);
        // Número de linhas e colunas de JTextArea para definir o seu tamanho
        c3.add(tArea);
        btEnviar = new JButton("Enviar");
        btEnviar.addActionListener(this); // Botão usa ActionListener
        c3.add(btEnviar);
        
        c.add(BorderLayout.NORTH, c2);
        c.add(BorderLayout.CENTER, c3);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500, 300);
        setVisible(true);
    }

    public static void main(String[] args) {
        new NovosControles();
    }
    
    @Override
    // ItemListener - usar para ações que dependem da mudança de estado de componentes (é mais específico):
    public void itemStateChanged(ItemEvent e) {
        if(btJava.isSelected()) {
            JOptionPane.showMessageDialog(null, "Parabéns, você é o cara!");
        } else if(btCSharp.isSelected()) {
            JOptionPane.showMessageDialog(null, "Sabe de nada, inocente!");
        }
    }

    @Override
    // ActionListener - usar para ações que dependem de cliques em componentes ou ações lógicas mais complexas (é mais geral):
    public void actionPerformed(ActionEvent e1) {
        if(e1.getSource() == btEnviar) {
            JOptionPane.showMessageDialog(null, tArea.getText(),
                "Conteúdo da Área de Texto", JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
