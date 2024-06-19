package com.example.view;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.controller.CursoController;
import com.example.controller.ApostilaController;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ApostilaView extends JFrame {
    private ApostilaController controller;
    private CursoView cursoView;
    private JTextField campoNomeApostila = new JTextField();
    private JTextField campoCursoDoApostila = new JTextField();
    private JTextField campoNumPaginas = new JTextField();
    private JButton botaoCadastrar;

    public ApostilaView(ApostilaController controller, CursoView cursoView) {
        this.controller = controller;
        this.cursoView = cursoView;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Faculdade - Apostilas");
        setLayout(new BorderLayout());

        Container container = new JPanel();
        container.setLayout(new GridLayout(4,2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Nome:"));
        container.add(campoNomeApostila);
        container.add(new JLabel("Curso:"));
        container.add(campoCursoDoApostila);

        container.add(new JLabel("Número de páginas:"));
        container.add(campoNumPaginas);
        container.add(new JLabel());

        Container container2 = new JPanel();
        add(BorderLayout.SOUTH, container2);
        container2.setLayout(new GridLayout(1,3));

        botaoCadastrar = new JButton("Cadastrar");
        botaoCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarApostila();
            }
        });
        
        container2.add(new JLabel());
        container2.add(botaoCadastrar);
        container2.add(new JLabel());
    }

    private void cadastrarApostila() {
        String nomeApostila = campoNomeApostila.getText();
        String curso = campoCursoDoApostila.getText();
        String textoNumPaginas = campoNumPaginas.getText();

        try {
            int numPaginas = Integer.parseInt(textoNumPaginas);
            //controller.criarApostila();
            // IMPLEMENTAR QUANDO DESENVOLVER O CONTROLLER

            cursoView.adicionarApostila(nomeApostila); // Adiciona o nome da apostila na CursoView
            JOptionPane.showMessageDialog(this, "Apostila cadastrada com sucesso!");
            dispose();
        } catch (NumberFormatException e) {
            if (nomeApostila.isEmpty() || curso.isEmpty() || textoNumPaginas.isEmpty()) {
                JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
            } else {
                JOptionPane.showMessageDialog(null, "Número de páginas não válido.", "Erro", JOptionPane.ERROR_MESSAGE);
            }
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                ApostilaController controller = new ApostilaController();
                CursoController cursoController = new CursoController();
                CursoView cursoView = new CursoView(cursoController);
                ApostilaView view = new ApostilaView(controller, cursoView);
                view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                view.setSize(400, 300);
                view.setVisible(true);
            }
        });
    }
}