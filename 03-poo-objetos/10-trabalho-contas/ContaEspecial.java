package com.mycompany.contas;

// Aula de 09/10/2023 - Exercício 1

public class ContaEspecial extends ContaBancaria {
    private float limite;

    public ContaEspecial(float limite, String cliente, int numConta, float saldo) {
        super(cliente, numConta, saldo);
        this.limite = limite;
        System.out.println("É uma conta especial.\n");
    }
    
    @Override
    public String dados() {
        String s = super.dados();
        s+= "\nLimite: R$ " + getLimite();
        s+= "\n-----------------------------\n";
        return s; 
    }

    @Override
    public void sacar (float valorSaque) {
        if (valorSaque <= this.saldo + this.limite) {
            this.saldo -= valorSaque;
            System.out.println("O saque foi realizado com sucesso.");
        } else {
            System.out.println("O valor do saque é maior que o limite permitido. Saque não realizado.");
        }
    }

    public float getLimite() {
        return limite;
    }

    public void setLimite(float limite) {
        this.limite = limite;
    }
}