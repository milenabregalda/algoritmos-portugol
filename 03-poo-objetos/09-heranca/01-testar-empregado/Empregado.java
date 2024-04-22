package com.mycompany.testarempregado;

// Aula de 03/10/2023 - Exercício 1
// + Aula de 03/10/2023
// + Aula de 06/10/2023

public class Empregado {
    private String nome;
    private String sobrenome;
    private double salarioMensal;

    public Empregado(String nome, String sobrenome, double salarioMensal) {
        setNome(nome);
        setSobrenome(sobrenome);
        setSalarioMensal(salarioMensal);
        // melhor com set porque set pode ter
        // regras de tratamento e assim serão respeitadas
        System.out.println("Novo funcionário cadastrado!");
    }
    
    public void dados() {
        System.out.println("\n-----------------------------");
        System.out.println("Nome: " + getNome());
        System.out.println("Sobrenome: " + getSobrenome());
        System.out.println("Salário mensal: R$ " + getSalarioMensal());
        System.out.println("-----------------------------");
        // é melhor usar get na mesma classe também
    }
    
    public double calcularSalarioAnual() {
        return (getSalarioMensal() * 12);
    }
    
    public void mostrarSalarioAnual() {
        System.out.println("\nSalário anual: R$ " + calcularSalarioAnual());
    }

    public void aumentarSalario(double porcentagem) {
        // setSalarioMensal(getSalarioMensal()*1.1);
        setSalarioMensal(getSalarioMensal() + (getSalarioMensal() * porcentagem) / 100);
        System.out.println("\nAumento de " + porcentagem + "% aplicado ao salário de " + getNome() + ".");
        // sem retorno porque só atribui valor à variável e mostra mensagem
    }
    
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getNome() {
        return nome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSalarioMensal(double salarioMensal) {
        this.salarioMensal = salarioMensal;
    }
    
    public double getSalarioMensal() {
        return salarioMensal;
    }
}