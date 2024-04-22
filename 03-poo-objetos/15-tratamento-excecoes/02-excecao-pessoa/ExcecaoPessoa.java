package com.mycompany.excecaopessoa;
import java.util.Scanner;
import java.util.InputMismatchException;
import java.util.ArrayList;

// Aula de 24/10/2023 - Exercício de tratamento de exceções

public class ExcecaoPessoa {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        String nome, cpf;
        int i, rg;
        boolean erro;
        ArrayList<Pessoa> pessoas = new ArrayList<>();
        
        for (i = 0; i < 5; i++) {
            do {
                erro = false;
                System.out.println("\n--------------------------------");
                System.out.println("Cadastro da pessoa " + (i + 1) + "\n");
                try {
                    System.out.print("Informe o nome: ");
                    nome = ler.nextLine();
                    System.out.print("Informe o RG: ");
                    rg = ler.nextInt();
                    System.out.print("Informe o CPF: ");
                    cpf = ler.next();
                    System.out.println("--------------------------------");
                    ler.nextLine();
                    Pessoa pessoa = new Pessoa(nome, rg, cpf);
                    pessoas.add(pessoa);
                } catch(InputMismatchException ime) {
                    erro = true;
                    System.err.println("Erro: Entrada de valor inválido.");
                    ler.nextLine();  
                } catch(Exception e) {
                    erro = true;
                    System.err.println("Um erro inesperado ocorreu.");
                    System.err.println(e);
                    ler.nextLine();
                }                
            } while (erro);
        }

        System.out.println("\n\nPessoas cadastradas:");
        for (Pessoa pessoa : pessoas) {
            System.out.println("--------------------------------");
            System.out.println(pessoa.gerarDados());
        }
        System.out.println("--------------------------------\n");
    }
}