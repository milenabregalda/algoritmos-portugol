package com.mycompany.aula180923;

public class Aula180923 {

    public static void main(String[] args) {
        
        /* Exercício 1 - Frase na tela - Implemente um programa que
        escreve na tela a frase "O primeiro programa a gente nunca esquece!". */
        System.out.println("\nO primeiro programa a gente nunca esquece! :D\n\n");
        
        
        /* Exercício 2 - Etiqueta - Elabore um programa que escreve seu nome completo
        na primeira linha, seu endereço na segunda, e o CEP e telefone na terceira. */
        System.out.println("Nome: Milena Fontana Bregalda");
        System.out.println("Endereço: Rua da Riqueza, 10000000");
        System.out.println("CEP: 12345-678");
        System.out.println("Telefone: (51) 912345678\n");
        
        
        /* Exercício 3 - Implemente um programa que desenhe um quadrado na tela */
        int i, j, k = 10; //k é altura e largura
        char simbolo = 'M';
        System.out.println();
        
        for(i = 0; i < k; i++) {
            for (j = 0; j < k; j++) {
                if (i == 0 || j == 0 || i == k - 1 || j == k - 1) {
                    System.out.print(simbolo);
                } else {
                    System.out.print(" ");
        }   
                System.out.print(" ");
            }
            System.out.print("\n");
        }
        System.out.println("\n");
        
        
        /* Exercício 4 - Implemente um programa que desenhe um "pinheiro" na tela */
        int altura = 10;
        int espaco = altura - 1;
        simbolo = '*';
        
        for (i = 1; i <= altura; i++) {
            for (j = 1; j <= espaco; j++) {
                System.out.print(" ");
            }
            for (k = 1; k <= (2 * i - 1); k++) {
                System.out.print(simbolo);
            }
            espaco--;
            System.out.println();
        }
        System.out.printf("%" + altura + "s\n", "|"); //print f para formatar
    
        
        /* Exercício 5 Tabela de notas - Escreva um programa que produza a seguinte saída na tela */
        System.out.println("ALUNO(A)         Nota");
        System.out.println("=========        ====");
        System.out.println("ALINE             9.0\nMÁRIO             DEZ\nSÉRGIO            4.5\nSHIRLEY           7.0");
    }
}
