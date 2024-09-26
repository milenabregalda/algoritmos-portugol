<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP)
// Exercício 5: Crie o script para uma função de ordem superior que retorna a divisão de dois números pares.

// Funções de ordem superior são funções que aceitam outras funções como argumentos ou retornam funções.

// Função de ordem superior; parâmetros callable (a outra função) e números do tipo float
function executarDivisao(callable $validarPares, float $num1, float $num2): float {
    try {
        if ($validarPares($num1) && $validarPares($num2)) {
            // Utilizando a função validarPares para os dois números, verifica se são pares (true ou false)
            return $num1 / $num2; // Se os dois números forem pares (true), esta função faz a divisão dos números e os retorna
        } else {
            throw new Exception("Números devem ser pares.\n");
        }
    } catch (Exception $e) { // Try catch caso dê algum problema
        echo $e->getMessage(); // Pega a mensagem da exceção acima e mostra
        return 0; // Retorna 0 em caso de erro
    }
}

// Função anônima para validar se o número é par e inteiro
$validarPares = function($numero) {
    // Convertendo o número para inteiro antes de verificar se é par
    if ($numero % 2 === 0) { // Verifica se o número é par
        return true;
    } else { 
        return false;
    }
};

// Testa a função de ordem superior
$resultado = executarDivisao($validarPares, 20, 4);
echo "Resultado da divisão: " . $resultado;

?>
