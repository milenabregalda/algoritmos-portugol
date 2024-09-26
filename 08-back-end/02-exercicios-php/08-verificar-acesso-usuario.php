<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 8: Crie um script PHP que verifique se um usuário tem acesso ao sistema com base em um nome de usuário e uma senha. Utilize um nome de usuário e senha predefinidos.

$usuarioPredefinido = "usuario";
$senhaPredefinida = "123";

$usuarioFornecido = "usuario";
$senhaFornecida = "1234";

if ($usuarioFornecido == $usuarioPredefinido && $senhaFornecida == $senhaPredefinida) {
    echo "O usuário $usuarioFornecido tem acesso ao sistema.";
} else {
    echo "Dados fornecidos são incorretos. O usuário $usuarioFornecido não tem acesso ao sistema.";
}

?>