package com.example.view;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Laís

import com.example.controller.MaterialDidaticoController;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MaterialDidaticoView extends JFrame {
    private MaterialDidaticoController controller;
    private JTextField campoDataEntrega = new JTextField();
    private JTextField campoDataRevisao = new JTextField();
    private JCheckBox checkBoxCompleto = new JCheckBox();
    private JTextField campoCurso = new JTextField();
    private JButton botaoCadastrar;

    public MaterialDidaticoView(MaterialDidaticoController controller) {
        this.controller = controller;
        initUI();
    }

    private void initUI() {
        setTitle("Cadastro de Material Didático");
        setLayout(new BorderLayout());

        Container container = new JPanel();
        container.setLayout(new GridLayout(5, 2));
        add(BorderLayout.CENTER, container);

        container.add(new JLabel("Data de Entrega (dd/MM/yyyy):"));
        container.add(campoDataEntrega);
        container.add(new JLabel("Data de Revisão (dd/MM/yyyy):"));
        container.add(campoDataRevisao);
        container.add(new JLabel("Completo:"));
        container.add(checkBoxCompleto);
        container.add(new JLabel("Curso:"));
        container.add(campoCurso);
        container.add(new JLabel());

        Container container2 = new JPanel();
        add(BorderLayout.SOUTH, container2);
        container2.setLayout(new GridLayout(1, 3));

        botaoCadastrar = new JButton("Cadastrar");
        botaoCadastrar.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                cadastrarMaterialDidatico();
            }
        });

        container2.add(new JLabel());
        container2.add(botaoCadastrar);
        container2.add(new JLabel());

        setSize(400, 250);
    }

    private void cadastrarMaterialDidatico() {
        String textoDataEntrega = campoDataEntrega.getText();
        String textoDataRevisao = campoDataRevisao.getText();
        boolean completo = checkBoxCompleto.isSelected();
        String curso = campoCurso.getText();

        
        if (textoDataEntrega.isEmpty() || textoDataRevisao.isEmpty() || curso.isEmpty()) {
            JOptionPane.showMessageDialog(this, "Por favor, preencha todos os campos.", "Erro", JOptionPane.ERROR_MESSAGE);
            return;
        }

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        sdf.setLenient(false);

        try {
            Date dataEntrega = sdf.parse(textoDataEntrega);
            Date dataRevisao = sdf.parse(textoDataRevisao);

           
            if (dataRevisao.before(dataEntrega)) {
                JOptionPane.showMessageDialog(this, "A data de revisão deve ser posterior à data de entrega.", "Erro", JOptionPane.ERROR_MESSAGE);
                return;
            }

            
            if (!curso.matches("[a-zA-Z\\s]+")) {
                JOptionPane.showMessageDialog(this, "O nome do curso deve conter apenas letras e espaços.", "Erro", JOptionPane.ERROR_MESSAGE);
                return;
            }

            JOptionPane.showMessageDialog(this, "Material didático cadastrado com sucesso!");
            dispose();
        } catch (ParseException e) {
            JOptionPane.showMessageDialog(this, "Formato de data inválido. Utilize o formato dd/MM/yyyy.", "Erro", JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                MaterialDidaticoController controller = new MaterialDidaticoController();
                MaterialDidaticoView view = new MaterialDidaticoView(controller);
                view.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                view.setVisible(true);
            }
        });
    }
}
