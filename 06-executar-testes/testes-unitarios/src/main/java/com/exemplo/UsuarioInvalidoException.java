package com.exemplo;

public class UsuarioInvalidoException extends Exception {
    public UsuarioInvalidoException(String message) { // Recebe parâmetro "Dados do usuário são inválidos." em UsuarioValidador
        super(message);
    }
}
