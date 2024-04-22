package com.mycompany.milenalista1ex4;
import java.util.Scanner;

/* Lista 1, exercício 4:
   Calcular e mostrar o valor do perímetro de um retângulo dado o valor dos dois lados.
   O perímetro do retângulo é calculado pela fórmula perimetroRetangulo = 2*lado1 + 2*lado2. */

public class MilenaLista1Ex4 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Informe o valor do lado 1 do retângulo: ");
        float lado1 = input.nextFloat();
        System.out.print("Informe o valor do lado 2 do retângulo: ");
        float lado2 = input.nextFloat();
        
        float perimetroRetangulo = ((2 * lado1) + (2 * lado2));
        System.out.print("Valor do perímetro do retângulo: " + perimetroRetangulo);
    }
}