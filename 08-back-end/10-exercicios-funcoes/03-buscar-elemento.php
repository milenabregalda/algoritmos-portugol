<?php

// Aula de 10/09/2024 - Lista de exercícios
// Exercício 3: Crie uma função chamada buscarElemento que recebe um array e um valor a ser buscado dentro do array.
// A função deve retornar a posição do valor no array ou -1 se o valor não for encontrado. 

// Definição da função
function buscarElemento($array, $valorParaBuscar) {
    // Percorre o array para encontrar o valor
    for ($i = 0; $i < count($array); $i++) { // Menor que count porque vetores começam com 0
        if ($array[$i] === $valorParaBuscar) {
            // Se verificação for verdadeira, retorna a posição do valor
            return $i;
        }
    }
    // Retorna -1 se o valor não for encontrado
    return -1;
}

$array = array(1, 2, 3, 4, 5);

$posicao = buscarElemento($array, 5); // Salva posição recebida em variável para fazer comparação depois
echo ($posicao != -1 ? "Elemento encontrado na posição $posicao" : "Elemento não encontrado");
// Compara com diferente de -1 já que -1 sempre significa não encontrado e qualquer outro valor significa encontrado, e informa ao usuário

?>
