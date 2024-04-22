package com.mycompany.contas;
import java.util.Scanner;

// Aula de 09/10/2023 - Exercício 1

public class Contas {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        float valor;
        
        ContaPoupanca cp1 = new ContaPoupanca(28, "Amanda Santos", 12345, 2000.0f);
        System.out.println(cp1.dados());
        
        System.out.print("Quanto deseja sacar? ");
        valor = input.nextFloat();
        cp1.sacar(valor);
        
        System.out.print("\nQuanto deseja depositar? ");
        valor = input.nextFloat();
        cp1.depositar(valor);
        
        System.out.print("\nQual é a taxa de rendimento atual? ");
        valor = input.nextFloat();
        cp1.setSaldo(cp1.calcularNovoSaldo(valor));
        System.out.println("Novo saldo da conta poupança: R$ " + cp1.getSaldo());
        
        System.out.println(cp1.dados());
        
        ContaEspecial ce1 = new ContaEspecial(500f, "Renata Pinheiro", 23456, 1000f);
        System.out.println(ce1.dados());
        
        System.out.print("Quanto deseja sacar? ");
        valor = input.nextFloat();
        ce1.sacar(valor);
        
        System.out.print("\nQuanto deseja depositar? ");
        valor = input.nextFloat();
        ce1.depositar(valor);
        
        System.out.println(ce1.dados());
    }
}