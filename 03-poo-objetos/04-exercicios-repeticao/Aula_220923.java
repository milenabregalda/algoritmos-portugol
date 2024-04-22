package com.mycompany.aula_220923;
import java.util.Scanner;

// Exercício: não deixar aceitar número negativo, porque se aceitar não roda nada.

public class Aula_220923 {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        int cont=1, qtde = 0;
       
        /*while (qtde < 1) {
            System.out.println("Quantas vezes vc quer repetir?");
            qtde = ler.nextInt();
            if (qtde < 1) {
                System.out.println("Valor inválido. Coloque 1 ou um número maior.\n");
            }
        }*/
        
        System.out.println("Quantas vezes vc quer repetir?");
        qtde = ler.nextInt();
  
        if (qtde > 0) {
            while(cont <= qtde){
                System.out.println("==> " + cont);
                cont++;
            }
        } else {
            System.out.println("Valor inválido.");
        }
    }
}
