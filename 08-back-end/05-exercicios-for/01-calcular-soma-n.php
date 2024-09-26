<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (For)
// Exercício 1: Crie um script que calcule a soma dos números de 1 até um número N e exiba o resultado.

$n = 5; // Número N até o qual será feita a soma
$soma = 0; // Inicializa a variável que acumulará a soma dos números

// Loop para calcular a soma dos números de 1 até N
for ($i = 1; $i <= $n; $i++) {
    $soma += $i; // Adiciona o valor de $i à variável $soma
}

echo "Resultado da soma: $soma"; // Exibe o resultado final da soma

?>