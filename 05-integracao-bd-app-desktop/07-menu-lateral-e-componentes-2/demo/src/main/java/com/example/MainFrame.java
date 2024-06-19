package com.example;

import com.example.components.*;
import com.example.view.CursoView;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;

// Aula de 01/06/2024 - Material do professor, que é uma atualização do projeto onde aprendemos sobre menu lateral e componentes em 18/04/2024.
// Não está totalmente funcional, mas serve como exemplo de como algumas funcionalidades podem ser implementadas.

public class MainFrame extends JFrame {
    public MainFrame() {
        super("Material - Exemplo de MVC");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(400, 300);
        setLocationRelativeTo(null);
        setLayout(new FlowLayout(FlowLayout.CENTER, 10, 20));

        RoundedButton openButton = new RoundedButton("Cadastro Curso");
        openButton.addActionListener(this::onOpenNewWindow);
        add(openButton);
    }

    private void onOpenNewWindow(ActionEvent e) {
        CursoView cursoView = new CursoView(null);
        cursoView.setVisible(true);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            MainFrame mainFrame = new MainFrame();
            mainFrame.setVisible(true);
        });
    }
}
