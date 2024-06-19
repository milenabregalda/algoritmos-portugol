package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class Pessoa {
    private String nome;
    private String email;
    private TipoPessoa tipoPessoa;

    public Pessoa() {
    }

    public Pessoa(String nome, String email, TipoPessoa tipoPessoa) {
        this.nome = nome;
        this.email = email;
        this.tipoPessoa = tipoPessoa;
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

    public TipoPessoa getTipoPessoa() {
        return tipoPessoa;
    }

    public void setTipoPessoa(TipoPessoa tipoPessoa) {
        this.tipoPessoa = tipoPessoa;
    }
}
