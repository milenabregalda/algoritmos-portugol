package com.mycompany.milenalista2ex2;
import java.util.Scanner;

/* Lista 2, exercício 2:
   Ler dois valores e imprimir a diferença do maior para o menor. */

public class MilenaLista2Ex2 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int valor1, valor2, diferenca;
        
        System.out.print("Informe o primeiro valor: ");
        valor1 = input.nextInt();
        System.out.print("Informe o segundo valor: ");
        valor2 = input.nextInt();
        
        if (valor1 > valor2) {
            diferenca = valor1 - valor2;
            System.out.print("A diferença de " + valor1 + " para " + valor2 + " é de " + diferenca + ".");
        } else {
            diferenca = valor2 - valor1;
            System.out.print("A diferença de " + valor2 + " para " + valor1 + " é de " + diferenca + ".");
        }
    }
}
