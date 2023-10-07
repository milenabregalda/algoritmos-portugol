package com.mycompany.testaranimais;

// Aula de 06/10/2023 - Exercício 1 (de herança)

public class TestarAnimais {

    public static void main(String[] args) {
        Mamifero camelo = new Mamifero("Camelo", 150.0, 4, "Amarelo", "Terra", 2.0, "Leite");
        Peixe tubarao = new Peixe("Tubarão", 300.0, 0, "Cinzento", "Mar", 1.5, "Barbatanas e cauda");
        Mamifero ursocanada = new Mamifero("Urso-do-canadá", 180.0, 4, "Vermelho", "Terra", 0.5, "Mel");
        
        camelo.dados();
        tubarao.dados();
        ursocanada.dados();
    }
}