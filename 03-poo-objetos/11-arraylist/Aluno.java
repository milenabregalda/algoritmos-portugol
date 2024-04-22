package com.mycompany.colecao;

// Aula de 10/10/2023
// + Aula de 11/10/2023

public class Aluno extends Pessoa {
    private int matricula; // sem set porque sistema cuida, ninguém pode modificar
    private double nota1;
    private double nota2;
    private double nota3;
    private static int auxMat = 20230000;

    public Aluno(double nota1, double nota2, double nota3, String nome, String endereco, int idade) {
        super(nome, endereco, idade);
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
        this.matricula = ++auxMat;
    }
    
    @Override
    public void dados(){
        double media = calculoMedia(); // como vou usar média 2x, melhor atribuir a variável
        super.dados();
        System.out.println("Matrícula: " + getMatricula());
        System.out.println("Nota 1: " + getNota1());
        System.out.println("Nota 2: " + getNota2());
        System.out.println("Nota 3: " + getNota3());
        System.out.println("Média final: " + media);
        System.out.println("Situação: " + informarAprovacao(media));
        System.out.println("-----------------------------");
    }
        
    private String informarAprovacao(double media) {
        return (media >= 7) ? "APROVADO" : "REPROVADO";
        // operador ternário (mais simples que if else):
        // faz uma comparação, retorna entre 2 valores dependendo dela
    }
    
    private double calculoMedia() {
        return ((getNota1() + getNota2() + getNota3()) / 3);
    }

    public int getMatricula() {
        return matricula;
    }

    public double getNota1() {
        return nota1;
    }

    public void setNota1(double nota1) {
        this.nota1 = nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public void setNota2(double nota2) {
        this.nota2 = nota2;
    }

    public double getNota3() {
        return nota3;
    }

    public void setNota3(double nota3) {
        this.nota3 = nota3;
    }
}