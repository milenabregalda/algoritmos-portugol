<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de controle de fluxo
   Exercício 5 - Ative a verificação estrita de tipos e crie uma função que soma dois inteiros. Tente passar um float para ver o erro. */
   
declare(strict_types=1); // Ativa a verificação estrita de tipos

// Função que soma dois inteiros
function soma(int $a, int $b): int {
    return $a + $b;
}

// Chamadas válidas
echo soma(2, 3); // Saída: 5

// Chamadas inválidas (causam erro de tipo)
echo soma(2, 3.5); // Gera um erro: TypeError (que deixarei propositalmente)
