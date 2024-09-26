<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 7: Crie uma matriz 2x2 com números inteiros. Use um loop for aninhado para percorrer a matriz e, dentro do loop, use uma estrutura if/else
// para verificar se cada valor é maior que 10. Imprima uma mensagem indicando se o valor é maior ou menor ou igual a 10.

// Cria uma matriz 2x2 com números inteiros
$matrix = [
    array(5, 12),
    array(8, 10)
]; 

// Percorre a matriz 2x2
for ($i = 0; $i < 2; $i++) {
    for ($j = 0; $j < 2; $j++) {
        $value = $matrix[$i][$j];
        
        // Verifica se o valor é maior, menor ou igual ao 10 e informa ao usuário
        if ($value > 10) {
            echo "O valor $value é maior que 10.\n";
        } elseif ($value < 10) {
            echo "O valor $value é menor que 10.\n";
        } else {
            echo "O valor $value é igual a 10.\n";
        }
    }
}

?>
