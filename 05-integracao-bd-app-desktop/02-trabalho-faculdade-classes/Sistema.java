package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class Sistema {
    private String nome;
    private String descricao;
    
    public Sistema() {
    }

    public Sistema(String nome, String descricao) {
        this.nome = nome;
        this.descricao = descricao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
