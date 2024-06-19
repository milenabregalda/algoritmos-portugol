package Model;

// Trabalho Faculdade - Criação de diagrama de classes e montagem do código inicial
// Milena Fontana Bregalda - 08/04/2024 até 09/04/2024

public class Setup extends Sistema {
    private int qtdArquivos;

    public Setup() {
    }

    public Setup(String nome, String descricao, int qtdArquivos) {
        super(nome, descricao);
        this.qtdArquivos = qtdArquivos;
    }

    public int calcularQtdArquivos() {
        return qtdArquivos * 1;
    }

    public int getQtdArquivos() {
        return qtdArquivos;
    }

    public void setQtdArquivos(int qtdArquivos) {
        this.qtdArquivos = qtdArquivos;
    }
}