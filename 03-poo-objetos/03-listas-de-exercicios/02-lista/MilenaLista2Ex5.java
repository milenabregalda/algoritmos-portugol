package com.mycompany.milenalista2ex5;
import java.util.Scanner;

/* Lista 2, exercício 5:
   Ler 2 números inteiros. Se o segundo for diferente de zero,
   calcular e imprimir o quociente do primeiro pelo segundo.
   Caso contrário, imprimir a mensagem: "DIVISÃO POR ZERO". */

public class MilenaLista2Ex5 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);

        System.out.print("Digite o primeiro número inteiro: ");
        int numero1 = input.nextInt();
        System.out.print("Digite o segundo número inteiro: ");
        int numero2 = input.nextInt();

        if (numero2 != 0) {
           int quociente = numero1 / numero2;
           System.out.print("\nO quociente de " + numero1 + " por " + numero2 + " é " + quociente + ".");
        } else {
           System.out.print("\nDIVISÃO POR ZERO.");
        }
    }
}