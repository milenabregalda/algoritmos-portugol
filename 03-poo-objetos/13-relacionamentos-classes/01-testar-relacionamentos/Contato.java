package com.mycompany.testarrelacionamentos;

public class Contato {

    private String nome;
    private Endereco endereco;
    // Relacionamento 1:1: Instanciar como atributo, o tipo é o nome da outra classe
    private Telefone[] telefones;
    // Relacionamento 1:N: Instanciar Array ou ArrayList (qtd definida x dinâmica)

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
            this.nome = nome;
    }

    public Endereco getEndereco() {
            return endereco;
    }

    public void setEndereco(Endereco endereco) {
            this.endereco = endereco;
    }

    public Telefone[] getTelefones() {
            return telefones;
    }

    public void setTelefones(Telefone[] telefones) {
            this.telefones = telefones;
    }
}
