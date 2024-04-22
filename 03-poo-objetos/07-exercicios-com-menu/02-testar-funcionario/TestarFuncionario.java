package com.mycompany.testarfuncionario;
import java.util.Scanner;

// Aula de 27/09/2023 - Exercício 2
// Aula de 28/09/2023 - Acrescentar menu

public class TestarFuncionario {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Funcionario funcionario1 = new Funcionario();
                
        int menu, horas;
        float valor;
        String nomes;

        do {            
            System.out.println("\nEscolha uma das opções abaixo:");
            System.out.println("1 - Cadastrar funcionário");
            System.out.println("2 - Mostrar nome completo");
            System.out.println("3 - Calcular salário");
            System.out.println("4 - Incrementar horas");
            System.out.println("0 - Sair");
            menu = ler.nextInt();
            System.out.println("\n");
            
            switch (menu) {
                case 1:
                    System.out.print("Informe o nome do funcionário: ");
                    nomes = ler.next();
                    
                    funcionario1.nome = nomes;
                    
                    System.out.print("Informe o sobrenome do funcionário: ");
                    nomes = ler.next();
                    funcionario1.sobrenome = nomes;
                    
                    do {                        
                        System.out.print("Informe as horas trabalhadas: ");
                        horas = ler.nextInt();
                        if (horas <= 0) System.out.println("Valor de horas inválido.");
                    } while (horas <= 0);
                    funcionario1.horasTrabalhadas = horas;
                    
                    do {                        
                        System.out.print("Informe o valor por hora: ");
                        valor = ler.nextFloat();
                        if (horas <= 0) System.out.println("Valor inválido.");
                    } while (horas <= 0);
                    funcionario1.valorPorHora = valor;
                    break;
                    
                case 2:
                    System.out.println("Nome completo do funcionário: " + funcionario1.nomeCompleto());
                    break;
                    
                case 3:
                    System.out.println("O funcionário ganha R$ " + funcionario1.valorPorHora + " por hora.");
                    System.out.println("O funcionário está trabalhando " + funcionario1.horasTrabalhadas + " horas.");
                    System.out.println("Salário do funcionário: R$ " + funcionario1.calcularSalario());
                    break;
                    
                case 4:
                    do {                        
                        System.out.print("Informe quantas horas a mais o funcionário está trabalhando: ");
                        horas = ler.nextInt();
                        if (horas <= 0) System.out.println("Valor de horas inválido.");
                    } while (horas <= 0);
                    funcionario1.horasTrabalhadas = funcionario1.incrementarHoras(horas);
                    System.out.println("Horas incrementadas!");
                    System.out.println("O funcionário está trabalhando " + funcionario1.horasTrabalhadas + " horas.");
                    break;
                    
                case 0:
                    break;
                    
                default:
                    System.out.println("Opção inválida.");
            }
        } while (menu != 0);
    }
}