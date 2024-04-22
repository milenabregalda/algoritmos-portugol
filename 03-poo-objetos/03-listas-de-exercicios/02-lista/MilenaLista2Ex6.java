package com.mycompany.milenalista2ex6;
import java.util.Scanner;

/* Lista 2, exercício 6:
   Desenvolva um algoritmo que leia dois números inteiros e deixe-os em ordem crescente. */

public class MilenaLista2Ex6 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite o primeiro número inteiro: ");
        int numero1 = input.nextInt();
        System.out.print("Digite o segundo número inteiro: ");
        int numero2 = input.nextInt();

        if (numero1 > numero2) {
            int ordenacao = numero1;
            numero1 = numero2;
            numero2 = ordenacao;
        }
        System.out.println("\nOs números em ordem crescente são " + numero1 + " e " + numero2 + ".");
    }
}
