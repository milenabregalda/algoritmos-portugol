package com.mycompany.corretora;

// Aula 18/10/2023 - Exercício 1

public class Imovel {
    private int cod;
    private static int codAux = 0;
    private float valor;
    private String endereco;
    private float areaTotal;

    public Imovel(float valor, String endereco, float areaTotal) {
        this.cod = ++codAux;
        this.valor = valor;
        this.endereco = endereco;
        this.areaTotal = areaTotal;
    }

    public int getCod() {
        return cod;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public float getAreaTotal() {
        return areaTotal;
    }

    public void setAreaTotal(float areaTotal) {
        this.areaTotal = areaTotal;
    }
    
    public void exibirDetalhes() {
        System.out.println("------------------------------------");
        System.out.println("Código: " + getCod());
        System.out.println("Valor: R$ " + getValor());
        System.out.println("Endereço: " + getEndereco());
        System.out.println("Área total: " + getAreaTotal());
    }
    
    public float calcularIptu(float areaTotal) {
        return (areaTotal * 10.0f);
    }
}