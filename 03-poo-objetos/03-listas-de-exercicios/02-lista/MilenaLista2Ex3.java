package com.mycompany.milenalista2ex3;
import java.util.Scanner;

/* Lista 2, exercício 3:
   Desenvolva um algoritmo que leia 3 notas (de 0 a 100), calcule a média
   aritmética e informe se o aluno passou. A média de aprovação é 70. */

public class MilenaLista2Ex3 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Informe a primeira nota (0 a 100): ");
        float nota1 = input.nextFloat();
        System.out.print("Informe a segunda nota (0 a 100): ");
        float nota2 = input.nextFloat();
        System.out.print("Informe a terceira nota (0 a 100): ");
        float nota3 = input.nextFloat();
        
        float media = ((nota1 + nota2 + nota3) / 3);
        System.out.println("\nA média das 3 notas é " + media + ".");
        
        if (media >= 70) {
            System.out.println("O aluno foi aprovado.");
        } else {
            System.out.println("O aluno foi reprovado.");
        }
    }
}
