package com.mycompany.testarmotor;

// Aula de 04/10/2023 - exercício 3

public class TestarMotor {

    public static void main(String[] args) {
        Motor m1 = new Motor(20);
        System.out.println("Potência do motor: " + m1.getPotencia());
        System.out.println("----------------------------------");
        Motor m2 = new Motor(70);
        System.out.println("Potência do motor: " + m2.getPotencia());
        System.out.println("----------------------------------");
        Motor m3 = new Motor(-1);
        System.out.println("Potência do motor: " + m3.getPotencia());
        System.out.println("----------------------------------");
        Motor m4 = new Motor(200);
        System.out.println("Potência do motor: " + m4.getPotencia());
    }
}