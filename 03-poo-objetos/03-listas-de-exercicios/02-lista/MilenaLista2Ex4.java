package com.mycompany.milenalista2ex4;
import java.util.Scanner;

/* Lista 2, exercício 4:
   Desenvolva um algoritmo que, dado um número inteiro,
   diga se este número é par ou ímpar. */

public class MilenaLista2Ex4 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digite um número inteiro: ");
        int numero = input.nextInt();
        
        if (numero % 2 == 0) {
            System.out.println("O número " + numero + " é par.");
        } else {
            System.out.println("O número " + numero + " é ímpar.");
        }
    }
}
