package com.mycompany.milenalista1ex13;

/* Lista 1, exercício 13 (3.3):
   Calcular a soma dos números de 1 a 10. */

public class MilenaLista1Ex13 {

    public static void main(String[] args) {
        int numero, soma = 0;
        
        for (numero = 1; numero <= 10; numero++) {
            soma = soma + numero;
        }
        System.out.println("Soma dos números de 1 a 10: " + soma);
    }
}

