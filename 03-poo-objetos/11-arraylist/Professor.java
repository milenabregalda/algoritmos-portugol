package com.mycompany.colecao;

// Aula de 10/10/2023
// + Aula de 11/10/2023

public class Professor extends Pessoa {
    private double salario;

    public Professor(double salario, String nome, String endereco, int idade) {
        super(nome, endereco, idade);
        this.salario = salario;
    }
    
    @Override
    public void dados(){
        super.dados();
        System.out.println("Salário: R$ " + getSalario());
        System.out.println("-----------------------------");
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }
}