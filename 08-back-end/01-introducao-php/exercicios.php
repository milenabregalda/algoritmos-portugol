<?php

// Aula de 28/08/2024 - Introdução de PHP com exercícios (Debug Console)

// Exercício 1: Crie um script PHP que compare dois números inteiros e exiba se o primeiro número é maior, menor ou igual ao segundo.
$numero1 = 5;
$numero2 = 10;

if($numero1 > $numero2) {
    echo "O primeiro número é maior do que o segundo\n";
} else if ($numero1 < $numero2) {
    echo "O primeiro número é menor do que o segundo\n";
} else {
    echo "Os dois números são iguais\n";
}

// Exercício 2: Crie um script que verifique se duas variáveis são idênticas e se não são idênticas, e exiba uma mensagem apropriada. 
$variavel1 = "Milena";
$variavel2 = "Amanda";

if($variavel1 === $variavel2) {
    echo "As variáveis $variavel1 e $variavel2 são idênticas\n";
} else {
    echo "As variáveis $variavel1 e $variavel2 não são idênticas\n";
}

// Exercício 3: Crie um script PHP que verifique se um número é maior que 10 e menor que 20 usando operadores lógicos.
$numero = 11;

if($numero > 10) {
    echo "O número $numero é maior que 10\n"; // Jeito 1 de concatenar a variável dentro da String
}

if($numero < 20) {
    echo "O número " . $numero . " é menor que 20\n"; // Jeito 2 de concatenar a variável dentro da String
}

if($numero > 10 && $numero < 20) {
    echo("$numero é maior do que 10 e menor do que 20\n"); // No geral, é bom usar parênteses
} else {
    echo("$numero é menor do que 10 e menor do que 20\n");
} 

// Exercício 4: Crie um script PHP que verifique se uma variável não é igual a 0 e exiba uma mensagem de acordo com o resultado.
$numeroComparadoComZero = 0;

if($numeroComparadoComZero != 0) {
    echo "O número $numeroComparadoComZero não é igual a 0\n";
} else {
    echo "O número $numeroComparadoComZero é igual a 0\n";
}

?>