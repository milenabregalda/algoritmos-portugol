package com.mycompany.milenalista1ex2;
import java.util.Scanner;

// Lista 1, exercício 2 - Calcular a idade de uma pessoa, sabendo-se o ano de nascimento.

public class MilenaLista1Ex2 {
    
    public static final int ANOATUAL = 2023;

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Qual é o seu ano de nascimento? ");
        int anoNasc = input.nextInt();
        
        int idade = ANOATUAL - anoNasc;
        System.out.println("De acordo com o seu ano de nascimento, você tem " + idade + " anos.");
        
        
        if (idade >= 18) {
            System.out.print("É maior de idade.");
        } else {
            System.out.print("É menor de idade.");
        }
    }
}