package com.mycompany.testarautomovel;
import java.util.Scanner;

// Aula de 25/09/2023 - Começo de Programação Orientada a Objetos

public class TestarAutomovel {
    
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        Automovel c1 = new Automovel(); // cria o objeto c1 a partir da classe Automovel

        // Especificando valores de atributos:
        c1.cor = "Branco";
        c1.marca = "Peugeot";
        c1.modelo = "3008 GP";
        c1.velocidade = 0;
        
        Automovel c2 = new Automovel();
        c2.cor = "Preto";
        c2.marca = "Volkswagen";
        c2.modelo = "Golf";
        c2.velocidade = 120;
        
        System.out.print("Informe o quanto você quer acelerar o 3008: ");
        int vel = ler.nextInt();
        System.out.println();
        c1.acelerar(vel);
        
        System.out.println("Velocidade original depois de acelerar: " + c1.velocidade + " Km/h");
        
        //Jeito 1 de usar retorno para reduzir
        int auxV = c1.reduzir(30);
        c1.reduzir (50); // a linha que chama é a mesma que recebe
        System.out.println("Velocidade auX: " + auxV + " Km/h");
        System.out.println("Velocidade velocidade: " + c1.velocidade + " Km/h");
        // atributo velocidade não muda a não ser que eu atribua diretamente a ele
        
        // Jeito 2
        System.out.println("Velocidade função diretamente: " + c1.reduzir(10) + " Km/h");
        System.out.println("Velocidade velocidade: " + c1.velocidade + " Km/h");
        
        System.out.print("Informe o quanto você quer acelerar o Golf: ");
        vel = ler.nextInt();
        c2.acelerar(vel);

        System.out.println("Marca do carro: " + c1.marca);
        System.out.println("Modelo do carro: " + c1.modelo);
        System.out.println("Cor do carro: " + c1.cor);
        System.out.println("Velocidade: " + c1.velocidade + " Km/h");
        c1.buzinar(); // chama o método buzinar do objeto c1

        
        System.out.println("\n**************************\n");
        
        System.out.println("Marca do carro: " + c2.marca);
        System.out.println("Modelo do carro: " + c2.modelo);
        System.out.println("Cor do carro: " + c2.cor);
        System.out.println("Velocidade: " + c2.velocidade + " Km/h");
        c2.buzinar();
    }
}