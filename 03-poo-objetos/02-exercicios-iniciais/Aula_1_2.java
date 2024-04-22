
package com.mycompany.aula_1_2;
import java.util.Scanner;

public class Aula_1_2 {
    
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in); // Criação de objeto scanner para função leia
        
        System.out.println("\nBom dia!\n");
        System.out.print("Informe seu nome: ");
        String nome = ler.nextLine(); // Declaração de variável nome, próximo valor lido é atribuído a ela
        // Só uma palavra em string usar next, com espaços usar nextLine
        
        System.out.println("Olá, " + nome + ".\n");

        System.out.print("Informe sua idade: ");
        int idade = ler.nextInt();
        
        System.out.print("Informe seu salário: ");
        float salario = ler.nextFloat();
        //Números com ponto no código, com vírgula na entrada
        
        System.out.println("\n*****************");
        System.out.println("Ficha cadastral:");
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("Salário: " + salario);
        System.out.println("******************");
        
        System.out.print("\nQual é o percentual do aumento? ");
        float percentual = ler.nextFloat();
        System.out.println("Novo salário: " + (salario + (salario * percentual) / 100));
    }
}
