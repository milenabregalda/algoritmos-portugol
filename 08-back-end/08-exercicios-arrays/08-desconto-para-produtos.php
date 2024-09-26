<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 8: Crie um array associativo onde as chaves são nomes de produtos e os valores são preços.
// Aplique um desconto de 10% em cada produto e imprima o nome e o preço com desconto dos produtos que custam mais de R$ 10.

// Array associativo com produtos e seus preços
$produtos = array(
    array("Doce", 15.99),       // Nome do produto e preço
    array("Refrigerante", 2.99), // Nome do produto e preço
    array("Camiseta", 19.99)     // Nome do produto e preço
);

// Aplica um desconto de 10% em cada produto
for ($i = 0; $i < count($produtos); $i++) { // Utilizei for ao invés de foreach porque o foreach não funcionou neste caso
    $valorDesconto = $produtos[$i][1] * 0.10;  // Calcula 10% de desconto
    $produtos[$i][1] -= $valorDesconto;        // Subtrai o desconto do preço original
}

// Exibe produtos que custam mais que R$ 10,00 com o preço atualizado
echo "Produtos que custam mais que R$ 10,00:\n\n";
foreach ($produtos as $produto) {
    if($produto[1] > 10.00) {  // Verifica se o preço com desconto é maior que R$ 10,00
        echo "Nome: " . $produto[0] . "\n"; // Imprime o nome do produto
        echo "Preço com desconto: R$ " . number_format($produto[1], 2, ',', '.') . "\n"; // Imprime o preço formatado com desconto
        echo "-----------------------------------------------\n";
    }
}

?>
