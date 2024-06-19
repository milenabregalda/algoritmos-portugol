package com.example.view;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.controller.CursoController;
import com.example.controller.SlideController;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SlideView extends JFrame {
    private SlideController controller;
    private CursoView cursoView;
    private JTextField campoNomeSlide = new JTextField();
    private JTextField campoCursoDoSlide = new JTextField();
    private JTextField campoNumPaginas = new JTextField();
    private JButton botaoCadastrar;

    public SlideView(SlideController controller, CursoView cursoView) { // Modificado para funcionalidade de mostrar cadastrados
        this.controller = controller;
        this.cursoView = cursoView;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Faculdade - Slides");
        setLayout(new BorderLayout());

        Container container = new JPanel();
        container.setLayout(new GridLayout(4,2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Nome:"));
        container.add(campoNomeSlide);
        container.add(new JLabel("Curso:"));
        container.add(campoCursoDoSlide);

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
                cadastrarSlide();
            }
        });
        
        container2.add(new JLabel());
        container2.add(botaoCadastrar);
        container2.add(new JLabel());
    }

    private void cadastrarSlide() {
        String nomeSlide = campoNomeSlide.getText();
        String curso = campoCursoDoSlide.getText();

        String textoNumPaginas = campoNumPaginas.getText();

        try {
            int numPaginas = Integer.parseInt(textoNumPaginas);
            //controller.criarSlide();
            cursoView.adicionarSlide(nomeSlide);
            JOptionPane.showMessageDialog(this, "Slide cadastrado com sucesso!");
            dispose();
        } catch (NumberFormatException e) {
            if (nomeSlide.isEmpty() || curso.isEmpty() || textoNumPaginas.isEmpty()) {
                JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
                return;
            } else {
                JOptionPane.showMessageDialog(null, "Número de páginas não válido.", "Erro", JOptionPane.ERROR_MESSAGE);
            }
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                CursoController cursoController = new CursoController();
                CursoView cursoView = new CursoView(cursoController);

                SlideController slideController = new SlideController();
                SlideView slideView = new SlideView(slideController, cursoView);

                slideView.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                slideView.setSize(400, 300);
                slideView.setVisible(true);
            }
        });
    }
}
