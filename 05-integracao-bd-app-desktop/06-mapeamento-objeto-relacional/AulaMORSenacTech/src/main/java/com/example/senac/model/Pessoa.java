package com.example.senac.model;

import javax.persistence.*;

// Aula de 30/04/2024 - Mapeamento objeto-relacional (que funcionou para usar como modelo para próximos projetos)

@Entity
@Table(name = "pessoas") // Nome da tabela, o que eu quiser. Se mudar nome, cria nova tabela.
public class Pessoa {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(name = "nome") // Nomes das colunas
    private String nome;
    
    @Column(name = "idade")
    private int idade;
    
    // Construtores, getters e setters
    public Pessoa() {}

    public Pessoa(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    // Getters e Setters omitidos para brevidade
}

