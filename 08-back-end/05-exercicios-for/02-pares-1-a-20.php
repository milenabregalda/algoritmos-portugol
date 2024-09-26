<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (For)
// Exercício 2: Crie um script que imprima os números pares de 1 a 20.

// Loop que percorre os números de 1 a 20
for ($i = 1; $i <= 20; $i++) {
    // Verifica se o número é par
    if ($i % 2 == 0) {
        // Exibe o número par seguido de um espaço
        echo $i . " "; // Utilizar ponto ao invés de sinal de adição para concatenar strings
    }
}

?>
