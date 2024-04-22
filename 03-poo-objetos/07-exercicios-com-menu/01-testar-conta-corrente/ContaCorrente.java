package com.mycompany.testarcontacorrente;

// Aula de 27/09/2023 - Exercício 1
// + Aula de 28/09/2023

public class ContaCorrente {
    public float saldo;
    
    public void definirSaldoInicial(float valor) {
        saldo = valor;
    }
    
    public void depositar(float valor) {
        saldo += valor;
    }
    
    public boolean sacar (float valor) {
        if (valor <= saldo) {
            saldo -= valor;
            return true;
        } else {
            return false;
        }
    }
}