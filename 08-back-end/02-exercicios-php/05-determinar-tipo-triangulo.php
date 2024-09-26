<?php

// Aula de 29/08/2024 - Lista de exercícios de PHP
// Exercício 5: Crie um script PHP que determine o tipo de um triângulo com base no comprimento dos seus lados.
// Considere que os lados são fornecidos como variáveis. O triângulo pode ser equilátero
// (os três lados têm a mesma medida), isósceles (dois lados têm a mesma medida) ou escaleno (todos os lados são diferentes).

$lado1 = 1;
$lado2 = 2;
$lado3 = 2;

if ($lado1 == $lado2 && $lado2 == $lado3) {
    // Se o lado 1 é igual ao lado 2, então verificar se o lado 2 é igual ao lado 3 já verifica se o lado 1 é igual ao 3 indiretamente
    echo "O triângulo é equilátero (os seus três lados têm a mesma medida).";
} else if ($lado1 == $lado2 || $lado1 == $lado3 || $lado2 == $lado3) {
    // Nesse caso, devemos verificar as três possibilidades, já que são várias combinações de lados.
    // Se pelo menos uma for verdadeira, pelo menos dois lados são iguais.
    // Else if impede que os três lados sejam iguais, porque se fossem, a verificação acima seria verdadeira, e a execução do código não chegaria aqui.
    echo "O triângulo é isósceles (dois lados têm a mesma medida).";
} else { // Se três lados não são iguais e dois lados não são iguais, então todos os lados são diferentes
    echo "O triângulo é escaleno (todos os lados são diferentes).";
}

?>