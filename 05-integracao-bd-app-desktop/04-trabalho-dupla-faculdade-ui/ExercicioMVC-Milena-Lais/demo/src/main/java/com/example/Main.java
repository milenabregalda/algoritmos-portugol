package com.example;

import javax.swing.JFrame;

import com.example.controller.MenuController;
import com.example.view.MenuView;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

public class Main {
    public static void main(String[] args) {
        System.out.println("Esse é o trabalho da Laís e da Milena!");

        MenuController controller = new MenuController();
        MenuView janelaMenu = new MenuView(controller);
        janelaMenu.setSize(400, 300);
        janelaMenu.setVisible(true);
        janelaMenu.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}