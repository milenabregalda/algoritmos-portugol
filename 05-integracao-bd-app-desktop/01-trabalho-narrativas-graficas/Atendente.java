package com.mycompany.narrativasgraficasmilena;

// Trabalho de classes POO Narrativas Gráficas (trabalho B)
// Milena Fontana Bregalda - 03/04/2024 até 08/04/2024

public class Atendente {
    private int identificacao;
    private String nome;

    public Atendente(int identificacao, String nome) {
        this.identificacao = identificacao;
        this.nome = nome;
    }

    public int getIdentificacao() {
        return identificacao;
    }

    public void setIdentificacao(int identificacao) {
        this.identificacao = identificacao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}