<?php

// Aula de 04/09/2024 - Lista de exercícios de PHP (While)
// Exercício 4: Crie um script PHP que exiba a sequência de Fibonacci até o número 100, usando um loop while.
// *A sequência de Fibonacci é uma famosa sequência numérica onde cada número é a soma dos dois números anteriores.
//  A sequência começa com 0 e 1, e os números subsequentes são obtidos pela adição dos dois números imediatamente anteriores.
//  Exemplo: 0, 1, 1 (0 + 1), 2 (1 + 1), etc.

echo("Sequência de Fibonacci até o número 100:\n");
$number1 = 0; // O primeiro número da sequência de Fibonacci
$number2 = 1; // O segundo número da sequência de Fibonacci

while ($number1 <= 100) {
    echo $number1 . "\n"; // Exibe os números

    // Cálculo do próximo número da sequência:
    $nextNumber = $number1 + $number2; // O próximo número é a soma dos números anteriores
    $number1 = $number2; // Como o próximo número vai virar o número 2 (mais atual) na próxima linha, aqui o número 2 anterior se torna o número 1 (mais antigo)
    $number2 = $nextNumber; // O próximo número vira o número 2 (mais atual) para a sequência continuar
}

?>