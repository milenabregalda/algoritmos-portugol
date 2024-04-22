package com.mycompany.milenalista1ex8;
import java.util.Scanner;

/* Lista 1, exercício 8 (2.3):
   Escreva um programa para ler o nome de dois times de futebol e o número de gols
   marcados por cada time na partida. O programa deve imprimir o nome do time vencedor.
   Caso não haja vencedor deverá ser impresso EMPATE. */

public class MilenaLista1Ex8 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite o nome do primeiro time de futebol: ");
        String time1 = input.nextLine();
        System.out.print("Digite o nome do segundo time de futebol: ");
        String time2 = input.nextLine();
        
        System.out.print("\nQuantos gols o time " + time1 + " marcou? ");
        int gols1 = input.nextInt();
        System.out.print("Quantos gols o time " + time2 + " marcou? ");
        int gols2 = input.nextInt();

        if (gols1 > gols2) {
            System.out.print("\nO time " + time1 + " venceu!");
        } else if (gols1 < gols2) {
            System.out.print("\nO time " + time2 + " venceu!");
        } else {
          System.out.print("\nEmpate!");
        }
    }
}