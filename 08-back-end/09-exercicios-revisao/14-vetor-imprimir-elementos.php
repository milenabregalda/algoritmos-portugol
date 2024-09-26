<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 14: Crie um vetor com 5 números e use um loop for para imprimir cada elemento do vetor.

$array = [10, 20, 30, 40, 50]; // Vetor com 5 números

// Loop for para imprimir cada elemento do vetor
for ($i = 0; $i < count($array); $i++) { // Count para caso o tamanho do vetor mude
    echo "Elemento $i: " . $array[$i] . "\n";
}

?>