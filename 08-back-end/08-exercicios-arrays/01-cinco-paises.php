<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 1: Crie um array indexado que contenha os nomes de cinco países. Em seguida, adicione um país ao final do array e remova o primeiro país. Imprima o array final.

$paises = array("Estados Unidos", "Brasil", "Argentina", "África do Sul", "Suécia"); // Cria um array indexado com os nomes dos cinco países

print_r($paises); // Mostra o array no console para visualizar mudanças

array_push($paises, "Uruguai"); // Adiciona um elemento ao final do array

array_shift($paises); // Remove o primeiro país do array

print_r($paises); // Mostra o array no console para visualizar mudanças

?>