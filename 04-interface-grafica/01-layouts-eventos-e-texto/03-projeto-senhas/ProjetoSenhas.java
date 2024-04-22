package com.mycompany.projetosenhas;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

// Aula de 20/02/2024 - Rótulos, caixas de texto e caixas de senha

public class ProjetoSenhas extends JFrame implements ActionListener {
    
    JButton btOk, btCancela;
    JTextField login;
    JPasswordField senha;
    
    public ProjetoSenhas() {
        super("Formulário de Senhas");
        Container c = getContentPane();
        c.setLayout(new GridLayout(3,2));
        
        c.add(new JLabel("Login")); // Texto que é mostrado ao usuário
        login = new JTextField(); // Texto que pode ser alterado pelo usuário
        c.add(login);
        
        c.add(new JLabel("Senha"));
        senha = new JPasswordField();
        // Texto que pode ser alterado pelo usuário, mas aparecem asteriscos (*) quando é digitado
        c.add(senha);
        
        btOk = new JButton("Ok");
        c.add(btOk);
        btOk.addActionListener(this);
        
        btCancela = new JButton("Cancela");
        c.add(btCancela);
        btCancela.addActionListener(this);
        
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(300, 300);
        setVisible(true);
    }

    public static void main(String[] args) {
        new ProjetoSenhas();
    }
    
    @Override
    public void actionPerformed(ActionEvent e) { // A classe ouve o evento de clicar no botão
        String s = "";
        
        if(e.getSource() == btOk) {
            s = "Login: " + login.getText()
                    + "\nSenha: " + new String(senha.getPassword());
            JOptionPane.showMessageDialog(null, s);
        }
        
        else if (e.getSource() == btCancela) {
            login.setText("");
            senha.setText("");
        }
    }
}
