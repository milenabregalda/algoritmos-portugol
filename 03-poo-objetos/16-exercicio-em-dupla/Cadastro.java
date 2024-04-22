package com.mycompany.cadastro;
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;

// Aula de 25/10/23 - Exercício em dupla (versão corrigida)

public class Cadastro {

    public static void main(String[] args) {
        int menu, tipoPessoa, idade, resposta;
        // poderia usar tipoPessoa para resposta, mas seguindo prof
        String nome, cpf, cnpj;
        Scanner ler = new Scanner(System.in);
        ArrayList<Pessoa> pessoas = new ArrayList();
        Pessoa auxP;
        
        do {
            System.out.println("\n1) Cadastrar Pessoa");
            System.out.println("2) Buscar Pessoa");
            System.out.println("3) Incrementar Idade");
            System.out.println("4) Excluir Pessoa");
            System.out.println("5) Listar Pessoa");
            System.out.println("6) Listar Pessoas de Idade (X)");
            System.out.println("7) Sair");
            
            try {
                menu = ler.nextInt();
            } catch(InputMismatchException ex) {
                System.err.println("\nErro: Número inválido!");
                ler.nextLine();
                menu = 0;
            }
            System.out.println();
            
            switch(menu) {
                case 1:
                    System.out.print("Informe o tipo de pessoa: 1 - PF, 2 - PJ ");
                    try {
                        tipoPessoa = ler.nextInt();
                    } catch(InputMismatchException ex) {
                        System.err.println("Erro: Número inválido!");
                        ler.nextLine();
                        break;
                    }
                    
                    System.out.print("Informe o nome: ");
                    ler.nextLine(); // sempre depois de int
                    nome = ler.nextLine();
                    
                    System.out.print("Informe a idade: ");
                    try {
                        idade = ler.nextInt();
                    } catch(InputMismatchException ex) {
                        System.err.println("Erro: Número inválido!");
                        ler.nextLine();
                        break;
                    }
                    
                    if(tipoPessoa == 1) {
                        System.out.print("Deseja cadastrar o CPF? 1 - Sim ");
                        try {
                            resposta = ler.nextInt();
                        } catch(InputMismatchException ex) {
                            System.err.println("Erro: Número inválido!");
                            ler.nextLine();
                            break;
                        }
                        
                        if (resposta == 1) {
                            System.out.print("Informe o CPF: ");
                            ler.nextLine();
                            cpf = ler.nextLine();
                            Pessoa pf = new PF(cpf, nome, idade);
                            pessoas.add(pf);
                        } else {
                            Pessoa pf = new PF(nome, idade);
                            pessoas.add(pf);
                        }
                    }
                    
                    if(tipoPessoa == 2) {
                        System.out.print("Deseja cadastrar o CNPJ? 1 - Sim ");
                        try {
                            resposta = ler.nextInt();
                        } catch(InputMismatchException ex) {
                            System.err.println("Erro: Número inválido!");
                            ler.nextLine();
                            break;
                        }
                        
                        if (resposta == 1) {
                            System.out.print("Informe o CNPJ: ");
                            ler.nextLine();
                            cnpj = ler.nextLine();
                            Pessoa pj = new PJ(cnpj, nome, idade);
                            pessoas.add(pj);
                        } else {
                            Pessoa pj = new PJ(nome, idade);
                            pessoas.add(pj);
                        }
                    }
                    System.out.println("Pessoa cadastrada com sucesso!");                    
                    break;
                    
                case 2:
                    if(pessoas.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.print("Informe o nome procurado: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        auxP = Pessoa.buscarPorNome(pessoas, nome);
                        if(auxP == null) System.err.println("Pessoa não cadastrada!");
                        else {
                            System.out.println("\nDados da pessoa:");
                            auxP.dados();
                        }
                    }
                    break;
                
                case 3:
                    if(pessoas.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.print("Informe o nome procurado: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        auxP = Pessoa.buscarPorNome(pessoas, nome);
                        // fazer busca em método e retornar valor(es) para objeto
                        if(auxP == null) System.err.println("Pessoa não cadastrada!");
                        else {
                            if(auxP instanceof PF) {
                                ((PF) auxP).fazerAniversario();
                                // conversão de auxP para tratar de tipo Pessoa para PF
                            } else {
                                System.out.print("Informe quantos anos deseja incrementar: ");                                
                                try {
                                    idade = ler.nextInt();
                                } catch(InputMismatchException ex) {
                                    System.err.println("Erro: Número inválido!");
                                    ler.nextLine();
                                    break;
                                }
                                ((PJ) auxP).fazerAniversario(idade);
                            }
                            System.out.println("Idade atualizada.");
                        }
                    }   
                    break;
                    
                case 4:
                    if(pessoas.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {  
                        System.out.print("Informe o nome procurado: ");
                        ler.nextLine();
                        nome = ler.nextLine();
                        auxP = Pessoa.buscarPorNome(pessoas, nome);
                        if(auxP == null) System.err.println("Pessoa não cadastrada!");
                        else {
                            pessoas.remove(auxP);
                            System.out.println("Pessoa excluída com sucesso.");
                        }
                    }
                    break;
                    
                case 5:
                    if(pessoas.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.println("Pessoas cadastradas:\n");
                        for (Pessoa p: pessoas) {
                            p.dados();
                        }  
                    }
                    break;
                    
                case 6:
                    if (pessoas.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        System.out.print("Informe a idade: ");
                        try {
                            idade = ler.nextInt();
                        } catch(InputMismatchException ex) {
                            System.err.println("Erro: Número inválido!");
                            ler.nextLine();
                            break;
                        }
                        
                        System.out.println();
                        for (Pessoa p : pessoas) {
                            if (p.getIdade() == (idade)) {
                                p.dados();
                            }
                        }
                    }
                    break;
                    
                case 7:
                    System.out.println("O programa será encerrado.");
                    break;
                    
                default:
                    System.out.println("Opção inválida.");
                  
            }
            
        } while (menu != 7);
        
        ler.close();
    }
}