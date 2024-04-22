package com.mycompany.testarcurso;

// Aula de 16/10/2023 - Exercício 2:

public class Aluno {
    
    private String nome;
    private String matricula;
    private double[] notas;

    public Aluno(String nome, String matricula, double[] notas) {
        this.nome = nome;
        this.matricula = matricula;
        this.notas = notas;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public double[] getNotas() {
        return notas;
    }

    public void setNotas(double[] notas) {
        this.notas = notas;
    }
   
    public String gerarInfos() {
        double media = calcularMediaAluno();
        // método usado 2x, melhor passar para variável
        
        String info = ("\nNome: " + this.getNome());
        info += ("\nMatricula: " + this.getMatricula());
        info += ("\nNotas:");
        
        for (double nota : this.notas) {
            info += (" | " + nota);
        }
        info += (" |");
        info += ("\nMédia: " + media);
        info += ("\nSituação: ");
        if (media >= 7) info += ("APROVADO\n");
        else info += ("REPROVADO\n");
        return info;
    }
    
    public double calcularMediaAluno() {
        final int CONT_NOTAS = 4; // só é usada aqui, instanciar aqui
        double soma = 0;
        for (double nota : this.notas) {
            soma += nota;
        }
        return (soma / CONT_NOTAS); // constante pega direto, sem get
    }
}