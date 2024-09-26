<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP)
// Exercício 1: Crie um script que retorne uma função anônima que traga a multiplicação de 3 números.

// Funções anônimas são funções sem nome e podem ser atribuídas a variáveis ou passadas como argumentos para outras funções.

$multiplicacao = function($a, $b, $c) { // Atribui uma função anônima à variável $multiplicacao
    return $a * $b * $c; // Multiplicação retornada
};

// Chama a função anônima através da variável $multiplicacao e exibe o resultado
echo "Resultado da multiplicação: " . $multiplicacao(1, 2, 3);

?>
