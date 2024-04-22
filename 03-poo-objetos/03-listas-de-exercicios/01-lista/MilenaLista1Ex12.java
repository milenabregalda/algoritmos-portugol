package com.mycompany.milenalista1ex12;

/* Lista 1, exercício 12 (3.2):
   Escrever os números ímpares de 1 a 20. */

public class MilenaLista1Ex12 {

    public static void main(String[] args) {
        System.out.println("Números ímpares de 1 a 20:");
        
        for (int numero = 1; numero <= 20; numero++) {
            if (numero% 2 == 1) {
                System.out.println(numero);
            }  
        }
    }
}

