package com.mycompany.testartributavel;

// Aula 20/10/2023 - Exercício 1 (interface)

public class ContaPoupanca extends Conta {

    public ContaPoupanca(double saldo) {
        super(saldo);
        System.out.println("Conta poupança criada!");
    }
}