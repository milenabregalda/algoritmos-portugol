<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 6: Crie um vetor com 5 números inteiros. Ordene o vetor em ordem crescente e depois imprima os números em ordem decrescente usando um loop for. 

$array = [10, 3, 8, 15, 1]; // Vetor com 5 números inteiros

sort($array); // Método que ordena os valores do vetor em ordem crescente

// Imprime os números em ordem decrescente usando um loop for
echo "Números em ordem decrescente:\n";
for ($i = count($array) - 1; $i >= 0; $i--) { // Para ser decrescente, começa na última posição do array (aqui, é 4) e termina em 0
    echo $array[$i] . "\n"; // Impressão do valor atual do vetor
}

?>
