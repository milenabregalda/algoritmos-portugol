package com.mycompany.corretora;

// Aula 18/10/2023 - Exercício 1

public class Apto extends Imovel {
    private float areaPrivativa;

    public Apto(float areaPrivativa, float valor, String endereco, float areaTotal) {
        super(valor, endereco, areaTotal);
        this.areaPrivativa = areaPrivativa;
    }

    public float getAreaPrivativa() {
        return areaPrivativa;
    }

    public void setAreaPrivativa(float areaPrivativa) {
        this.areaPrivativa = areaPrivativa;
    }
    
    @Override
    public float calcularIptu(float areaPrivativa) {
        float calculo = ((areaPrivativa * 10.0f) + (getAreaTotal() / 24) + (areaPrivativa * 5.00f));
        float porcentagem = calculo * 0.25f;
        return (calculo - porcentagem);
    }

    @Override
    public void exibirDetalhes() {
        System.out.println("\nApartamento");
        super.exibirDetalhes();
        System.out.println("Área privativa: " + getAreaPrivativa());
        System.out.println("IPTU: R$ " + calcularIptu(getAreaPrivativa()));
        System.out.println("------------------------------------");
    }
}