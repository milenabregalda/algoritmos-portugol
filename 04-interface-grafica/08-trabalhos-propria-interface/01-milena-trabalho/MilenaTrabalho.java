package com.mycompany.milenatrabalho;

import java.awt.Container;
import java.awt.GridLayout;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import javax.swing.JTextArea;

// Milena Bregalda
// Trabalho de 29/02/2024 - Planejar e implementar própria interface
// (Pesquisa de satisfação Senac Tech)

public class MilenaTrabalho extends JFrame implements ActionListener {

    JTextArea campoObs;
    JButton btEnviar;
    JLabel labelTitulo, labelNome, labelCurso, labelNivel, labelMaterias, labelObs;
    JTextField campoNome;
    JRadioButton opcaoTDS, opcaoTI, opcaoAdm, opcaoMtSatisfeito, opcaoSatisfeito, opcaoInsatisfeito;
    JCheckBox opcaoLogica, opcaoBD, opcaoPOO, opcaoNenhuma;
    
    public MilenaTrabalho() {
        super("Formulário de Pesquisa - Milena Bregalda");
        
        Container containerPrincipal = getContentPane();
        containerPrincipal.setLayout(new BorderLayout());
        
        Container containerCima = new JPanel();
        containerCima.setLayout(new FlowLayout());
        containerPrincipal.add(BorderLayout.NORTH, containerCima);
        
        labelTitulo = new JLabel("Pesquisa de satisfação Senac Tech");
        Font fonteTitulo = new Font("arial", Font.BOLD, 22);
        labelTitulo.setFont(fonteTitulo);
        Color verde = new Color(0, 182, 109);
        labelTitulo.setForeground(verde);
        containerCima.add(labelTitulo);
        
        Container containerMeio = new JPanel();
        containerMeio.setLayout(new GridLayout(13,2));
        containerPrincipal.add(BorderLayout.CENTER, containerMeio);

        labelNome = new JLabel("Nome completo");
        containerMeio.add(labelNome);
        campoNome = new JTextField();
        containerMeio.add(campoNome);

        labelCurso = new JLabel("Curso");
        containerMeio.add(labelCurso);

        ButtonGroup gropoCursos = new ButtonGroup();
        // Poderia fazer com itemListener - lógica um verdadeiro os outros falsos, mas é melhor assim

        opcaoTDS = new JRadioButton("Técnico em Desenvolvimento de Sistemas");
        containerMeio.add(opcaoTDS);
        gropoCursos.add(opcaoTDS);
        
        containerMeio.add(new JLabel());
        opcaoTI = new JRadioButton("Técnico de Informática");
        containerMeio.add(opcaoTI);
        gropoCursos.add(opcaoTI);

        containerMeio.add(new JLabel());
        opcaoAdm = new JRadioButton("Técnico em Administração");
        containerMeio.add(opcaoAdm);
        gropoCursos.add(opcaoAdm);
        
        labelNivel = new JLabel("Nível de satisfação com o curso");
        containerMeio.add(labelNivel);
        containerMeio.add(new JLabel());
        
        ButtonGroup grupoSatisfacao = new ButtonGroup();

        opcaoMtSatisfeito = new JRadioButton("Muito satisfeito", false);
        containerMeio.add(opcaoMtSatisfeito);
        grupoSatisfacao.add(opcaoMtSatisfeito);
        
        opcaoSatisfeito = new JRadioButton("Satisfeito", false);
        containerMeio.add(opcaoSatisfeito);
        grupoSatisfacao.add(opcaoSatisfeito);
        
        opcaoInsatisfeito = new JRadioButton("Insatisfeito", false);
        containerMeio.add(opcaoInsatisfeito);
        grupoSatisfacao.add(opcaoInsatisfeito);
        containerMeio.add(new JLabel());
        
        labelMaterias = new JLabel("Em quais matérias teve dificuldade?");
        containerMeio.add(labelMaterias);
        containerMeio.add(new JLabel());
        
        opcaoLogica = new JCheckBox("Lógica de Programação");
        containerMeio.add(opcaoLogica);
        
        opcaoBD = new JCheckBox("Banco de Dados");
        containerMeio.add(opcaoBD);
        
        opcaoPOO = new JCheckBox("Prog. Orientada a Objetos");
        containerMeio.add(opcaoPOO);
                
        opcaoNenhuma = new JCheckBox("Nenhuma");
        containerMeio.add(opcaoNenhuma);
        opcaoNenhuma.addActionListener(this);
        
        Container containerBaixo = new JPanel();
        containerBaixo.setLayout(new BorderLayout());

        containerPrincipal.add(BorderLayout.SOUTH, containerBaixo);
        
        labelObs = new JLabel("Observações (opcional)");
        containerBaixo.add(BorderLayout.NORTH, labelObs);

        campoObs = new JTextArea(5,7);
        containerBaixo.add(BorderLayout.CENTER, campoObs);

        Container containerBtEnviar = new JPanel();
        containerBtEnviar.setLayout(new GridLayout(1,3));
        containerBaixo.add(BorderLayout.SOUTH, containerBtEnviar);
        containerBtEnviar.add(new JLabel());

        btEnviar = new JButton("Enviar");
        containerBtEnviar.add(btEnviar);
        containerBtEnviar.add(new JLabel());
        btEnviar.addActionListener(this);

        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(430, 430);
        setVisible(true);        
    }
    
