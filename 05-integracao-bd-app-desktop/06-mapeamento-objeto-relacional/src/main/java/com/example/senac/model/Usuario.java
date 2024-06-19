package com.example.senac.model;
import javax.persistence.*; // Colocar * para importar todas as classes de persistence

// Aula de 30/04/2024 - Mapeamento objeto-relacional (que funcionou para usar como modelo para próximos projetos)

@Entity // Para mapear + escolher importação de persistence
@Table(name = "usuarios") // Colocar nome da tabela

public class Usuario {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    // Colocar o Id também igual a Entity e gerar id automaticamente

    private long id;
    private String nome;
    private String email;
    private String senha;

    // Construtores, getters e setters
    public Usuario() {
    }

    public Usuario(String nome, String email, String senha) {
        this.nome = nome;
        this.email = email;
        this.senha = senha;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
