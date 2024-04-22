package com.mycompany.testaragenda;
import java.util.ArrayList;

// Aula de 16/10/2023 - Exercício 1

public class Agenda {
    
    private String nome;
    private ArrayList<Contato> contatos;
    // Como atributo do tipo ArrayList, para se comunicar com ArrayList de TestarAgenda

    public Agenda(String nome) {
        this.nome = nome;
    }
    
    public String mostrarInfos() {
        String info = ("\n------------------------------------\n");
        info += ("Nome da agenda: " + this.getNome());
        info += ("\n------------------------------------\n");
        info += ("\nContatos:\n");
        
        if (this.contatos != null) {
            for (Contato c : contatos) {
                info += c.mostrarInfo() + "\n";
            }
        }        
        return info;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public ArrayList<Contato> getContatos() {
        return contatos;
    }

    public void setContatos(ArrayList<Contato> contatos) {
        this.contatos = contatos;
    }
}