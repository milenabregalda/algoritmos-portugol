package com.mycompany.testarautomovel;

public class Automovel {
    public String marca; // visibilidade de acesso público
    public String modelo;
    public String cor;
    public int velocidade; // melhor não inicializar valores aqui
    
    public void buzinar() {
        if (marca.equals("Peugeot")) { // String equals, valores ==
            System.out.println("Fon! Fon!");
        } else {
            System.out.println("Bi! Bi!");
        }
    }
    
    public void acelerar(int valor) { // jeito mais simples por enquanto
        velocidade += valor;
    }
    
    public int reduzir(int valor) {
        return (velocidade - valor);
    }   
}