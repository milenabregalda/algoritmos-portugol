package com.mycompany.corretora;
import java.util.ArrayList;
import java.util.Scanner;

// Aula 18/10/2023 - Exercício 1

public class Corretora {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        ArrayList<Imovel> cadastro = new ArrayList();
        int escolha;
        String endereco = "", tipo;
        float valor = 0, areaTotal = 0, areaConstruida = 0, areaPrivativa;
        
        do {            
            System.out.println("\nMenu");
            System.out.println("1 - Cadastrar casa");
            System.out.println("2 - Cadastrar apartamento");
            System.out.println("3 - Cadastrar terreno");
            System.out.println("4 - Listar imóveis");
            System.out.println("0 - Sair");
            escolha = ler.nextInt();
            
            // Para não repetir código (resolução do professor):
            if (escolha >= 1 && escolha <= 3) {
                System.out.print("\nInforme o valor: ");
                valor = ler.nextFloat();
                System.out.print("Informe o endereço: ");
                ler.nextLine();
                endereco = ler.nextLine();
                System.out.print("Informe a área total: ");
                areaTotal = ler.nextFloat();
            }
            
            switch (escolha) {
                case 1:
                    System.out.print("Informe a área construída: ");
                    areaConstruida = ler.nextFloat();
                    Imovel casa = new Casa(areaConstruida, valor, endereco, areaTotal);
                    // Polimorfismo
                    cadastro.add(casa);
                    System.out.println("\nCadastro concluído com sucesso!");
                    break;
                    
                case 2:
                    System.out.print("Informe a área privativa: ");
                    areaPrivativa = ler.nextFloat();
                    Imovel apto = new Apto(areaPrivativa, valor, endereco, areaTotal);
                    cadastro.add(apto);
                    System.out.println("\nCadastro concluído com sucesso!");
                    break;
                    
                case 3:
                    do {
                        System.out.print("Informe o tipo do terreno (urbano ou rural): ");
                        tipo = ler.next();
                        tipo = tipo.toUpperCase();
                        if (!tipo.equals("RURAL") && !tipo.equals("URBANO"))
                        System.out.println("\nTipo inválido. Tente novamente.\n");
                    } while (!tipo.equals("RURAL") && !tipo.equals("URBANO"));
                    
                    Imovel terreno = new Terreno(tipo, valor, endereco, areaTotal);
                    cadastro.add(terreno);
                    System.out.println("\nCadastro concluído com sucesso!");
                    break;
                    
                case 4:
                    System.out.println("\nImóveis:");
                    if(cadastro.isEmpty()) System.out.println("Nenhum cadastro!");
                    else {
                        for (Imovel i: cadastro) {
                            i.exibirDetalhes();
                        }
                    }
                    break;
                    
                case 0:
                    System.out.println("\nMenu encerrado.");
                    break;
                    
                default:
                    System.out.println("\nOpção inválida.");
            }
        } while (escolha != 0);
    }
}