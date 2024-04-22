package com.mycompany.testartributavel;

// Aula 20/10/2023 - Exercício 1 (interface)

public class ContaCorrente extends Conta implements Tributavel {

    public ContaCorrente(double saldo) {
        super(saldo);
        System.out.println("Conta corrente criada!");
    }
    
    @Override
    public double calcularTributos() {
        return (getSaldo() * 0.01);
    }
}