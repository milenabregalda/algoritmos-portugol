package com.mycompany.testaragenda;
import java.util.ArrayList;
import java.util.Scanner;

// Aula de 16/10/2023 - Exercício 1:

// Escreva uma classe Agenda, que contém vários contatos do tipo Contato. Cada
// contato possui nome, telefone e e-mail. A Agenda também possui um nome. Crie
// um programa teste que peça ao usuário entrar com o nome da Agenda e em seguida
// 3 contatos. Crie métodos que retornem uma String com a informação de cada
// contato e também todos os contatos da agenda.

public class TestarAgenda {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);

        // Prof pediu para fazer ArrayList
        ArrayList<Contato> cadastroC = new ArrayList();
        
        int i;
        String nome, telefone, email;
        
        System.out.print("Informe o nome da Agenda: ");
        nome = ler.nextLine();
        Agenda agenda = new Agenda(nome);
        
        for (i = 1; i <= 3; i++) {
            System.out.println("\nCadastro de contato " + i + "/3:");
            System.out.print("Informe o nome: ");
            nome = ler.nextLine();
            
            System.out.print("Informe o telefone: ");
            telefone = ler.nextLine();
            
            System.out.print("Informe o endereço de e-mail: ");
            email = ler.nextLine();
            Contato contato = new Contato(nome, telefone, email);
            cadastroC.add(contato);
        }
        agenda.setContatos(cadastroC);
        // Contatos cadastrados no ArrayList cadastroC são passados
        // ao "atributo" contatos do tipo ArrayList em Agenda
        
        if (agenda != null) {
            System.out.println(agenda.mostrarInfos());
        }
    }
}
