package com.mycompany.milenalista1ex16;
import java.util.Scanner;

/* Lista 1, exercício 16 (3.6):
   Um cliente de supermercado fez uma compra de 20 itens.
   Leia o preço de cada item e calcule o total que a pessoa vai pagar. */

public class MilenaLista1Ex16 {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        float preco, total = 0;
        
        for (int i = 1; i <= 20; i++) {
            System.out.print("Digite o preço do item número " + i + ": ");
            preco = input.nextFloat();
            total = total + preco;
        }
        System.out.print("\nTotal a pagar: R$ " + total);
    }
}
