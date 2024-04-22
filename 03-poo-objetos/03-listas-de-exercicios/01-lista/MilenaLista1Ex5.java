package com.mycompany.milenalista1ex5;
import java.util.Scanner;

/* Lista 1, exercício 5:
   Uma loja está fazendo liquidação, vendendo tudo por 40% do preço original.
   Faça um programa em Java que calcule o valor do desconto, dado o preço original do produto. */

public class MilenaLista1Ex5 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Informe o preço do produto: ");
        float preco = input.nextFloat();
        
        float desconto = 40;
        float precoFinal = preco - (preco * (desconto/100));
        
        int descontoInt = (int) desconto;
        System.out.print("O produto teve um desconto de " + descontoInt + "% e ficou em R$ " + precoFinal + ".");
    }
}