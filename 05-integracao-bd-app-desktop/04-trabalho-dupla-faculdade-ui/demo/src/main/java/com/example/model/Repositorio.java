package com.example.model;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

public class Repositorio {

	private Pessoa resonsavel;

	private String localizacao;

	private Arquivos arquivos;

	public Repositorio() {
	}

	public Repositorio(Pessoa resonsavel, String localizacao, Arquivos arquivos) {
		this.resonsavel = resonsavel;
		this.localizacao = localizacao;
		this.arquivos = arquivos;
	}

	public Pessoa getResonsavel() {
		return resonsavel;
	}

	public void setResonsavel(Pessoa resonsavel) {
		this.resonsavel = resonsavel;
	}

	public String getLocalizacao() {
		return localizacao;
	}

	public void setLocalizacao(String localizacao) {
		this.localizacao = localizacao;
	}

	public Arquivos getArquivos() {
		return arquivos;
	}

	public void setArquivos(Arquivos arquivos) {
		this.arquivos = arquivos;
	}

    @Override
    public String toString() {
        return "Repositorio [resonsavel=" + resonsavel + ", localizacao=" + localizacao + ", arquivos=" + arquivos
                + "]";
    }

}
