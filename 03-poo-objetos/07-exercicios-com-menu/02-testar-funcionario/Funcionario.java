package com.mycompany.testarfuncionario;

// Aula de 27/09/2023 - Exercício 2
// + Aula de 28/09/2023

public class Funcionario {
    public String nome;
    public String sobrenome;
    public int horasTrabalhadas;
    public float valorPorHora;

    public String nomeCompleto() {
        return (this.nome + " " + this.sobrenome);
    }
    
    public float calcularSalario() {
        return (this.horasTrabalhadas * this.valorPorHora);
    }
    
    public int incrementarHoras(int horas) {
        return (this.horasTrabalhadas + horas);
    }
}