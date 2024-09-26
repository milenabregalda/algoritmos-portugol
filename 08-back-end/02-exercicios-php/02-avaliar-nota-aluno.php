<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 2: Crie um script PHP que avalie a nota de um aluno e forneça uma mensagem de aprovação ou reprovação com base na nota. Considere que a nota mínima para aprovação é 6.

$notaAprovacao = 6.0;
$notaAluno = 7.5;

if ($notaAluno >= $notaAprovacao) {
    echo "O aluno está aprovado.";
} else {
    echo "O aluno está reprovado.";
}

?>