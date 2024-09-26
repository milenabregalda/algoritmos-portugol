<?php

// Aula de 10/09/2024 - Lista de exercícios
// Exercício 2: Crie uma função chamada converterCelsiusParaFahrenheit que recebe uma temperatura em graus Celsius e a converte para Fahrenheit.
// A fórmula para a conversão é F = (C * 9/5) + 32.

// Definição da função
function converterCelsiusParaFahrenheit($celsius) {
    // Aplica a fórmula de conversão de Celsius para Fahrenheit
    return $celsius * 9.0/5.0 + 32; // Não precisa de parênteses na fração
}

// Chama a função e exibe o resultado em Fahrenheit
echo converterCelsiusParaFahrenheit(20) . " ° F";

?>
