package com.mycompany.cadastro;
import java.util.ArrayList;

// Aula de 25/10/23 - Exercício em dupla (versão corrigida)

public abstract class Pessoa {
    private String nome;
    private int idade;

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
    
    public void dados() {
        System.out.println("-------------------------------");
        System.out.println("Nome: " + getNome());
        System.out.println("Idade: " + getIdade());
    }
    
    public static Pessoa buscarPorNome(ArrayList<Pessoa> pessoas, String nome) {
        Pessoa p1 = null;
        for(Pessoa p : pessoas) {
            if(nome.equals(p.getNome())) {
                p1 = p;
                break;
            }
        }
        return p1;
    }
}