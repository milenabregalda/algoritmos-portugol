<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 3: Crie um vetor com 7 números inteiros. Use um loop while para contar quantos desses números são positivos e imprima o total.

$numbers = [3, -1, 7, 0, -5, 8, -2]; // Vetor com 7 números inteiros
$positiveNumbers = 0; // Variável onde fica armazenada a quantidade de números positivos no vetor
$i = 0; // Índice para o loop while

while ($i < count($numbers)) { // Count já que o tamanho do vetor pode mudar
    if ($numbers[$i] > 0) {
        $positiveNumbers++; // Incrementa o contador se o número for positivo
    }
    $i++; // Avança para o próximo índice
}

echo "Total de números positivos: " . $positiveNumbers;

?>
