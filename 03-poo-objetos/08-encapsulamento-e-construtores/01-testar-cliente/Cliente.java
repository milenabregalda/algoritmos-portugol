package com.mycompany.testarcliente;

// Aula de 02/10/2023 - Exercício 1 dos slides de encapsulamento e construtores
// + Aula de 03/10/2023
// + Aula de 04/10/2023

public class Cliente {
    // Normalmente, os atributos são privados e os métodos são públicos.
    
    private String nome;
    private String endereco;
    private float renda;

    // Construtor
    // Público, nome da classe, parâmetros desejados para inicializar (todos ou só alguns):

    public Cliente() {
        System.out.println("\nObjeto criado!");
    }
    public Cliente(String nome, String endereco, float renda) {
        this.nome = nome;
        this.endereco = endereco;
        this.renda = renda;
        System.out.println("Cliente criado com sucesso!");
    }
    
    public Cliente(String nome, String endereco) {
        this.nome = nome;
        this.endereco = endereco;
        this.renda = 1000f;
        System.out.println("Cliente criado com sucesso!");
    }

    public Cliente(String nome) {
        this.nome = nome;
        System.out.println("Cliente criado com sucesso!");
    }
    
    // Método modificador
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    // Método acessor
    public String getNome() {
        return nome;
    }
    
    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }
    
    public String getEndereco() {
        return endereco;
    }
    
    public void setRenda(float renda) {
        this.renda = renda;
    }
    
    public float getRenda() {
        return renda;
    }
}