<?php

// Aula de 05/09/2024 - Lista de exercícios de PHP (Do-while)
// Exercício 1: Crie um script PHP que conte de 10 até 1 usando um loop do-while, e depois exiba "Feliz Dia das Crianças!".

$i = 10; // Inicializa a variável $i com o valor 10, de onde a contagem começará

do {
    echo("$i\n"); // Exibe o valor atual de $i seguido por uma nova linha
    $i--; // Decrementa o valor de $i em 1 a cada iteração
} while ($i >= 1); // O loop continua até que $i seja maior ou igual a 1. Quando $i for menor que 1, o loop termina.

echo "\nFeliz Dia das Crianças!"; // Após o loop, exibe a mensagem de "Feliz Dia das Crianças!"

?>
