package com.mycompany.calculadoraswing;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

// Aula de 20/02/2024 - Exercício de calculadora em Swing

public class CalculadoraSwing extends JFrame implements ActionListener {

    JTextField num1, num2;
    JButton btSoma, btSub, btMul, btDiv, btLimpar;
    JLabel resultados;
    
    public CalculadoraSwing() {
        super("Calculadora"); // Nome da janela executada
        Container c = getContentPane();
        c.setLayout(new GridLayout(7,2));
        
        c.add(new JLabel("Primeiro número: "));
        num1 = new JTextField();
        c.add(num1);
        
        c.add(new JLabel("Segundo número: "));
        num2 = new JTextField();
        c.add(num2);
        
        btSoma = new JButton("+");
        c.add(btSoma);
        btSoma.addActionListener(this);
        
        btSub = new JButton("-");
        c.add(btSub);
        btSub.addActionListener(this);
        
        btMul = new JButton("*");
        c.add(btMul);
        btMul.addActionListener(this);
        
        btDiv = new JButton("/");
        c.add(btDiv);
        btDiv.addActionListener(this);
        
        c.add(new JLabel("Resultado: "));
        
        resultados = new JLabel();
        c.add(resultados);

        c.add(new JLabel(" "));
        // Para botão Limpar ficar no lado direito
        
        btLimpar = new JButton("Limpar");
        c.add(btLimpar);
        btLimpar.addActionListener(this);

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(250, 300);
        setVisible(true);
    }
    
    public static void main(String[] args) {
        new CalculadoraSwing();
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        double numero1, numero2;
        double calculo;
        
        numero1 = Double.parseDouble(num1.getText());
        numero2 = Double.parseDouble(num2.getText());
        
        if (e.getSource() == btSoma) {
            calculo = numero1 + numero2;
            resultados.setText(String.valueOf(calculo));
        }
        
        else if (e.getSource() == btSub) {
            calculo = numero1 - numero2;
            resultados.setText(String.valueOf(calculo));
        }
        
        else if (e.getSource() == btMul) {
            calculo = numero1 * numero2;
            resultados.setText(String.valueOf(calculo));
        }
        
        else if (e.getSource() == btDiv) {
            if (numero2 == 0.0) {
                String s = "ERRO! Divisão por zero!";
                JOptionPane.showMessageDialog(null, s);
            }
            else {
                calculo = numero1 / numero2;
                resultados.setText(String.valueOf(calculo));
            }
        }
        
        else if (e.getSource() == btLimpar) {
            num1.setText("");
            num2.setText("");
            resultados.setText("");
        }
    }
}