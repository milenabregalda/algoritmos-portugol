<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 3: Crie um array multidimensional para armazenar informações sobre três alunos.
// Cada aluno deve ter um nome, idade e nota final. Imprima as informações de cada aluno de forma legível.

$alunos = array(
    // Dados dos três alunos:
    array("Rogério", 22, 8.5),
    array("José", 23, 7.9),
    array("Josefina", 30, 9)
);

foreach ($alunos as $aluno) { // Executa para cada aluno (array) dentro do array multidimensional alunos
    echo "Nome: " . $aluno[0] . "\n"; // A primeira posição é o nome
    echo "Idade: " . $aluno[1] . "\n"; // A segunda posição é a idade
    echo "Nota: " . number_format($aluno[2], 1, ',', '.') . "\n"; // A terceira posição é a nota (formatada para usar vírgula)
    echo "------------------\n";
}

?>
