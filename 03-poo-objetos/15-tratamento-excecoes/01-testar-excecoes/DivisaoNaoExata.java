package com.mycompany.testarexcecoes;

// Aula de 24/10/2023 - Tratamento de erros

public class DivisaoNaoExata extends Exception {
    // Exception é uma classe, DivisaoNaoExata vem dela
    
    private int num;
    private int dem;

    public DivisaoNaoExata(int num, int dem) {
        super();
        this.num = num;
        this.dem = dem;
    }

    @Override
    public String toString() {
        return "Resultado de " + num + "/" + dem + " não é um inteiro!";
        // Números passados em main são utilizados para informar o usuário aqui
    }
}
