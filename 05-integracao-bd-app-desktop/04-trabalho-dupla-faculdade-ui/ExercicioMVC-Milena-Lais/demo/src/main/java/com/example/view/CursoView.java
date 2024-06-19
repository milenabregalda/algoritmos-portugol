package com.example.view;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.controller.CursoController;
import com.example.controller.SlideController;
import com.example.controller.ApostilaController;
import com.example.model.Pessoa;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class CursoView extends JFrame {
    private CursoController controller;

    private JTextField campoNomeCurso = new JTextField(); // Precisa inicializar para não dar NullPointerException
    private JTextField campoResponsavel = new JTextField();
    private JButton botaoMaisSlides;
    private JButton botaoMaisApostilas;
    private JTextArea areaSlidesCadastrados;
    private JTextArea areaApostilasCadastradas;
    private JButton botaoCadastrar;
    boolean[] clicouNosBotoes = new boolean[2];

    public CursoView(CursoController controller) {
        this.controller = controller;
        initUI();
    }

    private void initUI() {
        setLayout(new BorderLayout());
        setTitle("Cadastro de Faculdade - Curso");

        Container container = new JPanel();
        container.setLayout(new GridLayout(5,2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Nome do curso:"));
        container.add(campoNomeCurso);
        container.add(new JLabel("Responsável:"));
        container.add(campoResponsavel);

        container.add(new JLabel("Slides:"));
        container.add(new JLabel("Apostilas:"));

        botaoMaisSlides = new JButton("+");
        container.add(botaoMaisSlides);
        botaoMaisSlides.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                SlideController slideController = new SlideController();
                SlideView slideView = new SlideView(slideController, CursoView.this); // Para colocar na mesma CursoView, e não criar nova
                slideView.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                slideView.setSize(400, 300);
                slideView.setVisible(true);
                clicouNosBotoes[0] = true;
            }
        });

        botaoMaisApostilas = new JButton("+");
        container.add(botaoMaisApostilas);
        botaoMaisApostilas.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ApostilaController apostilaController = new ApostilaController();
                ApostilaView apostilaView = new ApostilaView(apostilaController, CursoView.this); // Para colocar na mesma CursoView, e não criar nova
                apostilaView.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                apostilaView.setSize(400, 300);
                apostilaView.setVisible(true);
                clicouNosBotoes[1] = true;
            }
        });

        areaSlidesCadastrados = new JTextArea();
        areaApostilasCadastradas = new JTextArea();
        
        JScrollPane scrollPaneSlides = new JScrollPane(areaSlidesCadastrados);
        JScrollPane scrollPaneApostilas = new JScrollPane(areaApostilasCadastradas);

        container.add(scrollPaneSlides);
        container.add(scrollPaneApostilas);

        botaoCadastrar = new JButton("Cadastrar");
        botaoCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarCurso();
            }
        });
        Container container2 = new JPanel();
        add(BorderLayout.SOUTH, container2);
        container2.setLayout(new GridLayout(1,3));

        container2.add(new JLabel());
        container2.add(botaoCadastrar);
        container2.add(new JLabel());
    }

    public void adicionarSlide(String nomeSlide) {
        areaSlidesCadastrados.append(nomeSlide + "\n");
    }

    public void adicionarApostila(String nomeApostila) {
        areaApostilasCadastradas.append(nomeApostila + "\n");
    }
 
    private void cadastrarCurso() {
        String nomeCurso = campoNomeCurso.getText();
        String responsavel = campoResponsavel.getText();

        controller.criarCurso(nomeCurso, new Pessoa(responsavel), null, null); // Funcionalidade implementar - Mexer em null

        if (campoNomeCurso.getText().isEmpty() || campoResponsavel.getText().isEmpty() || !clicouNosBotoes[0] || !clicouNosBotoes[1]) {
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos e cadastre slides e apostilas.", "Erro", JOptionPane.ERROR_MESSAGE);
            return;
        } else {
            JOptionPane.showMessageDialog(this, "Curso cadastrado com sucesso!");
            dispose();
        }
    }


    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                CursoController controller = new CursoController();
                CursoView view = new CursoView(controller);
                view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                view.setSize(400, 400);
                view.setVisible(true);
            }
        });
    }
}
