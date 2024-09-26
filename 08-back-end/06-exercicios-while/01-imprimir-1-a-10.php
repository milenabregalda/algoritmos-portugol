<?php

// Aula de 04/09/2024 - Lista de exercícios de PHP (While)
// Exercício 1: Crie um script PHP que imprima os números de 1 a 10, um por linha, usando um loop while.

$i = 1;  // Inicializa a variável $i com 1, que será o primeiro número a ser impresso

echo "Números de 1 a 10:\n";  // Imprime uma mensagem inicial para indicar o início da lista de números

while ($i <= 10) {  // Inicia um loop while que continua enquanto $i for menor ou igual a 10
    echo "$i\n";  // Imprime o valor atual de $i, seguido por uma nova linha
    $i++;  // Incrementa o valor de $i em 1, preparando-o para a próxima iteração do loop
}

?>
