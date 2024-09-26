<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 5: Crie um array associativo com nomes de produtos e seus preços.
// Ordene os produtos por preço em ordem crescente e filtre os produtos
// cujo preço é superior a um valor específico. Imprima os produtos filtrados.

// Criação do array com nomes de produtos e seus preços:
$produtos = array(
    "Notebook" => 3499.99,
    "Smartphone" => 1299.90,
    "Fones de Ouvido" => 199.99
);

asort($produtos); // Método que ordena o array por valores em ordem crescente
$filtro = 200; // Filtro para produtos cujo preço é superior a R$ 200,00

echo("Produtos com filtro (preço superior a R$ 200,00:\n\n");
// Verifica e imprime produtos cujo preço é superior ao filtro:
foreach ($produtos as $nome => $preco) {
    if ($preco > $filtro) {
        echo "Produto: $nome, Preço: R$ " . number_format($preco, 2, ',', '.') . "\n";
    }
}

?>
