package com.mycompany.calculadoraswing3;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

// Milena Bregalda
// Trabalho de 21 e 22/02/2024 - Interface + funcionalidades de calculadora

public class CalculadoraSwing3 extends JFrame implements ActionListener {
    
    JTextField resultado;
    JButton bt0, bt1, bt2, bt3, bt4, bt5, bt6, bt7, bt8, bt9, btSoma, btSub, btMul, btDiv, btRes, btLimpa;
    String valorCalculo1, valorCalculo2, operacao;
    
    public CalculadoraSwing3() {
        super("Calculadora");
        valorCalculo1 = operacao = valorCalculo2 = ""; // Inicialização de Strings para comparações
        Container containerPrincipal = getContentPane();
        containerPrincipal.setLayout(new BorderLayout());
        
        Container containerCima = new JPanel();
        containerPrincipal.add(BorderLayout.NORTH, containerCima);
        containerCima.setLayout(new GridLayout(2,4));
        
        containerCima.add(new JLabel("Resultado - Milena"));
        containerCima.add(new JLabel(""));
        resultado = new JTextField();
        containerCima.add(resultado);
        
        Container containerBaixo = new JPanel();
        containerPrincipal.add(BorderLayout.SOUTH, containerBaixo);
        containerBaixo.setLayout(new GridLayout(5,4));
        
        containerBaixo.add(bt7 = new JButton("7"));
        containerBaixo.add(bt8 = new JButton("8"));
        containerBaixo.add(bt9 = new JButton("9"));
        containerBaixo.add(btDiv = new JButton("/"));
        
        containerBaixo.add(bt4 = new JButton("4"));
        containerBaixo.add(bt5 = new JButton("5"));
        containerBaixo.add(bt6 = new JButton("6"));
        containerBaixo.add(btMul = new JButton("*"));
        
        containerBaixo.add(bt1 = new JButton("1"));
        containerBaixo.add(bt2 = new JButton("2"));
        containerBaixo.add(bt3 = new JButton("3"));
        containerBaixo.add(btSoma = new JButton("+"));
        
        containerBaixo.add(new JLabel("")); // em branco
        containerBaixo.add(bt0 = new JButton("0"));
        containerBaixo.add(new JLabel("")); // em branco
        containerBaixo.add(btSub = new JButton("-"));
        
        containerBaixo.add(btLimpa = new JButton("Limpa"));
        containerBaixo.add(new JLabel("")); // em branco
        containerBaixo.add(new JLabel("")); // em branco
        containerBaixo.add(btRes = new JButton("="));
        
        bt0.addActionListener(this);
        bt1.addActionListener(this);
        bt2.addActionListener(this);
        bt3.addActionListener(this);
        bt4.addActionListener(this);
        bt5.addActionListener(this);
        bt6.addActionListener(this);
        bt7.addActionListener(this);
        bt8.addActionListener(this);
        bt9.addActionListener(this);
        btSoma.addActionListener(this);
        btSub.addActionListener(this);
        btMul.addActionListener(this);
        btDiv.addActionListener(this);
        btRes.addActionListener(this);
        btLimpa.addActionListener(this);
        // Poderia ter feito usando código de repetição e vetor

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(300, 230);
        setVisible(true);
    }
        
    public static void main(String[] args) {
        new CalculadoraSwing3();
    }
    
    @Override
    public void actionPerformed(ActionEvent e) {
        String clicadoAgora = e.getActionCommand();
        // Pega o comando de ação do evento (geralmente o texto no botão que foi clicado)

        if(e.getSource() == btLimpa) {
            valorCalculo1 = operacao = valorCalculo2 = "";
            resultado.setText("");
            // Se o botão de Limpa foi clicado, limpa todas as variáveis e o que aparece ao usuário
        }
        
        // Se o primeiro caractere do botão clicado for um número (verificação a partir do valor
        // ASCII do caractere na String clicadoAgora), o código abaixo é executado:
        else if (clicadoAgora.charAt(0) >= '0' && clicadoAgora.charAt(0) <= '9') {
            // Adiciona o número ao primeiro ou segundo valor de cálculo como String e mostra para o usuário
            // Para definir qual deles: se o usuário ainda não clicou na operação, é o primeiro; se clicou, é o segundo
            if (!operacao.equals(""))
                valorCalculo2 += clicadoAgora;
            else
                valorCalculo1 += clicadoAgora;
            
            resultado.setText(valorCalculo1 + " " + operacao + " " + valorCalculo2);
        }
        
        // Se o botão clicado for um operador (+, -, *, /),
        // define a operação a ser realizada e também mostra para o usuário:
        else if (clicadoAgora.charAt(0) == '+') {
            operacao = clicadoAgora;
            resultado.setText(valorCalculo1 + " " + operacao);
        } else if (clicadoAgora.charAt(0) == '-') {
            operacao = clicadoAgora;
            resultado.setText(valorCalculo1 + " " + operacao);
        } else if (clicadoAgora.charAt(0) == '*') {
            operacao = clicadoAgora;
            resultado.setText(valorCalculo1 + " " + operacao);
        } else if (clicadoAgora.charAt(0) == '/') {
            operacao = clicadoAgora;
            resultado.setText(valorCalculo1 + "  " + operacao);
        }
        
        // Se o botão clicado for o botão de igual (=), os números em String são convertidos para Int,
        // é realizada a operação escolhida e ela é mostrada ao usuário de forma completa:
        else if (clicadoAgora.charAt(0) == '=') {
            try {
                int resultadoFinal;

                if (operacao.equals("+"))
                    resultadoFinal = Integer.parseInt(valorCalculo1) + Integer.parseInt(valorCalculo2);
                else if (operacao.equals("-"))
                    resultadoFinal = Integer.parseInt(valorCalculo1) - Integer.parseInt(valorCalculo2);
                else if (operacao.equals("*")) 
                    resultadoFinal = Integer.parseInt(valorCalculo1) * Integer.parseInt(valorCalculo2);
                else
                    resultadoFinal = Integer.parseInt(valorCalculo1) / Integer.parseInt(valorCalculo2);

                resultado.setText(valorCalculo1 + " " + operacao + " " + valorCalculo2 + " = " + resultadoFinal);
                valorCalculo1 = Integer.toString(resultadoFinal);
                // Para caso o usuário queira fazer um novo cálculo a partir do resultado final do antigo
                operacao = valorCalculo2 = ""; // Limpa as informações restantes do cálculo anterior

            // Exceção caso ocorra algum erro (divisão por zero ou algo inesperado):
            } catch (Exception ex) {
                resultado.setText("Erro na calculadora");
            }
        }
        // else operacao = clicadoAgora;
        // Poderia ter feito assim a definição da operação, esse é mais simples, mas o outro aparece melhor ao usuário
    }
}
