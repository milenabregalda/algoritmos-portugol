package com.mycompany.milenalista2ex8;
import java.util.Scanner;

/* Lista 2, exercício 8:
   Uma loja está fazendo liquidação e vendendo produtos com até 50% de desconto.
   O desconto é identificado de acordo com a cor da etiqueta do produto.
   Crie um algoritmo que leia o valor original do produto e a cor da etiqueta
   e informe quanto o cliente irá pagar após a aplicação do desconto. */

public class MilenaLista2Ex8 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        double valorOriginal, valorFinal, desconto;
        int cor;
        
        System.out.print("Informe o valor original do produto: ");
        valorOriginal = input.nextDouble();
        System.out.println("\nCores das etiquetas:\n1 - Azul\n2 - Verde\n3 - Amarelo\n4 - Vermelho\n5 - Laranja");
        System.out.print("\nInforme o número da cor da etiqueta do produto: ");
        
        cor = input.nextInt();
        
        input.close();
        desconto = 0; // double é melhor para preços
        
        switch (cor) {
            case 1:
                desconto = 0.1; // float 0.1f
                break;
            case 2:
                desconto = 0.2;
                break;
            case 3:
                desconto = 0.3;
                break;
            case 4:
                desconto = 0.4;
                break;
            case 5:
                desconto = 0.5;
                break;
            default:
                System.out.println("\nA cor informada é inválida.");
                return;
        }
        
        valorFinal = valorOriginal - (valorOriginal * desconto);
        // Cálculo de desconto simplificado
        
        int descontoInt = (int) (desconto * 100);
        System.out.println("\nComo a cor da etiqueta é a número " + cor +", o desconto é de " + descontoInt + "%.");
        System.out.println("O cliente vai pagar R$ " + valorFinal + ".");
    }
}