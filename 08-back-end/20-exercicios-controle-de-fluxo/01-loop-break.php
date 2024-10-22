<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de controle de fluxo
   Exercício 1 - Crie um loop que conte de 1 a 10 e use break para interromper o loop quando o contador atingir 6. */

// Criando um loop que conta de 1 a 10
for ($i = 1; $i <= 10; $i++) {
   echo $i . "\n"; // Exibe o contador atual

   // Verifica se o contador atingiu 6
   if ($i === 6) break; // Interrompe o loop se o contador for igual a 6
}
