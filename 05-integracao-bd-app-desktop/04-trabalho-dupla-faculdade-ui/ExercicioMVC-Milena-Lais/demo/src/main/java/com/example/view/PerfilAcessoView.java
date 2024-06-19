package com.example.view;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.controller.PerfilAcessoController;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class PerfilAcessoView extends JFrame {
    private PerfilAcessoController controller;

    private JTextField campoNome = new JTextField();
    private JTextField campoDescricao = new JTextField();
    private JTextField campoPermissoes = new JTextField();
    private JTextField campoAddNovoUsuario = new JTextField();
    
    private JTextArea areaCursosCadastrados;
    private JButton botaoAddNovoUsuario;
    private JButton botaoCadastrar;
    private boolean cadastrouUsuario;

    public PerfilAcessoView(PerfilAcessoController controller) {
        this.controller = controller;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Faculdade - Perfil de Acesso");
        setLayout(new BorderLayout());

        JPanel jpanel = new JPanel();
        jpanel.setLayout(new GridLayout(8,2));
        add(BorderLayout.CENTER, jpanel);

        jpanel.add(new JLabel("Nome do perfil de acesso:"));
        jpanel.add(campoNome);
        
        jpanel.add(new JLabel("Descrição:"));
        jpanel.add(campoDescricao);

        jpanel.add(new JLabel("Permissões:"));
        jpanel.add(campoPermissoes);

        jpanel.add(new JLabel());
        jpanel.add(new JLabel());

        jpanel.add(new JLabel("Adicionar usuários:"));
        jpanel.add(new JLabel());
        jpanel.add(campoAddNovoUsuario);

        botaoAddNovoUsuario = new JButton("Adicionar");
        jpanel.add(botaoAddNovoUsuario);
        botaoAddNovoUsuario.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String addNovoUsuario = campoAddNovoUsuario.getText();
                if (addNovoUsuario.isEmpty()) {
                    JOptionPane.showMessageDialog(PerfilAcessoView.this, "Informe o nome do usuário no campo para adicioná-lo ao perfil!", "Erro", JOptionPane.ERROR_MESSAGE);
                } else {
                    areaCursosCadastrados.append(addNovoUsuario + "\n");
                    campoAddNovoUsuario.setText("");
                    JOptionPane.showMessageDialog(PerfilAcessoView.this, "Usuário adicionado ao perfil com sucesso!");
                    cadastrouUsuario = true;
                }
             }
        });

        jpanel.add(new JLabel());
        jpanel.add(new JLabel());

        jpanel.add(new JLabel("Usuários adicionados:"));

        areaCursosCadastrados = new JTextArea();

        JScrollPane scrollPane = new JScrollPane(areaCursosCadastrados);
        jpanel.add(scrollPane);
        
        JPanel jpanel2 = new JPanel();
        jpanel2.setLayout(new GridLayout(1,3));
        add(BorderLayout.SOUTH, jpanel2);

        botaoCadastrar = new JButton("Cadastrar perfil");
        jpanel2.add(botaoCadastrar);
        botaoCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarPerfilAcesso();
             }
        });

        jpanel2.add(new JLabel());
        jpanel2.add(botaoCadastrar);
        jpanel2.add(new JLabel());

    }

    private void cadastrarPerfilAcesso() {
        String nome = campoNome.getText();
        String descricao = campoDescricao.getText();
        String permissoes = campoPermissoes.getText();

        if (nome.isEmpty() || descricao.isEmpty() || permissoes.isEmpty() || !cadastrouUsuario) {
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos e adicione o usuário.", "Erro", JOptionPane.ERROR_MESSAGE);
        } else {
            //controller.criarPerfilAcesso();
            JOptionPane.showMessageDialog(null, "Perfil de acesso cadastrado com sucesso!");
            dispose();
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                PerfilAcessoController controller = new PerfilAcessoController();
                PerfilAcessoView view = new PerfilAcessoView(controller);
                view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                view.setSize(400, 300);
                view.setVisible(true);
            }
        });
    }
}
