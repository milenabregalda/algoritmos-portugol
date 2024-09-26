<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 16: Crie um script que use um loop while para somar os números de 1 a 250 e imprima o resultado.

$sum = 0; // Variável que armazenará a soma
$number = 1; // Inicializa o número que será contado a partir de 1

// Loop while para somar os números de 1 a 250
while ($number <= 250) {
    $sum += $number; // Adiciona o número atual à soma
    $number++; // Incrementa o número contador
}

// Imprime o resultado ao usuário
echo "A soma dos números de 1 a 250 é $sum.\n";

?>
