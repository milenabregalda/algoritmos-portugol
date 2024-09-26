<?php

// Aula de 06/09/2024 - Exemplo de manipulação de arrays

$array = array("Maçã", "Banana", "Laranja"); // Cria um array inicial

array_push($array, "Manga"); // Adiciona um elemento ao final do array

echo "Após array_push: ";
print_r($array);

array_pop($array); // Remove o último elemento do array

echo "\nApós array_pop: ";
print_r($array);

array_shift($array); // Remove o primeiro elemento do array

echo "\nApós array_shift: ";
print_r($array);

array_unshift($array, "Morango"); // Adiciona um elemento no início do array

echo "\nApós array_unshift: ";
print_r($array);

echo "\nNúmero de elementos no array (count): " . count($array) . "\n"; // Retorna o número de elementos no array, contando eles

$valor = "Laranja";

// Verifica se um valor existe no array usando in_array:
if (in_array($valor, $array)) {
    echo "\nO valor '$valor' existe no array.";
} else {
    echo "\nO valor '$valor' não foi encontrado no array.";
}

?>
