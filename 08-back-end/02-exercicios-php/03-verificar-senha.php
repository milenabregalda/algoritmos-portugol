<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 3: Escreva um script PHP que verifique se uma senha fornecida é correta. Compare a senha fornecida com uma senha predefinida.

$senhaPredefinida = "senha123";
$senhaFornecida = "senha1234";

if ($senhaFornecida === $senhaPredefinida) {
    echo "A senha está correta.";
} else {
    echo "A senha está incorreta.";
}

?>