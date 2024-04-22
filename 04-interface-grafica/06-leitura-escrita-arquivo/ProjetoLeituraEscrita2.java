package com.mycompany.projetoleituraescrita2;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;

// Aula de 06/03/2024 - Troca de dados e gravação em disco (BufferedReader, FileReader e FileWriter)

public class ProjetoLeituraEscrita2 {

    public static void main(String[] args) {
        // ESCRITA NO ARQUIVO:
        try{
            FileWriter fw = new FileWriter("arquivo1.txt");
            // Criação de novo FileWriter, como parâmetro a criação de arquivo arquivo1.txt, escritas serão nele
            fw.write("Técnico em Desenvolvimento de Sistemas - SENAC TECH"); // Escreve essa String no arquivo
            
            for(int i = 0; i < 10; i++){
                fw.write("\n" + (i)); // Escreve os números de 0 a 9 usando esse loop de repetição
            }
            
            fw.close(); // Fecha o arquivo depois que terminar de escrever

            } catch(Exception e) {
                System.out.println("ERRO:" + e.getMessage()); // Se algo der errado, trata-se o erro e mostra ao usuário
        }
        
        
        // LEITURA DE ARQUIVO:
        try {
            FileReader fr = new FileReader("arquivo1.txt");
            // Criação de novo FileReader, como parâmetro o arquivo que ele vai ler
            BufferedReader bf = new BufferedReader(fr);
            // Criação de BufferedReader que será usado
            String linha = bf.readLine();
            // A leitura da primeira linha pelo BufferedReader ("Técnico em...") é salva no atributo linha
            System.out.println(linha); // O atributo linha ("Técnico em...") é mostrado no console

            while(linha != null) {
                System.out.println(linha);
                linha = bf.readLine();
                // Enquanto linha não for nulo (tiver "Técnico em..." ou números) ele vai continuar mostrando a linha e lendo a próxima linha.
                // Quando os números acabarem (for nulo), parará de fazer isso.
            }
            
            } catch(Exception e) {
                System.out.println("ERRO:" + e.getMessage());
        }  
    }
}
