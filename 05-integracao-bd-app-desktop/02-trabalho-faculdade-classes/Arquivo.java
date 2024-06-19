package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class Arquivo extends Sistema {
    private String localModelo;

    public Arquivo() {
    }

    public Arquivo(String nome, String descricao, String localModelo) {
        super(nome, descricao);
        this.localModelo = localModelo;
    }

    public String getLocalModelo() {
        return localModelo;
    }

    public void setLocalModelo(String localModelo) {
        this.localModelo = localModelo;
    }
}
