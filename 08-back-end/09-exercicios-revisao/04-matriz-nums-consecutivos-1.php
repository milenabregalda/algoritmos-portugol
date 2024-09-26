<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 4: Crie uma matriz 3x3 e preencha-a com números consecutivos a partir de 1. Use um loop do while para preencher a matriz e, em seguida, imprima a matriz.

$matrix = array(); // Inicializa a matriz
$number = 1; // Começa com o número 1
$i = 0; // Variável para linha
$j = 0; // Variável para coluna

do {
    // Preenche a matriz
    $matrix[$i][$j] = $number;
    $number++; // Número consecutivo a partir de 1 e os que vem depois dele
    $j++; // Aumenta o número da coluna para ir para a próxima
    
    // Se todas as colunas da linha estão preenchidas, avança para a próxima linha
    if ($j >= 3) {
        $j = 0; // Reseta a coluna
        $i++; // Vai para a próxima linha
    }
    
} while ($i < 3); // Enquanto não preencheu todas as 3 linhas

// Imprime a matriz no console
for ($i = 0; $i < 3; $i++) {
    for ($j = 0; $j < 3; $j++) {
        echo $matrix[$i][$j] . " "; // Imprime número da matriz e um espaço para formatação
    }
    echo "\n"; // Nova linha após cada linha da matriz
}

?>