    public static void main(String[] args) {
        new MilenaTrabalho();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == btEnviar) {
            String dados = "Dados enviados para Pesquisa de Satisfação Senac Tech:\n";
            dados += "\n-----------------------------------------------------------------------------------\n\n";

            dados += labelNome.getText() + ":\n" + campoNome.getText() + "\n\n";
            dados += "-----------------------------------------------------------------------------------\n\n";
            
            dados += labelCurso.getText() + ":\n";
            
            if (opcaoTDS.isSelected()) dados += opcaoTDS.getText();
            else if (opcaoTI.isSelected()) dados += opcaoTI.getText();
            else if (opcaoAdm.isSelected()) dados += opcaoAdm.getText();
            else dados += "Nenhuma opção selecionada";
            
            dados += "\n\n-----------------------------------------------------------------------------------\n\n";
            
            dados += labelNivel.getText() + ":\n";
            
            if (opcaoMtSatisfeito.isSelected()) dados += opcaoMtSatisfeito.getText();
            else if (opcaoSatisfeito.isSelected()) dados += opcaoSatisfeito.getText();
            else if (opcaoInsatisfeito.isSelected()) dados += opcaoInsatisfeito.getText();
            else dados += "Nenhuma opção selecionada";
            
            dados += "\n\n-----------------------------------------------------------------------------------\n\n";
            
            dados += "Matérias que teve dificuldade:";
            
            if (opcaoLogica.isSelected()) dados += "\n" + opcaoLogica.getText() + " ";
            if (opcaoBD.isSelected()) dados += "\n" + opcaoBD.getText() + " ";
            if (opcaoPOO.isSelected()) dados += "\n" + opcaoPOO.getText() + " ";
            if (opcaoNenhuma.isSelected()) dados += "\n" + opcaoNenhuma.getText() + " ";
            
            dados += "\n\n-----------------------------------------------------------------------------------\n\n";

            dados += labelObs.getText() + ":\n";
            dados += campoObs.getText() + "\n";
            dados += "\n-----------------------------------------------------------------------------------\n\n";

            JOptionPane.showMessageDialog(null,
                dados, "Formulário enviado com sucesso!",
                JOptionPane.INFORMATION_MESSAGE);
        }
        
        else if(e.getSource() == opcaoNenhuma) {
            if(opcaoNenhuma.isSelected()) {
                opcaoLogica.setEnabled(false);
                opcaoLogica.setSelected(false);

                opcaoBD.setEnabled(false);
                opcaoBD.setSelected(false);

                opcaoPOO.setEnabled(false);
                opcaoPOO.setSelected(false);
            } else if(!opcaoNenhuma.isSelected()) {
                opcaoLogica.setEnabled(true);
                opcaoBD.setEnabled(true);
                opcaoPOO.setEnabled(true);
            }
        }
    }
}