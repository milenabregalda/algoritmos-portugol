<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 4: Crie um script PHP que calcule o desconto em uma compra com base no valor total. Se o valor da compra for acima de R$ 100,00, conceda um desconto de 10%.

$valorTotal = 500.00;
$desconto = 0.0;
$valorFinal;

if($valorTotal >= 100.00) {
    $valorFinal = $valorTotal - ($valorTotal * 0.1);
    echo "Você teve um desconto de 10% e o valor da sua compra ficou em $valorFinal reais.";
} else {
    $valorFinal = $valorTotal;
    echo "Você não teve desconto e o valor da sua compra ficou em $valorFinal reais.";
}

?>