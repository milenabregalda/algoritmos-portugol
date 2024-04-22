package com.mycompany.milenalista1ex7;
import java.util.Scanner;

/* Lista 1, exercício 7 (2.2):
   Faça um programa que leia o índice de massa corporal (IMC) de uma pessoa.
   Se o valor do IMC for maior do que 25,0 deverá ser exibida a mensagem “Você está acima do peso!”.
   Caso contrário exiba a mensagem “Você está saudável!”. */

public class MilenaLista1Ex7 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite o seu IMC: ");
        float imc = input.nextFloat();
        
        if (imc > 25.0) {
            System.out.print("Você está acima do peso!");
        } else {
          System.out.print("Você está saudável!");
        }
    }
}

