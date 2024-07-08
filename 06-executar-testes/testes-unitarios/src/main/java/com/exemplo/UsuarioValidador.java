package com.exemplo;

public class UsuarioValidador {
    public static void validar(Usuario usuario) throws UsuarioInvalidoException {
        if (usuario.getNickname() == null || usuario.getNickname().isEmpty() ||
            usuario.getPassword() == null || usuario.getPassword().isEmpty()) {
            throw new UsuarioInvalidoException("Dados do usuário são inválidos."); // Parâmetro que na classe da exceção é message
        }
    }
}
