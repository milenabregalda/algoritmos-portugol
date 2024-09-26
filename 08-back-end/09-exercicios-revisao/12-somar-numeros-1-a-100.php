<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 12: Crie um script que use um loop for para somar os números de 1 a 100 e imprima o resultado.

$sum = 0; // Variável que armazenará a soma

// Loop para somar os números de 1 a 100
for ($i = 1; $i <= 100; $i++) {
    $sum += $i; // Soma é o valor anterior dela mais o valor de i (1 até 100)
}

// Imprime o resultado
echo "A soma dos números de 1 a 100 é $sum\n";

?>
