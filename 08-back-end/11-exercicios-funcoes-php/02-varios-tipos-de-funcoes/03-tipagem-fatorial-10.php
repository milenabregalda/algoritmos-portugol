<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP - anônima e tipagem)
// Exercício 3: Crie um script para uma função com tipagem de parâmetro e retorno a fatorial do número 10.

// Uma função tipada no PHP é uma função que utiliza tipos explícitos para os parâmetros e/ou o valor de retorno.

// Define a função fatorial com tipagem de parâmetro e retorno
function calcularFatorial(int $numero): int {
    $fatorial = 1; // Inicializa a variável que armazenará o resultado do fatorial

    // Loop para calcular o fatorial
    for ($i = 1; $i <= $numero; $i++) {
        $fatorial *= $i; // Multiplica o valor atual de $fatorial pelo valor de $i
    }

    return $fatorial; // Retorna o resultado do cálculo do fatorial
}

// Chama a função fatorial com o argumento 10 e exibe o resultado
echo "Fatorial de 10: " . calcularFatorial(10);

?>
