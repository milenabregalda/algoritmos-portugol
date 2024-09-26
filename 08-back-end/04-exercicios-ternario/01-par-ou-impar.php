<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (ternário)
// Exercício 1: Crie um script que verifique se um número é par ou ímpar usando o operador ternário.

$numero = '2'; // Mesmo com variável numero sendo uma String e tendo três iguais de comparação no ternário, funciona igual

$verificaNumero = $numero %2 === 0 ? "O número $numero é par." : "O número $numero é ímpar."; 
echo $verificaNumero; // Pode-se também utilizar o operador ternário direto do echo ao invés de variável verifica

?>