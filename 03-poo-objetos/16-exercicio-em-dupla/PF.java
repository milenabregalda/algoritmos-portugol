package com.mycompany.cadastro;

// Aula de 25/10/23 - Exercício em dupla (versão corrigida)

public class PF extends Pessoa implements Aniversario {
    private String cpf;

    public PF(String nome, int idade) {
        super(nome, idade);
    }

    public PF(String cpf, String nome, int idade) {
        super(nome, idade);
        this.cpf = cpf;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    @Override
    public void fazerAniversario() {
        setIdade(getIdade() + 1);
    }
    
    @Override
    public void fazerAniversario(int anos) {
        setIdade(getIdade() + anos);
    }
    
    @Override
    public void dados() {
        super.dados();
        System.out.println("Tipo: Pessoa Física");
        if(getCpf() != null) {
            System.out.println("CPF: " + getCpf());
            System.out.println("-------------------------------\n");
        } else {
            System.out.println("CPF: não cadastrado");
            System.out.println("-------------------------------\n");
        }
    }
}