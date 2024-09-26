<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 8: Dada uma matriz 2x2 e um valor de multiplicação (por exemplo, 3), multiplique todos os elementos da matriz pelo valor e imprima a matriz resultante.

// Declara a matriz 2x2 (utilizei colchetes ao invés de 2 arrays dentro):
$matrix = [ 
    [2, 4],
    [6, 8]
];

$multiplicationValue = 3; // Valor de multiplicação

// Percorre a matriz
for ($i = 0; $i < 2; $i++) {
    for ($j = 0; $j < 2; $j++) {
        $matrix[$i][$j] *= $multiplicationValue; // Multiplica o valor do elemento atual pelo valor da multiplicação
    }
}

// Imprime a matriz resultante
echo "Matriz multiplicada por $multiplicationValue:\n";
for ($i = 0; $i < 2; $i++) {
    for ($j = 0; $j < 2; $j++) {
        echo $matrix[$i][$j] . " "; // Imprime os valores da matriz
    }
    echo "\n"; // Nova linha para a próxima linha da matriz
}

?>
