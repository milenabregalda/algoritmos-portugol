package com.mycompany.milenalista1ex9;
import java.util.Scanner;

/* Lista 1, exercício 9 (2.4):
   Escreva um programa que leia um número entre 1 e 12 e escreva o mês correspondente.
   Ex: Se o número lido for 2, deverá ser mostrado ao usuário “Fevereiro”. */

public class MilenaLista1Ex9 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite o número do mês que você deseja saber o nome: ");
        int mes = input.nextInt();
        
        switch (mes) {
            case 1:
              System.out.print("Janeiro");
              break;
            case 2:
              System.out.print("Fevereiro");
              break;
            case 3:
              System.out.print("Março");
              break;
            case 4:
              System.out.print("Abril");
              break;
            case 5:
              System.out.print("Maio");
              break;
            case 6:
              System.out.print("Junho");
              break;
            case 7:
              System.out.print("Julho");
              break;
            case 8:
              System.out.print("Agosto");
              break;
            case 9:
              System.out.print("Setembro");
              break;
            case 10:
              System.out.print("Outubro");
              break;
            case 11:
              System.out.print("Novembro");
              break;
            case 12:
              System.out.print("Dezembro");
              break;
            default:
              System.out.print("Mês inválido");
          }
    }
}

