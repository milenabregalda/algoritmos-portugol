package com.example.view;

import com.example.controller.CursoController;


// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Laís

import com.example.controller.RepositorioController;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class RepositorioView extends JFrame {
    private RepositorioController controller;
    private JTextField campoResponsavel = new JTextField();
    private JTextField campoLocalizacao = new JTextField();
    private JButton botaoArquivo = new JButton("Arquivo");

    public RepositorioView() {
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Repositório");
        setLayout(new BorderLayout());

        Container container = new JPanel();
        container.setLayout(new GridLayout(3, 2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Responsável:"));
        container.add(campoResponsavel);
        container.add(new JLabel("Localização:"));
        container.add(campoLocalizacao);
        container.add(new JLabel());
        container.add(botaoArquivo);

        botaoArquivo.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarRepositorio();
            }
        });

        setSize(400, 150);
        setLocationRelativeTo(null);
    }

    private void cadastrarRepositorio() {
        String responsavel = campoResponsavel.getText();
        String localizacao = campoLocalizacao.getText();

        if (responsavel.isEmpty() || localizacao.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
        } else {
            abrirJanelaArquivos();
        }
    }

    private void abrirJanelaArquivos() {
        JanelaArquivos janelaArquivos = new JanelaArquivos(this);
        janelaArquivos.setVisible(true);
    }

    public String getResponsavel() {
        return campoResponsavel.getText();
    }

    public String getLocalizacao() {
        return campoLocalizacao.getText();
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                RepositorioView repositorioView = new RepositorioView();
                repositorioView.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                repositorioView.setVisible(true);
            }
        });
    }
}

class JanelaArquivos extends JFrame {
    private JTextField campoNome = new JTextField();
    private JTextField campoDescricao = new JTextField();
    private JTextField campoLocalModelo = new JTextField();
    private JButton botaoSetup = new JButton("Setup");
    private RepositorioView repositorioView;

    public JanelaArquivos(RepositorioView repositorioView) {
        this.repositorioView = repositorioView;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Arquivos");
        setLayout(new BorderLayout());

        Container container = new JPanel();
        container.setLayout(new GridLayout(4, 2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Nome:"));
        container.add(campoNome);
        container.add(new JLabel("Descrição:"));
        container.add(campoDescricao);
        container.add(new JLabel("Local do Modelo:"));
        container.add(campoLocalModelo);
        container.add(new JLabel());
        container.add(botaoSetup);

        botaoSetup.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarJanelaArquivos();
            }
        });

        setSize(400, 200);
        setLocationRelativeTo(null);
    }

    private void cadastrarJanelaArquivos() {
        String nome = campoNome.getText();
        String descricao = campoDescricao.getText();
        String localModelo = campoLocalModelo.getText();
    
        if (nome.isEmpty() || descricao.isEmpty() || localModelo.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
        } else {
            abrirJanelaSetup();
        }
    }
    
    private void abrirJanelaSetup() {
        Setup setup = new Setup(repositorioView, this);
        setup.setVisible(true);
    }
}

class Setup extends JFrame {
    private JTextField campoNome = new JTextField();
    private JTextField campoQuantidadeArquivos = new JTextField();
    private JTextField campoDescricao = new JTextField();
    private JButton botaoSalvar = new JButton("Salvar");
    private RepositorioView repositorioView;
    private JanelaArquivos janelaArquivos;

    public Setup(RepositorioView repositorioView, JanelaArquivos janelaArquivos) {
        this.repositorioView = repositorioView;
        this.janelaArquivos = janelaArquivos;
        initUI();
    }

    private void initUI() {
        setTitle("Setup");
        setLayout(new BorderLayout());

        Container container = new JPanel();
        container.setLayout(new GridLayout(4, 2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Nome:"));
        container.add(campoNome);
        container.add(new JLabel("Quantidade de Arquivos:"));
        container.add(campoQuantidadeArquivos);
        container.add(new JLabel("Descrição:"));
        container.add(campoDescricao);
        container.add(new JLabel());
        container.add(botaoSalvar);

        botaoSalvar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarSetup();
            }
        });

        setSize(400, 200);
        setLocationRelativeTo(null);
    }

    private void cadastrarSetup() {
        String nome = campoNome.getText();
        String quantidadeArquivos = campoQuantidadeArquivos.getText();
        String descricao = campoDescricao.getText();
    
        if (nome.isEmpty() || quantidadeArquivos.isEmpty() || descricao.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
        } else {
            JOptionPane.showMessageDialog(null, "Informações cadastradas com sucesso!");
            salvarEFecharJanelas();
        }
    }
    
    private void salvarEFecharJanelas() {
        dispose();
        janelaArquivos.dispose();
        repositorioView.dispose();
    }
}
