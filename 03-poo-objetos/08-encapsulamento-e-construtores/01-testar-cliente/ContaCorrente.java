package com.mycompany.testarcliente;

// Aula de 02/10/2023 - Exercício 1 dos slides de encapsulamento e construtores
// + Aula de 03/10/2023
// + Aula de 04/10/2023

public class ContaCorrente {
    private float saldo;
    private Cliente cliente; // atributo que é um objeto (Cliente)
    
    private static int qtdContas = 0;
    // atributo estático que pertence à classe (não apenas a um objeto)
    // e contabiliza todas as instâncias criadas a partir da classe,
    // pode usar como "variável global" e sem ter que necessariamente criar objeto
    
    public static final int COD_OPERACAO = 3;
    // constante, funciona só com final mas é padrão colocar static final
    
    public ContaCorrente(){
        System.out.println("Nova Conta Corrente criada!");
        qtdContas++;
    }

    public static int getQtdContas(){ // também é estático para funcionar independente de objetos
        return qtdContas;
        // se não é static a quantidade reseta a cada novo objeto, se é static ele sempre
        // complementa a quantidade existente independente do objeto criado, por isso
        // sendo static e chamando o getQtdContas com c1, c2, c3 ou contaCorrente ele vai
        // mostrar certo de qualquer jeito. É melhor usar contaCorrente (nome da classe).
    }
}
