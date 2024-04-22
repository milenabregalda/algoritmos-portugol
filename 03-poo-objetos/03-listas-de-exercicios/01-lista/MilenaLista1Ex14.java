package com.mycompany.milenalista1ex14;
import java.util.Scanner;

/* Lista 1, exercício 14 (3.4):
   Calcular a média de 10 números informados pelo usuário. */

public class MilenaLista1Ex14 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        float numero, soma = 0, media;
        
        for (int i = 1; i <= 10; i++) {
            System.out.print("Digite o número " + i + ": ");
            numero = input.nextFloat();
            soma = soma + numero;
        }
        
        media = soma / 10;
        System.out.print("\nA média dos 10 números informados é igual a " + media + ".");
    }
}
