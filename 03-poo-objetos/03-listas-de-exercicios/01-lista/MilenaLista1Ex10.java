package com.mycompany.milenalista1ex10;
import java.util.Scanner;

/* Lista 1, exercício 10 (2.5):
   Escreva um programa que leia 4 números e exiba qual o menor deles. */

public class MilenaLista1Ex10 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int numero, menorNumero = 999999999, i;
        
        for (i = 1; i <= 4; i++) {
            System.out.print("Digite o número " + i + ": ");
            numero = input.nextInt();

            if (menorNumero > numero) {
                menorNumero = numero;
            }
        }
        System.out.print("\nO menor número é " + menorNumero + ".");
    }
}