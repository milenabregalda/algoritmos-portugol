<?php

// Aula de 10/09/2024 - Lista de exercícios
// Exercício 1: Crie uma função chamada ehPalindromo que recebe uma string e verifica se ela é um palíndromo (ou seja, se ela é a mesma quando lida de trás para frente).
// A função deve retornar true se for um palíndromo e false caso contrário. 

// Definição da função
function ehPalindromo($string) {
    $string = strtolower($string); // Passa a string toda para minúsculo para verificações não terem problemas
    $stringInvertida = strrev($string); // Método que retorna string invertida para uma nova string
    // Compara string original com a string invertida e retorna true ou false com ternário
    return ($string === $stringInvertida) ? true : false; // Também poderia ter retornado string e echo abaixo, mas quis seguir o exercício
}

// Chama a função e informa ao usuário utilizando ternário
echo (ehPalindromo("Ana") ? "É palíndromo" : "Não é palíndromo");

?>