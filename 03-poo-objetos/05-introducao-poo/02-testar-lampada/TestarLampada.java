package com.mycompany.testarlampada;

// Aula POO 25/09/2023 - Exercício 2 dos slides

public class TestarLampada {

    public static void main(String[] args) {
        Lampada l1 = new Lampada();
        l1.acesa = false;
        l1.potencia = 16; // se não colocar valor int, o padrão é 0
        
        l1.acender();
        l1.informarSituacao();
        l1.apagar();
        l1.informarSituacao();
        l1.informarPotencia();
    }
}
