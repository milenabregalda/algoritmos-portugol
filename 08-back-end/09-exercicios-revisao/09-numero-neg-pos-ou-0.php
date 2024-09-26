<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 9: Crie um script que verifique se um número é positivo, negativo ou zero usando uma estrutura if/else. Imprima uma mensagem apropriada para cada caso.

$number = 1; // Número para verificação

// Verifica se o número é positivo, negativo ou zero e informa ao usuário
if ($number > 0) {
    echo "O número $number é positivo.\n";
} elseif ($number < 0) {
    echo "O número $number é negativo.\n";
} else {
    echo "O número é zero.\n";
}

?>
