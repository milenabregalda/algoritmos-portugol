package com.example.model;

// Trabalho em dupla - Laís Barbizan e Milena Bregalda
// Faculdade MVC - de 11/04/2024 até 16/04/2024

public class Usuario extends Pessoa {

	private String nomeUsuario;

	private String senha;

	private PerfilAcesso perfilAcesso;

	public Usuario() {
	}

	public Usuario(String nomeUsuario, String senha, PerfilAcesso perfilAcesso) {
		this.nomeUsuario = nomeUsuario;
		this.senha = senha;
		this.perfilAcesso = perfilAcesso;
	}

	public Usuario(String nome, String email, TipoPessoa tipoPessoa, String nomeUsuario, String senha,
			PerfilAcesso perfilAcesso) {
		super(nome, email, tipoPessoa);
		this.nomeUsuario = nomeUsuario;
		this.senha = senha;
		this.perfilAcesso = perfilAcesso;
	}

	public String getNomeUsuario() {
		return nomeUsuario;
	}

	public void setNomeUsuario(String nomeUsuario) {
		this.nomeUsuario = nomeUsuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public PerfilAcesso getPerfilAcesso() {
		return perfilAcesso;
	}

	public void setPerfilAcesso(PerfilAcesso perfilAcesso) {
		this.perfilAcesso = perfilAcesso;
	}

    @Override
    public String toString() {
        return "Usuario [nomeUsuario=" + nomeUsuario + ", senha=" + senha + ", perfilAcesso=" + perfilAcesso + "]";
    }

}
