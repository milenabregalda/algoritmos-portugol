<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 1: Crie um vetor com 10 números inteiros. Use um loop for para percorrer o vetor e, dentro do loop, use uma estrutura if/else
// para verificar se cada número é par ou ímpar. Imprima uma mensagem indicando se o número é par ou ímpar.

$numbers = array(1, 4, 7, 10, 12, 15, 18, 21, 24, 27); // Vetor com 10 números inteiros

for ($i = 0; $i < count($numbers); $i++) {
    if ($numbers[$i] % 2 == 0) {
        echo $numbers[$i] . " é par\n"; // Exibe se o número é par
    } else {
        echo $numbers[$i] . " é ímpar\n"; // Exibe se o número é ímpar
    }
}

?>