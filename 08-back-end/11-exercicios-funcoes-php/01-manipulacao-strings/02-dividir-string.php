<?php

// Aula de 11/09/2024 - Lista de exercícios de PHP (funções do PHP)
// Exercício 2: Crie uma função dividirString que divida uma string em um array de substrings com base em um delimitador especificado. 

function dividirString($string, $delimitador) {
    return explode($delimitador, $string); // Função que divide uma string em um array com base em um delimitador
}

$string = "Maçã Banana Laranja Uva"; // A string de exemplo
$delimitador = " "; // O delimitador usado para dividir a string (espaço)
$arraySubstrings = dividirString($string, $delimitador); // Chama a função e salva na variável de array substrings

print_r($arraySubstrings); // Exibe o array resultante

?>
