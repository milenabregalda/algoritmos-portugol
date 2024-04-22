package com.mycompany.milenalista2ex7;
import java.util.Scanner;

/* Lista 2, exercício 7:
   Um restaurante oferece algumas opções de pratos do cardápio.
   Cada prato possui um valor. Crie um algoritmo que, dado o nome do prato,
   exiba a mensagem de quanto o cliente irá pagar. */

public class MilenaLista2Ex7 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int prato;
        float preco;

        System.out.println("Menu:\n1 - Feijoada: R$ 25,00\n2 - Macarronada: R$ 15,00");
        System.out.println("3 - Galinha caipira: R$ 30,00\n4 - Carne de sol: R$40,00");
        System.out.print("\nDigite o nome do prato: ");
        
        prato = input.nextInt();
        input.close();// Fecha o scanner
        preco = 0;

        switch (prato) {
            case 1:
                preco = 25;
                break;
            case 2:
                preco = 15;
                break;
            case 3:
                preco = 30;
                break;
            case 4:
                preco = 30;
                break;
            default:
                System.out.println("\nO nome do prato é inválido.");
               return; // Programa encerra antes
        }
        System.out.println("\nO cliente irá pagar R$ " + preco + " pelo prato " + prato + ".");
    }
}