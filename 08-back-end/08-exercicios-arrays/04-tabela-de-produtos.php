<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 4: Crie um array multidimensional que represente uma tabela de produtos, onde cada produto tem um nome, preço e quantidade.
// Calcule e imprima o valor total de cada produto (preço * quantidade) e o valor total de todos os produtos.

$valorTotalTodosProdutos = 0.0; // Inicializa a variável para armazenar o valor total de todos os produtos

// Cria o array multidimensional com informações dos produtos
$produtos = array(
    array("Notebook", 3499.99, 10),     // Dados do primeiro produto
    array("Smartphone", 1299.90, 15),   // Dados do segundo produto
    array("Fones de Ouvido", 199.99, 18) // Dados do terceiro produto
);

// Itera sobre o array multidimensional de produtos
foreach ($produtos as $produto) {
    $valorTotalProdutoAtual = $produto[1] * $produto[2]; // Calcula o valor total do produto atual (preço * quantidade)
    $valorTotalTodosProdutos += $valorTotalProdutoAtual; // Adiciona o valor total do produto atual ao valor total de todos os produtos

    // Exibe o valor total do produto atual com formatação (coloca variável entre {} e formata ao lado):
    echo "Valor total de {$produto[0]}: R$ " . number_format($valorTotalProdutoAtual, 2, ',', '.') . "\n";
}

// Exibe o valor total de todos os produtos com formatação (coloca variável entre {} e formata ao lado):
echo "\nValor total de todos os produtos: R$ " . number_format($valorTotalTodosProdutos, 2, ',', '.');

?>
