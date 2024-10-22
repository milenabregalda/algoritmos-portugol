<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de controle de fluxo
   Exercício 6 - Crie um código que use goto para saltar para um determinado ponto no código. */

// Goto - O goto em PHP é uma instrução que permite saltar para um ponto específico do código, indicado por um rótulo. Embora
// possa ser usado para simplificar algumas situações, seu uso é geralmente desencorajado, pois pode tornar o código confuso e difícil de seguir.

goto ponto; // Goto faz a execução do código saltar/pular para um ponto especificado

echo 'Parte do código que vai ser pulada.'; // Este código será pulado

ponto: // O ponto para onde o goto vai mandar
echo 'Olá, você foi redirecionado para este ponto!'; // Este código será executado

?>
