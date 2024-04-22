package com.mycompany.loja1;
import java.util.Scanner;

// Perguntar para o usuário quantas vezes quer que repita o código.

public class Loja1 {

    public static void main(String[] args) {

        Scanner entrada = new Scanner(System.in);
        float valor = 0,desconto = 0;
        int qtde;
        String cor;
        System.out.println("Quantos produtos?");
        qtde = entrada.nextInt();

        while(qtde > 0) {
            desconto=0;
            qtde--;
            System.out.println("Informe o valor da compra: ");
            valor = entrada.nextFloat();
            System.out.println("Informe a cor da etiqueta:");
            System.out.println("Azul - 10%");
            System.out.println("Verde - 20%");
            System.out.println("Amarelo - 30%");
            System.out.println("Vermelho - 40%");
            System.out.println("Laranja - 50%");

            cor=entrada.next();
            switch(cor.toUpperCase()){
                case "AZUL": 
                    desconto = (valor*10/100);
                break;
                case "VERDE": 
                    desconto = (valor*20/100);
                break;
                case "AMARELO": 
                    desconto = (valor*30/100);
                break;
                case "VERMELHO": 
                    desconto = (valor*40/100);
                break;
                case "LARANJA": 
                    desconto = (valor*50/100);
                break;
                default: System.out.println("cor nao existe");
            }
            System.out.println("Valor sem desconto: R$ " + valor);
            System.out.println("Desconto: R$ " + (desconto));
            System.out.println("Valor com desconto: R$ " + (valor - desconto));
        }
    }
}
