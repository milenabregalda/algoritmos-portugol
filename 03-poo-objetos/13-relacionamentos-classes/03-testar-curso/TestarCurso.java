package com.mycompany.testarcurso;
import java.util.Scanner;

// Aula de 16/10/2023 - Exercício 2:

// Escreva uma classe para representar um Curso, que tem nome e horário. Cada curso
// tem um Professor, que possui nome, departamento e e-mail. Cada Curso também pode
// ter vários Alunos (tipo Aluno). Cada Aluno tem nome, matrícula e 4 notas. Escreva
// um programa Teste que crie um Curso com 5 alunos, e que peça para o usuário entrar
// com as 4 notas de cada aluno.  Ao final, imprima a média de cada aluno, se o mesmo
// está aprovado (média maior ou igual a 7), e qual é a média da turma.

public class TestarCurso {

    public static void main(String[] args) {
        String nome, horario;
        String departamento, email;
        String matricula;
        int i, j, contAlunos = 5, contNotas = 4;
        
        Scanner ler = new Scanner(System.in);
        
        System.out.println("\n------------------------------------");
        System.out.println("Cadastro do curso\n");
        System.out.print("Informe o nome: ");
        nome = ler.nextLine();
        System.out.print("Informe o horário: ");
        horario = ler.nextLine(); 
        
        Curso curso = new Curso(nome, horario);

        System.out.println("\n------------------------------------");
        System.out.println("Cadastro do professor\n");
        System.out.print("Informe o nome: ");
        nome = ler.nextLine();
        System.out.print("Informe o departamento: ");
        departamento = ler.nextLine();
        System.out.print("Informe o email: ");
        email = ler.nextLine();

        Professor professor = new Professor(nome, departamento, email);
        curso.setProfessor(professor);

        Aluno[] alunos = new Aluno[contAlunos];
        // cadastro com valor definido de 5 alunos

        System.out.print("\n------------------------------------");

        for (i = 0; i < contAlunos; i++) {
            System.out.println("\nCadastro de aluno " + (i + 1) + "/" + contAlunos + ":\n");
            System.out.print("Informe o nome: ");
            nome = ler.nextLine();
            System.out.print("Informe a matrícula: ");
            matricula = ler.nextLine();
            
            double[] notas = new double[contNotas]; // cadastro definido de 4 notas
            
            for (j = 0; j < contNotas; j++) {
                System.out.print("Informe a nota " + (j + 1) + ": ");
                notas[j] = ler.nextDouble();
            }
            
            Aluno aluno = new Aluno(nome, matricula, notas);
            alunos[i] = aluno;
            
            ler.nextLine();
            // Antes a primeira leitura do nome do aluno ia normal e a segunda pulava
            // porque o buffer de leitura do início do loop era ocupado com o que
            // estava no final do loop, limpando o final do loop isso é consertado
        }
        curso.setAlunos(alunos);
        System.out.println(curso.gerarInfos());
    }
}



