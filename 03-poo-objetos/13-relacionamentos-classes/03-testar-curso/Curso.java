package com.mycompany.testarcurso;

// Aula de 16/10/2023 - Exercício 2:

public class Curso {
    
    private String nome;
    private String horario;
    private Professor professor;
    private Aluno[] alunos;

    public Curso(String nome, String horario) {
        this.nome = nome;
        this.horario = horario;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public Professor getProfessor() {
        return professor;
    }

    public void setProfessor(Professor professor) {
        this.professor = professor;
    }

    public Aluno[] getAlunos() {
        return alunos;
    }

    public void setAlunos(Aluno[] alunos) {
        this.alunos = alunos;
    }
    
    public String gerarInfos() {
        String info = ("\n\n------------------------------------\n");
        info += ("Curso\n");
        info += ("\nNome: " + this.getNome());
        if (this.professor != null) {
            info += (professor.gerarInfos());
        }
        
        info += ("\n\n------------------------------------\n");
        info += ("Alunos\n");
        if (this.alunos != null) {
            for (Aluno aluno : this.alunos) {
                info += (aluno.gerarInfos());
            }
        }
        info += ("\nMédia da turma: " + calcularMediaTurma());
        info += ("\n------------------------------------\n");
        return info;
    }
    
    public double calcularMediaTurma() {
        double soma = 0;
        for (Aluno aluno : this.alunos) {
            if (aluno != null) {
                soma += aluno.calcularMediaAluno();
            }
        }
        return (soma / alunos.length); // dividido por qtd de alunos
    }
}