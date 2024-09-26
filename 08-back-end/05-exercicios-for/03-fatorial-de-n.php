<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (For)
// Exercício 3: Calcule e exiba o fatorial de um número N.
// *Fatorial é a multiplicação de todos os números inteiros positivos de 1 até N.

$n = 6;
$fatorial = 1; // Justamente porque o fatorial começa com multiplicação de 1

// Loop que multiplica $fatorial pelos números de 1 até $n
for ($i = 1; $i <= $n; $i++) {
    $fatorial *= $i; // Multiplica o valor atual de $fatorial pelo contador $i
}

echo "Fatorial de $n: $fatorial"; // Exibe o resultado do fatorial

?>
