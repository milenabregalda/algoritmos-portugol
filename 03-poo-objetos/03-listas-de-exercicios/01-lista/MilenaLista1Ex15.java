package com.mycompany.milenalista1ex15;
import java.util.Scanner;

/* Lista 1, exercício 15 (3.5):
   Leia a idade de 20 pessoas e exiba quantas pessoas são maiores de idade. */

public class MilenaLista1Ex15 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        int i, idade, contMaior = 0;
        
        for (i = 1; i <= 20; i++) {
            System.out.print("Digite a idade da pessoa " + i + ": ");
            idade = input.nextInt();
            if (idade >= 18) {
                contMaior++;
            }
        }
        System.out.print("\nNúmero de pessoas maiores de idade: " + contMaior);
    }
}
