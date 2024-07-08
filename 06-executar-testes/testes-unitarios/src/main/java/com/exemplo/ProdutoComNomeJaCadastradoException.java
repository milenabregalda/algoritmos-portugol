package com.exemplo;

public class ProdutoComNomeJaCadastradoException extends Exception {
    public ProdutoComNomeJaCadastradoException(String message) { // Recebe parâmetro "Produto com nome já cadastrado." em ProdutoRepositorio
        super(message);
    }
}
