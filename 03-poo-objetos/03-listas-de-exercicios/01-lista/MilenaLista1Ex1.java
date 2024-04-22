package com.mycompany.milenalista1ex1;
import java.util.Scanner;

// Lista 1, exercício 1 - Calcular e mostrar a metade de um número.

public class MilenaLista1Ex1 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        float numero, resultado;
        
        System.out.print("Informe um número: ");
        numero = input.nextFloat();
        resultado = (numero / 2);
        
        System.out.print("A metade do número é " + resultado + ".");
    }
}