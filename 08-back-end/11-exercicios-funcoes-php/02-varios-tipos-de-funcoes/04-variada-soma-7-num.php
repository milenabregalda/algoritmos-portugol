<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP)
// Exercício 4: Crie o script para uma função variada que traga o resultado da soma de 7 números.

// Funções variadas podem aceitar um número variável de argumentos. Isso é feito usando o operador "...".

function somarNumeros(float ...$numeros): float { // Pontinhos porque pode receber várias quantidades de números
    $soma = 0; // Inicializa a variável que armazenará o resultado da soma

    // Itera sobre cada número passado como argumento
    foreach ($numeros as $numero) { // Itera sobre cada número passado como argumento
        $soma += $numero; // Adiciona o número atual à variável $soma
    }

    return $soma; // Retorna o resultado da soma dos números

    // NOTA: também poderia ter usado array_sum
}

// Testa a função com 7 números e exibe a soma
echo "A soma dos números é: " . somarNumeros(10, 20, 30, 5.5);

?>
