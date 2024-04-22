package com.mycompany.eventos;

// Aula de 20/02/2024 - Eventos, ações e ouvintes

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Eventos extends JFrame implements ActionListener {

    public Eventos() {      
        // Eventos - ações na execução do sistema (clicar no mouse, passar mouse sobre botão, etc.)
        // Ações - O que deve acontecer quando ocorre um evento específico
        // Ouvintes/Listener - Classe que ouve os eventos e executa ações associadas a eles
        
        super("Eventos");
        JButton botao = new JButton("Ok"); // O usuário clica no botão "Ok"
        botao.addActionListener(this);
        getContentPane().add(botao);
        
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(300, 300);
        setVisible(true);
    }
    
    public static void main(String[] args) {
        new Eventos();
    }
    
    @Override
    public void actionPerformed(ActionEvent e) { // A classe ouve o evento de clicar no botão
        JOptionPane.showMessageDialog(null, // E executa a ação de abrir uma janela com essa mensagem
                "Olá, isso é uma caixa de Mensagem",
                "CAIXA DE MENSAGEM",
                JOptionPane.INFORMATION_MESSAGE);
    }
}