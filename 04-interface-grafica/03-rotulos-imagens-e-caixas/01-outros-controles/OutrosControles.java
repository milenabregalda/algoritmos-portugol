package com.mycompany.outroscontroles;

import java.awt.Container;
import java.awt.BorderLayout;
import java.awt.GridLayout;
import java.awt.FlowLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import javax.swing.ImageIcon;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;

// Aula de 26/02/2024 - Rótulos e propriedades
// + Aula de 27/02/2024

public class OutrosControles extends JFrame implements ItemListener {
    
    JCheckBox bold, italic;
    JLabel lbSenac, lbNegrito, lbItalico;
    
    public OutrosControles() {
        super("Outros Controles");
        Container c = getContentPane();
        //c.setLayout(new FlowLayout());
        
        // - Personalização de texto em JLabel
        lbSenac = new JLabel("Senac TECH");
        lbSenac.setToolTipText("Técnico em Desenvolvimento de Sistemas"); // Texto que é mostrado quando temos o cursor do mouse sobre o label
        Font fonte = new Font("serif", Font.PLAIN, 24); // Fonte, estilo (simples, negrito, itálico, etc.), tamanho do texto
        //Font fonte = new Font("serif", Font.BOLD | Font.ITALIC, 24);
        lbSenac.setFont(fonte);
        lbSenac.setForeground(Color.BLUE);
        
        // - Colocar imagem (ImageIcon em JLabel)
        // Deu problema no NetBeans da máquina do Senac
        
        // Para dar certo por enquanto (coloca imagem tds.jpg dentro do mesmo local onde está o arquivo OutrosControles.java)
//        String caminho = "C:\\Users\\usuario\\Documents\\NetBeansProjects\\OutrosControles\\src\\main\\java\\com\\mycompany\\outroscontroles\\tds.jpg";
//        ImageIcon minhaImagem = new ImageIcon(caminho);
        
        // Jeito correto de fazer:
        // ImageIcon minhaImagem = new ImageIcon(getClass().getResource("/com/mycompany/outroscontroles/fotos/tds.jpg"));
//        JLabel lbImage = new JLabel (minhaImagem);
//        c.add(lbSenac);
//        c.add(BorderLayout.CENTER, lbImage);

        // - JCheckBox: Caixa que pode ou não estar marcada (boolean) 
        Container c2 = new JPanel();
        c2.setLayout(new GridLayout(1,4));
        bold = new JCheckBox();
        bold.addItemListener(this); // Quando clica na caixa, método itemStateChanged é acionado (semelhante ao ActionListener)
        c2.add(bold);
        lbNegrito = new JLabel("Negrito");
        c2.add(lbNegrito);
        italic = new JCheckBox();
        italic.addItemListener(this);
        c2.add(italic);
        c2.add(new JLabel("Itálico"));
        c.add(BorderLayout.CENTER, c2);
        
        c.add(BorderLayout.NORTH, lbSenac);        
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500,500);
        setVisible(true);
    }
    
    public static void main(String[] args) {
        new OutrosControles();
    }
    
    @Override
    public void itemStateChanged(ItemEvent e) {
    // Quando clica na caixa, muda a personalização de lbSenac (escrito Senac TECH)
        if(bold.isSelected() && italic.isSelected()) {
            lbSenac.setFont(new Font("serif", Font.BOLD | Font.ITALIC, 24));
        } else if (bold.isSelected()) {
            lbSenac.setFont(new Font("serif", Font.BOLD, 24));
        } else if (italic.isSelected()) {
            lbSenac.setFont(new Font("serif", Font.ITALIC, 24));
        } else {
            lbSenac.setFont(new Font("serif", Font.PLAIN, 24));
        }
    }
}