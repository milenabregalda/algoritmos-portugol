package com.mycompany.projetotabela;

import java.awt.BorderLayout;
import java.awt.Container;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTable;

// Aula de 29/02/2024 - Tabelas

public class ProjetoTabela extends JFrame {

    public ProjetoTabela() {
        super("Minha tabela");
        Container c = getContentPane();
        
        // Criação de matriz do tipo String para colocar os dados das pessoas:
        String[][] dados = {
            { "João Silva", "999.777.333-22", "jsilva@email.com" },
            { "Maria Lopes", "888.555.333-22", "nlopes@email.com" },
            { "Carlos Costa", "777.555.443-22", "ccosta@gmail.com" },
        };
        
        // Criação de vetor do tipo String para os nomes das colunas (os tipos de informações de dados):
        String[] nomesColunas = { "Nome", "CPF", "E-mail" };
        
        JPanel tablePanel = new JPanel(new BorderLayout()); // Criação de painel para organizar os componentes
        JTable table = new JTable(dados, nomesColunas); // Criação da tabela
        tablePanel.add(table.getTableHeader(), BorderLayout.NORTH);
        // Pega os nomes das colunas (nome, cpf, e-mail) e eles vão para o norte do painel
        tablePanel.add(table,BorderLayout.CENTER);
        // A tabela em si (os dados) vai para o centro do painel
        
        c.add(BorderLayout.CENTER, tablePanel);
        
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setSize(500, 500);
        setVisible(true);
    }
    public static void main(String[] args) {
        new ProjetoTabela();
    }
}
