package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class Repositorio extends Sistema {
    private Pessoa responsavel;
    private String localizacao;
    
    public Repositorio() {
    }

    public Repositorio(String nome, String descricao, Pessoa responsavel, String localizacao) {
        super(nome, descricao);
        this.responsavel = responsavel;
        this.localizacao = localizacao;
    }

    public Pessoa getResponsavel() {
        return responsavel;
    }

    public void setResponsavel(Pessoa responsavel) {
        this.responsavel = responsavel;
    }

    public String getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(String localizacao) {
        this.localizacao = localizacao;
    }
}
