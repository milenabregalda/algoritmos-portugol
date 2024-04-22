package com.mycompany.corretora;

// Aula 18/10/2023 - Exercício 1

public class Terreno extends Imovel {
    private String tipo;

    public Terreno(String tipo, float valor, String endereco, float areaTotal) {
        super(valor, endereco, areaTotal);
        this.tipo = tipo;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    @Override
    public void exibirDetalhes() {
        System.out.println("\nTerreno");
        super.exibirDetalhes();
        System.out.println("Tipo: " + getTipo());
        System.out.println("IPTU: R$ " + calcularIptu(getAreaTotal()));
        System.out.println("------------------------------------");
    }
}