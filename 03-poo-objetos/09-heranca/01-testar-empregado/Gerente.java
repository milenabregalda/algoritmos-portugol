package com.mycompany.testarempregado;

// Aula de 03/10/2023 - Exercício 1
// + Aula de 03/10/2023
// + Aula de 06/10/2023

public class Gerente extends Empregado {// Gerente vira subclasse de Empregado
    private int senha; // atributo só de Empregado

    public Gerente(int senha, String nome, String sobrenome, double salarioMensal) {
        super(nome, sobrenome, salarioMensal);
        // construtor de subclasse pega atributos da superclasse Empregado
        this.senha = senha; // complementa com o está só na subclasse Gerente
        System.out.println("Esse funcionário é gerente.");
    }
    
    public int getSenha() {
        return senha;
    }
    
    public void setSenha(int senha) {
        this.senha = senha;
    }
    
    @Override // comentário que é boa prática, esse método sobrescreve o Empregado.dados()
    public void dados() {
        super.dados(); // mostra todos os dados que estão na superclasse Empregado
        System.out.println("Senha: " + getSenha()); // complementa com o que está só na subclasse Gerente
        System.out.println("-----------------------------");
    }
}
