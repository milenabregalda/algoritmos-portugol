<?php

/* Aula de 04/08/2024 - Lista de exercícios de estruturas de controle de fluxo
   Exercício 4 - Similar ao exercício anterior, mas use match para exibir o nome do mês. */

// Match - Forma simplificada de comparar um valor com diferentes condições e retornar um resultado correspondente.
// Ela permite verificar um valor contra várias opções de forma mais concisa e legível do que o switch.

// Recebe um número de 1 a 12
$numeroMes = 8; // Valor do mês

// Usando match para determinar o nome do mês
$nomeMes = match ($numeroMes) {
    1 => "Janeiro",
    2 => "Fevereiro",
    3 => "Março",
    4 => "Abril",
    5 => "Maio",
    6 => "Junho",
    7 => "Julho",
    8 => "Agosto",
    9 => "Setembro",
    10 => "Outubro",
    11 => "Novembro",
    12 => "Dezembro",
    default => "Número inválido. Por favor, um número de 1 a 12."
};

// Exibe o nome do mês
echo $nomeMes;