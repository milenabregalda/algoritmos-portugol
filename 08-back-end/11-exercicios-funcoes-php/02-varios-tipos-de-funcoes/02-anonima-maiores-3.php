<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP)
// Exercício 2: Crie um script para uma função anônima onde o vetor receberá 5 números. Imprima os números maiores que 3.

$numeros = [1, 4, 2, 5, 3]; // Vetor com 5 números

// Variável números filtrados recebe a função anônima de filtro
$numerosFiltrados = array_filter($numeros, function($numero) { // A função de filtro recebe o vetor de números e a função que retorna números
    return $numero > 3; // A função que retorna números só retorna como verdadeiro números maiores do que 3
});

// Imprime o array com os números filtrados
print_r($numerosFiltrados);

?>
