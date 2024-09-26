<?php

// Aula de 11/09/2024 - Lista de exercícios do PHP (funções de PHP)
// Exercício 1: Crie uma função contarCaracteres que receba uma string como parâmetro e retorne o número de caracteres da string.

function contarCaracteres($string) {
    return strlen($string); // Função que retorna o comprimento de uma string
}

$string = "Milena"; // String de exemplo
echo "Número de caracteres: " . contarCaracteres($string); // Chama a função e exibe o número de caracteres da string

?>
