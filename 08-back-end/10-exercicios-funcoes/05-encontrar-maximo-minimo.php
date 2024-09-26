<?php

// Aula de 10/09/2024 - Lista de exercícios
// Exercício 5: Crie uma função chamada encontrarMaximoMinimo que recebe um array de números e retorna um array associativo
// com o valor máximo e o valor mínimo encontrados no array. 

function encontrarMaximoMinimo($arrayNumeros) {
    $valorMaximo = PHP_INT_MIN; // Constante do PHP para não escrever número negativo enorme manualmente, qualquer primeiro número será menor que ele
    $valorMinimo = PHP_INT_MAX; // Constante do PHP para não escrever número negativo enorme manualmente, qualquer primeiro número será menor que ele

    for ($i = 0; $i < count($arrayNumeros); $i++) { // Loop com o comprimento da string
        if ($arrayNumeros[$i] > $valorMaximo) { // Verifica se o número atual é maior que o valor máximo encontrado
            $valorMaximo = $arrayNumeros[$i]; // Atualiza o valor máximo
        } elseif ($arrayNumeros[$i] < $valorMinimo) { // Verifica se o número atual é menor que o valor mínimo encontrado
            $valorMinimo = $arrayNumeros[$i]; // Atualiza o valor mínimo
        }  
    }

    // NOTA: poderia ter usado funções min e max nativas do PHP colocando o array como parâmetro

    // Cria um array associativo com o valor máximo e o valor mínimo
    $info = array(
        "Valor máximo" => $valorMaximo,
        "Valor mínimo" => $valorMinimo,
    );

    return $info; // Retorna o array associativo
}

$arrayNumeros = array(10, 25, -40, 19, 238);

// Chama a função e armazena o resultado em $arrayInfo
$arrayInfo = encontrarMaximoMinimo($arrayNumeros);

// Imprime o array associativo com o valor máximo e o valor mínimo
print_r($arrayInfo);

?>
