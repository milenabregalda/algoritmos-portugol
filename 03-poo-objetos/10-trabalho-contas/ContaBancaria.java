package com.mycompany.contas;

// Aula de 09/10/2023 - Exercício 1

public class ContaBancaria {
    private String cliente;
    private int numConta;
    protected float saldo;

    public ContaBancaria(String cliente, int numConta, float saldo) {
        this.cliente = cliente;
        this.numConta = numConta;
        this.saldo = saldo;
        System.out.println("Conta bancária criada com sucesso!");
    }
    
    public String dados() {
        String s = "-----------------------------";
        s+= "\nCliente: " + getCliente();
        s+= "\nNúmero da conta: " + getNumConta();
        s+= "\nSaldo: R$ " + getSaldo();
        return s;
    }
    
    public void sacar (float valorSaque) {
        if (valorSaque <= this.saldo) {
            this.saldo -= valorSaque;
            System.out.println("Saque realizado com sucesso.");
            System.out.println("Saldo: R$ " + getSaldo());
        } else {
            System.out.println("Saldo insuficiente. Saque não realizado.");
        }
    }
    
    public void depositar(float valorDeposito) {
        if (valorDeposito > 0) {
            this.saldo += valorDeposito;
            System.out.println("Depósito realizado com sucesso.");
            System.out.println("Saldo: R$ " + getSaldo());
        }
        else {
            System.out.println("Valor inválido para depósito.");
        }
    }

    public String getCliente() {
        return cliente;
    }

    public void setCliente(String cliente) {
        this.cliente = cliente;
    }

    public int getNumConta() {
        return numConta;
    }

    public void setNumConta(int numConta) {
        this.numConta = numConta;
    }

    public float getSaldo() {
        return saldo;
    }

    public void setSaldo(float saldo) {
        this.saldo = saldo;
    }
}