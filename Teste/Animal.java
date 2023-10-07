package com.mycompany.testaranimais;

// Aula de 06/10/2023 - Exercício 1 (de herança)

public class Animal {
    private String nome;
    private double comprimento;
    private int numDePatas;
    private String cor;
    private String ambiente;
    private double velocidadeMedia;

    public Animal(String nome, double comprimento, int numDePatas, String cor, String ambiente, double velocidadeMedia) {
        this.nome = nome;
        this.comprimento = comprimento;
        this.numDePatas = numDePatas;
        this.cor = cor;
        this.ambiente = ambiente;
        this.velocidadeMedia = velocidadeMedia;
        System.out.println("Animal cadastrado!");
    }
    
    public void dados() {
        System.out.println("\n-----------------------------");
        System.out.println("Nome: " + getNome());
        System.out.println("Comprimento: " + getComprimento());
        System.out.println("Número de patas: " + getNumDePatas());
        System.out.println("Cor: " + getCor());
        System.out.println("Ambiente: " + getAmbiente());
        System.out.println("Velocidade média: " + getVelocidadeMedia());
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getComprimento() {
        return comprimento;
    }

    public void setComprimento(double comprimento) {
        this.comprimento = comprimento;
    }

    public int getNumDePatas() {
        return numDePatas;
    }

    public void setNumDePatas(int numDePatas) {
        this.numDePatas = numDePatas;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public String getAmbiente() {
        return ambiente;
    }

    public void setAmbiente(String ambiente) {
        this.ambiente = ambiente;
    }

    public double getVelocidadeMedia() {
        return velocidadeMedia;
    }

    public void setVelocidadeMedia(double velocidadeMedia) {
        this.velocidadeMedia = velocidadeMedia;
    }
}