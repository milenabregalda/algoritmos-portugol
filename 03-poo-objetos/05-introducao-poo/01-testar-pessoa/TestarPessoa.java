package com.mycompany.testarpessoa;

// Aula POO 25/09/2023 - Exercício 1 dos slides

public class TestarPessoa {

    public static void main(String[] args) {
        Pessoa p1 = new Pessoa();
        p1.nome = "Amanda";
        p1.idade = 21;
        
        p1.dizerONome();
        p1.dizerAIdade();
        p1.fazerAniversario();
        p1.dizerAIdade();
    }
}