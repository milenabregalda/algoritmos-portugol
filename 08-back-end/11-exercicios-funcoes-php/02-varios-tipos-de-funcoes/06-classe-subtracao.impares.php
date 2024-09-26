<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP)
// Exercício 6: Crie o script para um método de classe que calcule a subtração de dois números ímpares.
    
// Define a classe Calculadora com um método estático para realizar operações matemáticas
class Calculadora {
    // Método que calcula a subtração de dois números ímpares (estático para não precisar criar instância da classe Calculadora)
    public static function subtrairImpares(int $a, int $b): int { // Tem tipagem, só aceita int
        if ($a % 2 !== 1 || $b % 2 !== 1) { // Aqui, verifica se o número não é ímpar primeiro (diferente do outro exercício)
            throw new InvalidArgumentException('Ambos os números devem ser ímpares.'); // Exceção com throw ao invés de try catch, caso isso ocorra
        }
        // Se ambos os números são ímpares, calcula e retorna a subtração do segundo número do primeiro
        return $a - $b; // Se os dois números são ímpares, retorna a subtração
    }
}

try {
    $resultado = Calculadora::subtrairImpares(7, 3); // Chama o método
    echo "Resultado da subtração: " . $resultado; // Mostra o resultado ao usuário
} catch (InvalidArgumentException $e) {
    // Se a exceção for lançada, imprime a mensagem da exceção de dentro do método subtrairImpares
    echo "Erro: " . $e->getMessage();
}

?>