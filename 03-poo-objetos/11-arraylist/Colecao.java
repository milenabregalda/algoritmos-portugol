package com.mycompany.colecao;
import java.util.Scanner;
import java.util.ArrayList; // precisa importar para usar

// Aula de 10/10/2023 - Criação de objetos com ArrayList
// + Aula de 11/10/2023 - Modificações no código

public class Colecao {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        ArrayList<Professor> cadastroP = new ArrayList();
        // criação de ArrayList chamado cadastroP que vai armazenar objetos
        // do tipo Professor, é como um vetor automático que vai alocando novos
        // espaços na memória conforme a criação de novos objetos
        
        ArrayList<Aluno> cadastroA = new ArrayList();
        
        int opcao;
        String nome, endereco;
        int idade;
        double salario, nota1, nota2, nota3;
        
        do {
            System.out.println("\nMenu");
            System.out.println("1 - Cadastrar professor");
            System.out.println("2 - Cadastrar aluno");
            System.out.println("3 - Exibir professores");
            System.out.println("4 - Exibir alunos");
            System.out.println("5 - Editar nome do professor");
            System.out.println("6 - Excluir professor");
            System.out.println("7 - Editar nome do aluno");
            System.out.println("8 - Excluir aluno");
            System.out.println("0 - Sair");
            opcao = ler.nextInt();
            System.out.println();
            
            switch (opcao) {
                case 1:
                    System.out.println("Cadastro de professores:");
                    System.out.print("Informe o nome: ");
                    ler.nextLine();
                    // para limpar leitura e não dar problema
                    // para int e em seguida String
                    nome = ler.nextLine();
                    System.out.print("Informe o endereço: ");
                    endereco = ler.nextLine();
                    System.out.print("Informe a idade: ");
                    idade = ler.nextInt();
                    System.out.print("Informe o salário: ");
                    salario = ler.nextDouble();
                    Professor p1 = new Professor(salario, nome, endereco, idade);
                    // fabricação de objeto
                    // na próxima vez, p1 vai ser reescrito
                    cadastroP.add(p1);
                    // adição à ArrayList cadastroP
                    // na próxima vez, os dois p1 vão existir separados aqui
                    System.out.println("\nCadastro realizado com sucesso!");
                    break;
                    
                case 2:
                    System.out.println("Cadastro de alunos:");
                    System.out.print("Informe o nome: ");
                    ler.nextLine();
                    nome = ler.nextLine();
                    System.out.print("Informe o endereço: ");
                    endereco = ler.nextLine();
                    System.out.print("Informe a idade: ");
                    idade = ler.nextInt();                    
                    System.out.print("Informe a primeira nota: ");
                    nota1 = ler.nextDouble();
                    System.out.print("Informe a segunda nota: ");
                    nota2 = ler.nextDouble();
                    System.out.print("Informe a terceira nota: ");
                    nota3 = ler.nextDouble();
                    Aluno a1 = new Aluno(nota1, nota2, nota3, nome, endereco, idade);
                    cadastroA.add(a1);
                    System.out.println("\nCadastro realizado com sucesso!");
                    break;
                    
                case 3:
                    System.out.println("Professores:");
                    if(cadastroP.isEmpty()) System.out.println("Nenhum cadastro!");
                    // mostra dados percorrendo ArrayList cadastroP:
                    else {
                        for (Professor p: cadastroP) { // p identificador de cadastroP
                            p.dados();
                        }
                    }
                    break;
                    
                case 4:
                    System.out.println("Alunos:");
                    if(cadastroA.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        for (Aluno a: cadastroA) {
                            a.dados();
                        }
                    }
                    break;
                    
                case 5:
                    System.out.println("Editar nome do professor:");
                    if(cadastroP.isEmpty()) System.out.println("Nenhum cadastro!");
                    // se cadastro está vazio, ele nem faz a busca
                    else {
                        System.out.print("Informe o nome atual: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        for (Professor p: cadastroP) {
                            if (p.getNome().equals(nome)) { // String é melhor usar equals
                                System.out.print("Informe o novo nome: ");
                                nome = ler.nextLine();
                                p.setNome(nome);
                                System.out.println("\nNome alterado.");
                                break; // se já encontrou, pode parar a busca
                            }
                        }                    
                    }
                    break;
                    
                case 6:
                    System.out.println("Excluir professor:");
                    if(cadastroP.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.print("Informe o nome do professor: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        for (Professor p: cadastroP) {
                            if (p.getNome().equals(nome)) {
                                cadastroP.remove(p); // deleta objeto
                                System.out.println("Professor excluído.");
                                break;
                            }
                        }                    
                    }
                    break;
                    
                case 7:
                    System.out.println("Editar nome do aluno:");
                    if(cadastroA.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.print("Informe o nome atual: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        for (Aluno a: cadastroA) {
                            if (a.getNome().equals(nome)) {
                                System.out.print("Informe o novo nome: ");
                                nome = ler.nextLine();
                                a.setNome(nome);
                                System.out.println("\nNome alterado.");
                                break;
                            }                                
                        }                    
                    }
                    break;
                    
                case 8:
                    System.out.println("Excluir aluno:");
                    if(cadastroA.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.print("Informe o nome do aluno: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        for (Aluno a: cadastroA) {
                            if (a.getNome().equals(nome)) {
                                cadastroA.remove(a);
                                System.out.println("Aluno excluído.");
                                break;
                            }
                        }                    
                    }
                    break;
        
                case 0:
                    System.out.println("O menu não será mais executado.");
                    break;
                    
                default:
                    System.out.println("Opção inválida.");
            }
        } while (opcao != 0);    
    }
}