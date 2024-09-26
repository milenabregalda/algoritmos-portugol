<?php

// Aula de 04/09/2024 - Lista de exercícios de PHP (While)
// Exercício 2: Crie um script PHP e inicialize a variável com um número positivo, depois calcule e imprima a soma de todos os números de 1 até este número.

$i = 1; // Inicializa a variável $i com 1, que será usado como contador no loop
$number = 5; // Define o número até o qual a soma será calculada
$sum = 0; // Inicializa a variável $sum com 0, que armazenará a soma acumulada

// Inicia um loop while que continua enquanto $i for menor ou igual ao valor de $number
while ($i < $number) { // A professora pediu para ser menor que, e não menor ou igual que o número
    $sum += $i; // Adiciona o valor atual de $i à variável $sum.
    $i++; // Incrementa o valor de $i em 1 para a próxima iteração do loop
}

// Imprime a soma total dos números de 1 até $number.
echo "Soma de todos os números de 1 até $number: $sum";

?>