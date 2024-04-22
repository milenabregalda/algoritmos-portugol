package com.mycompany.excecaopessoa;

// Aula de 24/10/2023 - Exercício de tratamento de exceções

public class Pessoa {
    private String nome;
    private int rg;
    private String cpf;

    public Pessoa(String nome, int rg, String cpf) {
        this.nome = nome;
        this.rg = rg;
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getRg() {
        return rg;
    }

    public void setRg(int rg) {
        this.rg = rg;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    
    public String gerarDados() {
        String dados = ("Nome: " + getNome());
        dados += ("\nRG: " + getRg());
        dados += ("\nCPF: " + getCpf());
        return dados;
    }
}