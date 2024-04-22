package com.mycompany.testartributavel;

// Aula 20/10/2023 - Exercício 1 (interface)

public class TestarTributavel {

    public static void main(String[] args) {
        // Testando somente algumas funcionalidades:
        ContaCorrente c1 = new ContaCorrente(1000);
        c1.obterSaldo();
        System.out.println("\nContratando um seguro de vida!");
        SeguroDeVida sv = new SeguroDeVida();
        System.out.println("Valor do seguro: R$ " + sv.calcularTributos());
        System.out.println("\nNovo saldo.");
        c1.setSaldo(c1.getSaldo() - (c1.calcularTributos() + sv.calcularTributos()));
        c1.obterSaldo();
    }
}