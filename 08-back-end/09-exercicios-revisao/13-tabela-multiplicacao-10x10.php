<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 13: Crie um script que use um loop for para gerar e imprimir uma tabela de multiplicação 10x10.

// Informa ao usuário sobre o que se trata
echo "Tabela de Multiplicação 10x10:\n\n";

// i e j para representar os números que serão multiplicados
for ($i = 1; $i <= 10; $i++) {
    for ($j = 1; $j <= 10; $j++) {
        // Calcula o resultado da multiplicação e informa ao usuário o cálculo completo
        $result = $i * $j;
        echo "$i x $j = $result \n";
    }
    // Nova linha após cada linha da tabela para separar melhor
    echo "\n";
}

?>
