<?php

// Aula de 11/09/2024 - Lista 2 de exercícios do PHP (funções de PHP)
// Exercício 7: Crie o script para uma função geradora, que gere números com vírgula do 10.3 ao 20.3.

// Define a função geradora que gera números no intervalo especificado
function gerarNumeros($inicio, $fim) {
    for ($i = $inicio; $i <= $fim; $i += 0.1) { // Incrementa o valor de $i em 0.1 a cada iteração (0.1 ao invés de i++ justamente para gerar todos os com vírgula)
        yield $i; // Retorna valores um por um, o que é útil para trabalhar com grandes conjuntos de dados sem carregar todos os dados na memória de uma só vez
    }
}

foreach (gerarNumeros(10.3, 20.3) as $numero) {
    echo $numero . " "; // Informa ao usuário com loop e espaçamento
}


?>
