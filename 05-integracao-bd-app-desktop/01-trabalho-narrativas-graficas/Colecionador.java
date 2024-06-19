package com.mycompany.narrativasgraficasmilena;
import java.util.ArrayList;

// Trabalho de classes POO Narrativas Gráficas (trabalho B)
// Milena Fontana Bregalda - 03/04/2024 até 08/04/2024

public class Colecionador {
    private String nome;
    private int numeroInscricao;
    public ArrayList<GraphicNovel> listaCompras = new ArrayList<>();
    private Assinatura assinatura;

    public Colecionador(String nome, int numeroInscricao) {
        this.nome = nome;
        this.numeroInscricao = numeroInscricao;
    }

    public Colecionador(String nome, int numeroInscricao, GraphicNovel[] listaCompras, Assinatura assinatura) {
        this.nome = nome;
        this.numeroInscricao = numeroInscricao;
        this.assinatura = assinatura;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getNumeroInscricao() {
        return numeroInscricao;
    }

    public void setNumeroInscricao(int numeroInscricao) {
        this.numeroInscricao = numeroInscricao;
    }

    public ArrayList<GraphicNovel> getListaCompras() {
        return listaCompras;
    }

    public void setListaCompras(ArrayList<GraphicNovel> listaCompras) {
        this.listaCompras = listaCompras;
    }
    
    public Assinatura getAssinatura() {
        return assinatura;
    }

    public void setAssinatura(Assinatura assinatura) {
        this.assinatura = assinatura;
    }
}