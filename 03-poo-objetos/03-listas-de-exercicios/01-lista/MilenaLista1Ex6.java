package com.mycompany.milenalista1ex6;
import java.util.Scanner;

/* Lista 1, exercício 6 (2.1):
   Ler um número e determinar se ele é maior ou igual ou menor do que zero. */

public class MilenaLista1Ex6 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite o número: ");
        float numero = input.nextFloat();
        
        if (numero > 0) {
            System.out.print("O número é maior que zero.");
        } else if (numero < 0) {
            System.out.print("O número é menor que zero.");
        } else {
          System.out.print("O número é igual a zero.");
        }
    }
}