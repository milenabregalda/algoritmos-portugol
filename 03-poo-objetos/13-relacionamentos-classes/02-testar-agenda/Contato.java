package com.mycompany.testaragenda;

// Aula de 16/10/2023 - Exercício 1

public class Contato {
    
    private String nome;
    private String telefone;
    private String email;

    public Contato(String nome, String telefone, String email) {
        this.nome = nome;
        this.telefone = telefone;
        this.email = email;
    }
    
    public String mostrarInfo() {
        String info = ("\nNome: " + this.getNome());
        info += ("\nTelefone: " + this.getTelefone());
        info += ("\nE-mail: " + this.getEmail());
        return info;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }    
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}