<?php

// Aula de 06/09/2024 - Lista de exercícios de revisão
// Exercício 2: Crie um vetor com notas de alunos. Calcule a média das notas e, usando um operador ternário, determine se a média
// é maior ou igual a 7 (aprovação) ou menor (reprovação). Imprima a mensagem correspondente.

$grades = array(6.5, 7.0, 8.0, 9.0, 5.5); // Array com notas de alunos

// Calcular a média das notas
$sumGrades = array_sum($grades); // Método sum para não precisar somar manualmente todas as notas
$numberOfGrades = count($grades); // Método para contar a quantidade de notas
$average = $sumGrades / $numberOfGrades; // Método para calcular a média

// Usar operador ternário para determinar se a média é suficiente para aprovação (mais ou iogu)
$result = ($average >= 7) ? "Aprovado" : "Reprovado";

// Imprimir o resultado
echo "Média das notas: " . number_format($average, 2, ',', '.') . "\n";
echo "Resultado: " . $result;

?>
