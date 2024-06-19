package com.example.controller;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

// Parte da Milena

import com.example.model.Curso;
import com.example.model.Pessoa;
import com.example.model.Slide;
import com.example.model.Apostila;
import java.util.List;

public class CursoController {
    private Curso curso;

    public void criarCurso(String nome, Pessoa responsavel, List<Slide> slides, List<Apostila> apostilas) {
        curso = new Curso(nome, responsavel, slides, apostilas);
        // FUTURA implementação para gravar em um banco de dados ou realizar outras operações necessárias.
    }

    public Curso getCurso() {
        return curso;
    }
}
