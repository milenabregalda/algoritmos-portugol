package com.example.model;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

public class Apostila {

	private String nome;

	private Curso curso;

	private int numeroPaginas;

	public Apostila() {
	}

	public Apostila(String nome, Curso curso, int numeroPaginas) {
		this.nome = nome;
		this.curso = curso;
		this.numeroPaginas = numeroPaginas;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public int getNumeroPaginas() {
		return numeroPaginas;
	}

	public void setNumeroPaginas(int numeroPaginas) {
		this.numeroPaginas = numeroPaginas;
	}

	@Override
	public String toString() {
		return "Apostila [nome=" + nome + ", curso=" + curso + ", numeroPaginas=" + numeroPaginas + "]";
	}

}
