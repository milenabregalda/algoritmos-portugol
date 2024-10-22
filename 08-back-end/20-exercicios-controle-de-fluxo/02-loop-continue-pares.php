<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de controle de fluxo
   Exercício 2 - Crie um looping que conte de 1 a 10, mas use continue para pular os números pares. */

// Continue - Usado dentro de loops (como for, while ou foreach) para pular a iteração atual e continuar com a próxima iteração do loop.

// Criando um loop que conta de 1 a 10
for ($contador = 1; $contador <= 10; $contador++) {
    // Verifica se o contador é par
    if ($contador % 2 === 0) continue; // Pula a iteração atual se o contador for par

    echo $contador . "\n"; // Exibe o contador atual se não for par
}
