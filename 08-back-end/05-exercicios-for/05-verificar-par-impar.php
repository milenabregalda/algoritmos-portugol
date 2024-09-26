<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (For)
// Exercício 5: Crie um script que verifique números pares e ímpares, em ordem decrescente, de 1 a 50.

// Loop para percorrer números de 50 até 1
for ($i = 50; $i >= 1; $i--) {
    // Utiliza o operador ternário para determinar se o número é par ou ímpar
    echo $i . " é número " . ($i % 2 == 0 ? "par" : "ímpar") . "\n"; // Concatena informações em String
}

?>
