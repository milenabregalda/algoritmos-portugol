<?php

// Aula de 04/09/2024 - Lista de exercícios de PHP (While)
// Exercício 3: Crie um script PHP que imprima todos os números pares entre 1 e 20 usando um loop while.

$i = 1; // Inicializa a variável $i com 1, que será usado como contador no loop

echo("Números pares entre 1 e 20:\n"); // Imprime uma mensagem inicial indicando que serão exibidos os números pares entre 1 e 20

// Inicia um loop while que continua enquanto $i for menor ou igual a 20
while ($i <= 20) {
    if ($i % 2 == 0) { // Verifica se o número atual ($i) é par
        echo $i . "\n"; // Exibe o número par seguido de uma nova linha
    }
    $i++; // Incrementa o valor de $i em 1 para a próxima iteração do loop
}

?>
