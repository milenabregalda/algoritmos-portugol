<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 6: Crie um vetor com 4 números inteiros e calcule a soma de todos os elementos do vetor. Imprima a soma.

// Criação do array com 4 números inteiros
$numeros = array(1, 2, 3, 4);

// Inicializa a variável para armazenar a soma dos números
$soma = 0;

// Iteração para cada elemento do array para fazer a soma dos números:
/*foreach ($numeros as $numero) { // Para cada número no array
    $soma += $numero; // Adiciona o número atual à variável $soma
}*/

// Ao invés de utilizar foreach acima, posso apenas utilizar uma função pronta que faz a mesma coisa
$soma = array_sum($numeros);

// Imprime o resultado da soma
echo "Soma de todos os números no vetor: $soma";

?>