package com.mycompany.testaranimais;

// Aula de 06/10/2023 - Exercício 1 (de herança)

public class Mamifero extends Animal {
    private String alimento;
    
    public Mamifero(String nome, double comprimento, int numDePatas, String cor, String ambiente, double velocidadeMedia, String alimento) {
        super(nome, comprimento, numDePatas, cor, ambiente, velocidadeMedia);
        this.alimento = alimento;
        System.out.println("Esse animal é um mamífero.");
    }

    @Override
    public void dados() {
        super.dados();
        System.out.println("Alimento: " + getAlimento());
        System.out.println("-----------------------------");
    }

    public String getAlimento() {
        return alimento;
    }
        
    public void setAlimento(String alimento) {
        this.alimento = alimento;
    }
}