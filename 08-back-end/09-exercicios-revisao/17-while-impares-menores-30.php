<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 17: Crie um script que use um loop while para contar quantos números ímpares existem menores que 30 e imprima o total.

$oddNumberCounter = 0; // Inicializa o contador
$number = 1; // Primeiro número ímpar que começa a contagem

// Loop while para contar os números ímpares menores que 30
while ($number < 30) {
    $oddNumberCounter++; // Incrementa o contador para cada número ímpar encontrado
    $number += 2; // Avança para o próximo número ímpar
}

// Imprime o total de números ímpares menores que 30
echo "O total de números ímpares menores que 30 é $oddNumberCounter\n";

?>