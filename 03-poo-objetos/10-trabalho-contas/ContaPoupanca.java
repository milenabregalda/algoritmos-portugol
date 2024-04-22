package com.mycompany.contas;

// Aula de 09/10/2023 - Exercício 1

public class ContaPoupanca extends ContaBancaria {
    private int diaDeRendimento;

    public ContaPoupanca(int diaDeRendimento, String cliente, int numConta, float saldo) {
        super(cliente, numConta, saldo);
        this.diaDeRendimento = diaDeRendimento;
        System.out.println("É uma conta poupança.\n");
    }
        
    @Override
    public String dados() {
        String s = super.dados();
        s+= "\nDia de rendimento: " + getDiaDeRendimento();
        s+= "\n-----------------------------\n";
        return s; 
    }

    public float calcularNovoSaldo(float taxaDeRendimento) {
        double rendimento = getSaldo() * taxaDeRendimento / 100;
        this.saldo += rendimento;
        return this.saldo;
    }
    
    public int getDiaDeRendimento() {
        return diaDeRendimento;
    }

    public void setDiaDeRendimento(int diaDeRendimento) {
        this.diaDeRendimento = diaDeRendimento;
    }
}