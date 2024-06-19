package com.example.view;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.controller.MenuController;
import com.example.controller.RepositorioController;
import com.example.controller.UsuarioController;
import com.example.controller.CursoController;
import com.example.controller.MaterialDidaticoController;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class MenuView extends JFrame {
    private MenuController controller;

    private JLabel tituloCadastroFaculdade;
    private JButton botaoCadastrarCurso;
    private JButton botaoMaterialDidatico;
    private JButton botaoUsuario;
    private JButton botaoRepositorio;

    public MenuView(MenuController controller) {
        this.controller = controller;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Faculdade");
        setLayout(new GridLayout(6,6));

        tituloCadastroFaculdade = new JLabel("   Faça o cadastro:");
        Font fonteMaior = tituloCadastroFaculdade.getFont().deriveFont(Font.BOLD, 16);
        tituloCadastroFaculdade.setFont(fonteMaior);
        add(tituloCadastroFaculdade);
        add(new JLabel());
        add(new JLabel());
        add(new JLabel());

        botaoCadastrarCurso = new JButton("Curso");
        add(botaoCadastrarCurso);
        botaoCadastrarCurso.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                CursoController controller = new CursoController();
                // Primeiro tem que criar objeto do tipo CursoController para passar no construtor abaixo
                CursoView janelaCurso = new CursoView(controller);
                janelaCurso.setSize(400, 400);
                janelaCurso.setVisible(true);
                botaoMaterialDidatico.setEnabled(true);
                botaoUsuario.setEnabled(true);
                botaoRepositorio.setEnabled(true);
            }
        });
        
        botaoMaterialDidatico = new JButton("Material didático");
        add(botaoMaterialDidatico);
        botaoMaterialDidatico.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                MaterialDidaticoController controller = new MaterialDidaticoController();
                MaterialDidaticoView janelaMaterialDidatico = new MaterialDidaticoView(controller);
                janelaMaterialDidatico.setSize(400, 250);;
                janelaMaterialDidatico.setVisible(true);
            }
        });
        
        botaoUsuario = new JButton("Usuário");
        add(botaoUsuario);
        botaoUsuario.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                UsuarioController controller = new UsuarioController();
                UsuarioView janelaUsuario = new UsuarioView(controller);
                //janelaUsuario.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); - Tirado para que só menu feche toda a aplicação
                janelaUsuario.setSize(400, 300);
                janelaUsuario.setVisible(true);
            }
        });

        botaoRepositorio = new JButton("Repositório");
        add(botaoRepositorio);
        botaoRepositorio.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                RepositorioView janelaRepositorio = new RepositorioView();
                janelaRepositorio.setSize(400, 200);
                janelaRepositorio.setVisible(true);
            }
        });

        botaoMaterialDidatico.setEnabled(false);
        botaoUsuario.setEnabled(false);
        botaoRepositorio.setEnabled(false);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                MenuController controller = new MenuController();
                MenuView view = new MenuView(controller);
                view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // PARA FECHAR A EXECUÇÃO QUANDO CLICAR NO "X"
                view.setSize(400, 300);
                view.setVisible(true);
            }
        });
    }
}
