package com.mycompany.testaranimais;

// Aula de 06/10/2023 - Exercício 1 (de herança)

public class Peixe extends Animal {
    private String caracteristica;
    
    public Peixe(String nome, double comprimento, int numDePatas, String cor, String ambiente, double velocidadeMedia, String caracteristica) {
        super(nome, comprimento, numDePatas, cor, ambiente, velocidadeMedia);
        this.caracteristica = caracteristica;
        System.out.println("Esse animal é um peixe.");
    }

    @Override
    public void dados() {
        super.dados();
        System.out.println("Característica: " + getCaracteristica());
        System.out.println("-----------------------------");
    }

    public String getCaracteristica() {
        return caracteristica;
    }

    public void setCaracteristica(String caracteristica) {
        this.caracteristica = caracteristica;
    }
}