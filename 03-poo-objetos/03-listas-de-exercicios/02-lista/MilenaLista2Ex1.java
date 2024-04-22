package com.mycompany.milenalista2ex1;
import java.util.Scanner;

/* Lista 2, exercício 1:
   Ler dois valores e imprimir o maior dos dois. */

public class MilenaLista2Ex1 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Informe o primeiro valor: ");
        int valor1 = input.nextInt();
        System.out.print("Informe o segundo valor: ");
        int valor2 = input.nextInt();
        
        if (valor1 > valor2) {
            System.out.print("O maior valor é " + valor1 + ".");
        } else if (valor1 < valor2) {
            System.out.print("O maior valor é " + valor2 + ".");
        } else {
            System.out.print("Os dois valores são iguais.");
        }
    }
}