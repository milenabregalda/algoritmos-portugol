package com.mycompany.testarcalculadora;
import java.util.Scanner;

// Aula de 04/10/2023 - exercício 2

public class TestarCalculadora {

    public static void main(String[] args) {
        Scanner input = new Scanner (System.in);
        double num1, num2;
        System.out.print("Digite o primeiro número: ");
        num1 = input.nextDouble();
        System.out.print("Digite o segundo número: ");
        num2 = input.nextDouble();
        
        System.out.println("Resultado da soma: " + Calculadora.somar(num1, num2));
        System.out.println("Resultado da subtração: " + Calculadora.subtrair(num1,num2));
        System.out.println("Resultado da multiplicação: " + Calculadora.multiplicar(num1,num2));
        System.out.println("Resultado da divisão: " + Calculadora.dividir(num1,num2));
    }
}
