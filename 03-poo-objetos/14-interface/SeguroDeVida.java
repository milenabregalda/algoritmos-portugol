package com.mycompany.testartributavel;

// Aula 20/10/2023 - Exercício 1 (interface)

public class SeguroDeVida implements Tributavel {
    private double TAXA_FIXA = 42.0;
    // professor disse que não precisa de construtor

    @Override
    public double calcularTributos() {
        return TAXA_FIXA;
    }
}