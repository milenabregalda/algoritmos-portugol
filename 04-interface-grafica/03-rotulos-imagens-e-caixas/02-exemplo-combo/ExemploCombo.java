package com.mycompany.exemplocombo;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import javax.swing.ImageIcon;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
        
// Aula de 27/02/2024 - JComboBox

public class ExemploCombo extends JFrame implements ItemListener {

    JComboBox<String> combo;
    // Permite aos usuários escolher entre várias opções em um menu suspenso (como uma caixa de seleção).
    
    JLabel label;
    
    // Jeito que está funcionando:
    ImageIcon[] imagens = {
        new ImageIcon("C:\\Users\\usuario\\Documents\\NetBeansProjects\\ExemploCombo\\src\\main\\java\\com\\mycompany\\exemplocombo\\imagem1.jpg"),
        new ImageIcon("C:\\Users\\usuario\\Documents\\NetBeansProjects\\ExemploCombo\\src\\main\\java\\com\\mycompany\\exemplocombo\\imagem2.jpg"),
        new ImageIcon("C:\\Users\\usuario\\Documents\\NetBeansProjects\\ExemploCombo\\src\\main\\java\\com\\mycompany\\exemplocombo\\imagem3.jpg"),
        new ImageIcon("C:\\Users\\usuario\\Documents\\NetBeansProjects\\ExemploCombo\\src\\main\\java\\com\\mycompany\\exemplocombo\\imagem4.jpg")
    };
    
    // Jeito mais correto, mas com problemas no momento:
//    ImageIcon[] imagens = {
//        new ImageIcon(getClass().getResource("fotos/01.jpg")),
//        new ImageIcon(getClass().getResource("fotos/02.jpg")),
//        new ImageIcon(getClass().getResource("fotos/03.jpg")),
//        new ImageIcon(getClass().getResource("fotos/04.jpg"))
//    };

    public ExemploCombo() {
        super("Álbum de fotos");
        Container c = getContentPane();
        
        combo = new JComboBox<String>(); // Criação de JComboBox
        combo.setFont(new Font("serif", Font.PLAIN, 26)); // Formatação do texto das opções
        combo.addItem("Foto 1"); // Criação das opções
        combo.addItem("Foto 2");
        combo.addItem("Foto 3");
        combo.addItem("Foto 4");
        combo.addItemListener(this); // Se selecionar uma das opções, chama o método itemStateChanged
        
        label = new JLabel(imagens[0]);
        
        c.add(BorderLayout.NORTH, combo);
        c.add(BorderLayout.CENTER, label);
        
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(300, 350);
        setVisible(true);
    }
    
    public static void main(String[] args) {
        new ExemploCombo();
    }
    
    @Override
    public void itemStateChanged(ItemEvent e) {
    // O que acontece quando uma das opções está selecionada - aparece uma das 4 imagens
        if(e.getStateChange() == ItemEvent.SELECTED) {
            label.setIcon(imagens[combo.getSelectedIndex()]);
        }
    }
}
