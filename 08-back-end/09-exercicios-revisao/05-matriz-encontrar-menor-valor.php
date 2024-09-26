<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 5: Crie uma matriz 3x3 com números aleatórios. Use um loop for aninhado para percorrer a matriz e encontrar o menor valor. Imprima o menor valor encontrado.

$matrix = array(); // Inicializa a matriz

// Preenche a matriz 3x3 com números aleatórios entre 0 e 100
for ($i = 0; $i < 3; $i++) {
    for ($j = 0; $j < 3; $j++) {
        $matrix[$i][$j] = rand(0, 100); // Método que gera números aleatórios entre 0 e 100
    }
}

// Inicializa o menor valor com o primeiro elemento da matriz para começar as comparações
$lowestValue = $matrix[0][0];

for ($i = 0; $i < 3; $i++) { // Percorre a matriz
    for ($j = 0; $j < 3; $j++) {
        if ($matrix[$i][$j] < $lowestValue) {  // Faz comparações para encontrar o menor valor
            $lowestValue = $matrix[$i][$j]; // Se comparação for verdadeira, salva o novo menor número na variável de menor valor
        }
    }
}

// Imprime a matriz
echo "Matriz 3x3:\n";
for ($i = 0; $i < 3; $i++) {
    for ($j = 0; $j < 3; $j++) {
        echo $matrix[$i][$j] . " ";
    }
    echo "\n";
}

// Imprime o menor valor encontrado
echo "\nO menor valor encontrado é " . $lowestValue . ".";

?>
