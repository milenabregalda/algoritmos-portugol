<?php

// Aula de 10/09/2024 - Lista de exercícios
// Exercício 6: Crie uma função chamada ordenarArray que recebe um array de números e retorna o array ordenado em ordem crescente.  

function ordenarArray($arrayNumeros) {
    sort($arrayNumeros); // Método que ordena o array precisa ser chamado antes do retorno
    return $arrayNumeros; // Retorna o array ordenado
}

$arrayNumeros = [10, 25, -40, 19, 238]; // Array de números a ser ordenado
$arrayCrescente = ordenarArray($arrayNumeros); // Chama a função para ordenar o array

print_r($arrayCrescente); // Imprime o array ordenado

?>