<?php

// Aula de 11/09/2024 - Lista de exercícios de PHP (funções do PHP)
// Exercício 5: Crie uma função preencherComZeros que preencha uma string com zeros à esquerda até um comprimento total especificado.

function preencherComZeros($string, $comprimentoTotal) {
    return str_pad($string, $comprimentoTotal, "0", STR_PAD_LEFT);
    // Função que preenche uma string até um determinado comprimento com um caractere
    // Parâmetros: a string, comprimento total, vou preencher com 0, preencher pra esquerda (tem right e both também)
}

echo "String preenchida com zeros à esquerda: " . preencherComZeros("Zero", 8);
// Chama a função com string e comprimento total como parâmetros e exibe ao usuário
// A minha string tem 4 caracteres, especifico que o comprimento total deve ser de 8 caracteres, então serão colocados 4 zeros à esquerda

?>