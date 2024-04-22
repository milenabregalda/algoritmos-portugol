package com.mycompany.curriculo2;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;

// Milena Bregalda
// Trabalho de 29/02/2024 até 08/03/2024 - Currículo (JFrame Form + Tabbed Pane)

class Arquivo {
    
    private String dadosCompletos = "";

    public void gravar(String dados) {
        try{
            FileWriter fw = new FileWriter("curriculoDados.txt");
            fw.write(dados);  
            fw.close();

        } catch(Exception e) {
            System.out.println("ERRO:" + e.getMessage());
        }
    }

    public String ler() {            
        try {
            dadosCompletos = "";
            FileReader fr = new FileReader("curriculoDados.txt");
            BufferedReader bf = new BufferedReader(fr);
            String linha = "";

            while(linha != null) {
                dadosCompletos += linha + "\n";
                linha = bf.readLine();
            }

        } catch(Exception e) {
            System.out.println("ERRO:" + e.getMessage());
        }

        return dadosCompletos;
    }
}
