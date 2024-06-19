package com.example.view;

import com.example.controller.ApostilaController;
import com.example.controller.PerfilAcessoController;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.controller.UsuarioController;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class UsuarioView extends JFrame {
    private UsuarioController controller;
    
    private JTextField campoNomePessoa = new JTextField();
    private JTextField campoEmailPessoa = new JTextField();
    private JTextField campoNomeUsuario = new JTextField();
    private JPasswordField campoSenha = new JPasswordField(20);

    private JComboBox<String> comboBoxTipoPessoa;
    private boolean cadastrouPerfil = false;
    private JButton botaoPerfilDeAcesso;
    private JButton botaoCadastrar;
    
    public UsuarioView(UsuarioController controller) {
        this.controller = controller;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Faculdade - Usuários");
        setLayout(new BorderLayout());

        JPanel jpanel = new JPanel();
        jpanel.setLayout(new GridLayout(6,2));
        add(BorderLayout.CENTER, jpanel);

        jpanel.add(new JLabel("Nome da pessoa:"));
        jpanel.add(campoNomePessoa);

        jpanel.add(new JLabel("Tipo da pessoa:"));

        // Para fazer JComboBox manualmente:
        String[] opcoesTipoPessoa = { "Selecione", "Instrutor", "Assistente", "Gerente"};
        comboBoxTipoPessoa = new JComboBox<>(opcoesTipoPessoa);
        jpanel.add(comboBoxTipoPessoa);

        jpanel.add(new JLabel("Nome de usuário:"));
        jpanel.add(campoNomeUsuario);

        jpanel.add(new JLabel("E-mail:"));
        jpanel.add(campoEmailPessoa);

        jpanel.add(new JLabel("Senha:"));
        jpanel.add(campoSenha);

        jpanel.add(new JLabel("Perfil de acesso:"));

        botaoPerfilDeAcesso = new JButton("Cadastrar um perfil");
        jpanel.add(botaoPerfilDeAcesso);
        botaoPerfilDeAcesso.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                PerfilAcessoController controller = new PerfilAcessoController();
                PerfilAcessoView janelaPerfilAcesso = new PerfilAcessoView(controller);
                janelaPerfilAcesso.setSize(400, 300);
                janelaPerfilAcesso.setVisible(true);
                cadastrouPerfil = true;
                botaoPerfilDeAcesso.setEnabled(false);
                botaoPerfilDeAcesso.setText("Cadastrado");
            }
        });
        
        JPanel jpanel2 = new JPanel();
        jpanel2.setLayout(new GridLayout(1,3));
        add(BorderLayout.SOUTH, jpanel2);

        botaoCadastrar = new JButton("Cadastrar");
        jpanel2.add(botaoCadastrar);
        botaoCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarUsuario();
            }
        });

        jpanel2.add(new JLabel());
        jpanel2.add(botaoCadastrar);
        jpanel2.add(new JLabel());

    }

    private void cadastrarUsuario() {
        boolean naoDeveCadastrar = false;
        String nomePessoa = campoNomePessoa.getText();
        String emailPessoa = campoEmailPessoa.getText();
        String nomeUsuario = campoNomeUsuario.getText();
        String senha = campoSenha.getText();

        if (nomePessoa.isEmpty() || emailPessoa.isEmpty() || nomeUsuario.isEmpty() || senha.isEmpty() || !cadastrouPerfil || comboBoxTipoPessoa.getSelectedItem().equals("Selecione")) {
            naoDeveCadastrar = true;
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos corretamente e cadastre perfil de usuário.", "Erro", JOptionPane.ERROR_MESSAGE);
        } else if (!naoDeveCadastrar) {
            //controller.criarUsuario();
            JOptionPane.showMessageDialog(this, "Usuário cadastrado com sucesso!");
            dispose();
        }
    }
        
    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                UsuarioController controller = new UsuarioController();
                UsuarioView view = new UsuarioView(controller);
                view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                view.setSize(400, 300);
                view.setVisible(true);
            }
        });
    }
}

