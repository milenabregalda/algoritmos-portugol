package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class PerfilAcesso extends Sistema {
    private Permissoes permissoes;

    public PerfilAcesso() {
    }

    public PerfilAcesso(String nome, String descricao, Permissoes permissoes) {
        super(nome, descricao);
        this.permissoes = permissoes;
    }

    public Permissoes getPermissoes() {
        return permissoes;
    }

    public void setPermissoes(Permissoes permissoes) {
        this.permissoes = permissoes;
    }
}
