package com.mycompany.testarmotor;

// Aula de 04/10/2023 - exercício 3

public class Motor {
    private int potencia;
    
    public Motor(int potencia) {
        if (potencia < 1) {
            this.potencia = 1;
            System.out.println("O limite mínimo de potência é 1.");
        } else if (potencia > 100) {
            this.potencia = 100;
            System.out.println("O limite máximo de potência é 100.");
        } else {
            this.potencia = potencia;
        }
        System.out.println("Novo motor instanciado!");
    }
    
     public int getPotencia() {
        return potencia;
    }
}