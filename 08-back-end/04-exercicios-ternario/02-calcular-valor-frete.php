<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (ternário)
// Exercício 2: Calcule o valor do frete com base no valor da compra. Se a compra for acima de 100 reais, o frete é grátis; caso contrário, o frete é 10 reais.

$valorCompra = 110;

$mensagemFrete = $valorCompra > 100? "O frete é grátis." : "O frete é 10 reais."; 
echo $mensagemFrete;

?>
