package com.mycompany.testarcontacorrente;
import java.util.Scanner;

// Aula de 27/09/2023 - Exercício 1
// Aula de 28/09/2023 - Menu 1 criar conta (definirSaldoInicial), 2 depositar (depositar),
// 3 sacar (sacar), 4 saldo da conta, 5 sair com leitura do usuário. Não permitir valores negativos ou 0.

public class TestarContaCorrente {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        ContaCorrente conta1 = new ContaCorrente();
        // Professor preferiu que ficasse aqui
        
        int menu;
        float valor = 0;

        do {
        // com do while menu (variável de escolha) é diferente de 0, não precisa de boolean menu
            System.out.println("\nEscolha uma das opções abaixo:");
            System.out.println("1 - Criar conta");
            System.out.println("2 - Depositar");
            System.out.println("3 - Sacar");
            System.out.println("4 - Saldo da conta");
            System.out.println("0 - Sair");
            menu = ler.nextInt();
            System.out.println("\n");
            
            switch (menu) {
                case 1:
                    do {                        
                        System.out.print("Informe o valor para o depósito inicial: ");
                        valor = ler.nextFloat();
                        if (valor <= 0) System.out.println("Valor inválido.");
                    } while (valor <= 0);
                    conta1.definirSaldoInicial(valor);
                    System.out.println("Conta criada!");
                    break;
                case 2:
                    do {                        
                        System.out.print("Informe o valor para o depósito: ");
                        valor = ler.nextFloat();
                        if (valor <= 0) System.out.println("Valor inválido.");
                    } while (valor <= 0);
                    conta1.depositar(valor);
                    System.out.println("Depósito realizado!");
                    break;
                case 3:
                    do {                        
                        System.out.print("Informe o valor para o saque: ");
                        valor = ler.nextFloat();
                        if (valor <= 0) System.out.println("Valor inválido.");
                    } while (valor <= 0);
                    if (conta1.sacar(valor)) System.out.println("Saque realizado!");
                    else System.out.println("Saldo insuficiente.");
                    break;
                case 4:
                    System.out.println("Saldo em conta: R$ " + conta1.saldo);
                    break;
                case 0: 
                    break; // como a condição é != 0, não precisa de + nada aqui
                default:
                    System.out.println("Opção inválida.");            }
        } while (menu != 0);
        
        /* Código antigo, anotação válida:
           Teste abaixo seria melhor como método em ContaCorrente
           se repetir bastante, mas por enquanto fica assim:
        valor = 500;
        possivelSacar = novaConta.sacar(valor);
        if (possivelSacar) {
            System.out.println("\nSaque de R$ " + valor + " realizado com sucesso.");
            System.out.println("Saldo da conta: R$ " + novaConta.saldo);
        } else {
            System.out.println("\nSaque de R$ " + valor + " não autorizado.");
            System.out.println("Quantidade insuficiente de dinheiro.");
            System.out.println("Saldo da conta: R$ " + novaConta.saldo);
        } */
    }
}