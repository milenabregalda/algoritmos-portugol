<?php

// Aula de 05/09/2024 - Lista de exercícios de PHP (Do-while)
// Exercício 2: Crie um script PHP que peça ao usuário para inserir números positivos e calcule a soma desses números.
// O loop deve continuar até que o usuário insira um número negativo.
// *Como executar: abrir cmd, cd caminho da pasta, php nome do arquivo.

$number = 0;
$sum = 0;

do {
    $number = readline("Insira números positivos para somá-los: ");
    $sum += $number;
    echo "Soma: $sum\n\n";
} while ($number >= 0);

echo "\nVocê digitou um número negativo. O programa será encerrado.\n";

?>