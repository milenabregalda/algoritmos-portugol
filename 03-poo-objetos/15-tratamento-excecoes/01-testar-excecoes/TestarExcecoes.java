package com.mycompany.testarexcecoes;
import java.util.Scanner;
import java.util.InputMismatchException;

// Aula de 24/10/2023 - Tratamento de erros

public class TestarExcecoes {
    
    public static void main(String[] args) {
        
        try { // Testa esse bloco de código procurando por erros
            int vetor[] = new int[4];
            System.out.println("Antes da exception.");
            vetor[4] = 1; // Erro está aqui, vetor de 0 a 3
            System.out.println("Esse texto não será impresso.");
        } 
        catch(ArrayIndexOutOfBoundsException e1) {
            System.out.println("Erro: posição do vetor não existe.");
            // Quando execução foi para linha do vetor e encontrou o erro,
            // pulou daquele bloco de código e veio para cá
        } 
        
        System.out.println("\n-------------------------------------------\n");
        
        Scanner ler = new Scanner(System.in);
        int n1, n2, r;
        boolean erro;

        do {
            erro = false;
            try {
                System.out.print("Informe um número inteiro: ");
                n1 = ler.nextInt();
                System.out.print("Informe outro número inteiro: ");
                n2 = ler.nextInt();
                r = dividir(n1, n2);
                System.out.println("Resultado: " + r);
            } catch(ArithmeticException ae) {
                erro = true;
                System.err.println("Impossível dividir por zero.\n");
            } catch(InputMismatchException ime) {
                erro = true;
                System.err.println("Valor inválido!\n");
                ler.nextLine();
            }
        } while (erro);
        
        System.out.println("\n-------------------------------------------\n");
        
        int[] numero = {4, 8, 16, 32, 64, 128};
        int[] denom = {2, 0, 4, 8, 0};
        
        for (int i = 0; i < numero.length; i++) {
            try {
                System.out.println(numero [i] + "/" + denom[i] + " = " + (numero[i]/denom[i]));
            }
//            catch(ArithmeticException e) {
//                System.out.println("Erro ao dividir por zero!\n");
//            }
            catch(Exception e) { // Tratamento genérico de erros
//                // Usar Exception e não Throwable
//                System.out.println("Aconteceu um erro.");
//                System.out.println(e); // Mostra o erro específico que aconteceu para o usuário

                System.out.println(e.getMessage()); // retorna a descrição do erro (é curta)
                
                e.printStackTrace(); // imprime o stack trace do erro (informação completa e longa)
                // não deixar visível ao usuário por questão de segurança
            }
        }
        
        System.out.println("\n-------------------------------------------\n");
        
        System.out.print("Entre com um número decimal: ");
        try {
            double num = lerNumero();
            // throws: método lerNumero passa Exception
            System.out.println("Você digitou " + num);
        } catch (Exception e) {
            System.out.println("Entrada inválida.");
            e.printStackTrace();
        }
        
        System.out.println("\n-------------------------------------------\n");
        try {
            testarNovaExcecao(); // método testarNovaExcecao passa a DivisaoNaoExata
        } catch (DivisaoNaoExata e) {
            e.printStackTrace();
        }
    }
    
    public static int dividir (int numero1, int numero2) {
        return numero1/numero2;
    }
    
    public static double lerNumero() throws Exception {
        Scanner scan = new Scanner(System.in);
        double num = scan.nextDouble();
        return num;
    }
    
    public static void testarNovaExcecao() throws DivisaoNaoExata{
        int[] numeros = {4, 8, 5, 16, 32, 21, 64, 128};
        int[] denom = {2, 0, 4, 8, 0, 2, 4};

        for (int i = 0; i < numeros.length; i++){
            try {
                if (numeros[i] % 2 != 0){ // sempre que número for ímpar (condição da Exception)
//                    throw new Exception("Número ímpar, divisão não exata.");
                    throw new DivisaoNaoExata(numeros[i], denom[i]);
                    // ela é lançada aqui, números passados para informar usuário
                }
                System.out.println(numeros[i] + "/" + denom[i] + " = " + (numeros[i]/denom[i]));
            }
            catch(ArithmeticException | ArrayIndexOutOfBoundsException e){
                // duas exceções podem executar o mesmo bloco de código
                System.out.println("Aconteceu um erro.");
                e.printStackTrace();
            }
//            catch(Exception e) {
//            // isso e throw new Exception, mas criar DivisaoNaoExata é melhor
//                System.out.println("Aconteceu um erro.");
//                e.getMessage();
//            }
        }
    }  
}