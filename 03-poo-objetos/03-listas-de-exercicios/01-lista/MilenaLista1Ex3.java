package com.mycompany.milenalista1ex3;
import java.util.Scanner;

/* Lista 1, exercício 3:
   Calcular e mostrar o valor da área de um retângulo dado o valor dos dois lados.
   A área do retângulo é calculada pela fórmula areaRetangulo = lado1 * lado2. */

public class MilenaLista1Ex3 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Informe o valor do lado 1 do retângulo: ");
        float lado1 = input.nextFloat();
        System.out.print("Informe o valor do lado 2 do retângulo: ");
        float lado2 = input.nextFloat();
        
        float areaRetangulo = (lado1 * lado2);
        System.out.print("Valor da área do retângulo: " + areaRetangulo);
    }
}