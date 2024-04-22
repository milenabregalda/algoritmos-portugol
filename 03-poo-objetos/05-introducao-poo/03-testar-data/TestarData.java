package com.mycompany.testardata;
import java.util.Scanner;

// Aula POO 25/09/2023 - Exercício 3 dos slides

public class TestarData {

    public static void main(String[] args) {
        Data d1 = new Data();
        
        /* Para aprendizado fica assim, mas manipulação de datas funciona de forma diferente:
        d1.dia = 26;
        d1.mes = 9;
        d1.ano = 2023;
        
        d1.escreverAData();
        d1.escreverOMes();
        
        d1.mes = 10;
        
        d1.escreverAData();
        d1.escreverOMes(); */
        
      /* Nova parte do exercício:
         Fazer que o usuário digite datas com comando de repetição de 5x.
         Não deixar usuário colocar 0 ou números negativos, mês até 12 e dia até 31.
         Tirar default de método escreverOMes. */
      
        Scanner input = new Scanner(System.in);
        int i;
        
        for (i = 1; i <= 5; i++) {
            System.out.println("\n-------------------\n");
            System.out.println("Data " + i + ": ");
            do {
                System.out.print("Informe o dia: ");
                d1.dia = input.nextInt();
                if (d1.dia < 1 || d1.dia > 31) System.out.println("Dia inválido. Informe novamente.");
            } while (d1.dia < 1 || d1.dia > 31);
            
            do {
                System.out.print("\nInforme o mês: ");
                d1.mes = input.nextInt();
                if (d1.mes < 1 || d1.mes > 12) System.out.println("Mês inválido. Informe novamente.");
            } while (d1.mes < 1 || d1.mes > 12);
            
            do {
                System.out.print("\nInforme o ano: ");
                d1.ano = input.nextInt();
                if (d1.ano < 1) System.out.println("Ano inválido. Informe novamente.");
            } while (d1.ano < 1);
            
            System.out.println();
        
            // Alternativa do professor:
            // No método escreverAData, criar boolean erro e um if else para dia, mês e ano.
            // Se valor de usuário é inválido, erro vira verdadeiro.
            // Se erro for falso a data é mostrada, senão aparece mensagem de erro ao usuário.

            d1.escreverAData();
            d1.escreverOMes();
        }
    }
}