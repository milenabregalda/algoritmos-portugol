package com.mycompany.corretora;

// Aula 18/10/2023 - Exercício 1

public class Casa extends Imovel {
    private float areaConstruida;

    public Casa(float areaConstruida, float valor, String endereco, float areaTotal) {
        super(valor, endereco, areaTotal);
        this.areaConstruida = areaConstruida;
    }

    public float getAreaConstruida() {
        return areaConstruida;
    }

    public void setAreaConstruida(float areaConstruida) {
        this.areaConstruida = areaConstruida;
    }
    
    @Override
    public float calcularIptu(float areaConstruida) {
        return ((areaConstruida * 12.00f) - (areaConstruida * 12 * 0.35f));
    }

    @Override
    public void exibirDetalhes() {
        System.out.println("\nCasa");
        super.exibirDetalhes();
        System.out.println("Área construída: " + getAreaConstruida());
        System.out.println("IPTU: R$ " + calcularIptu(getAreaConstruida()));
        System.out.println("------------------------------------");
    }
}