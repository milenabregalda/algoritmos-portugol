<?php

// Aula de 03/09/2024 - Lista de exercícios de PHP (ternário)
// Exercício 4: Determine se a entrega é local (dentro do mesmo estado) ou nacional (em outro estado).

$estado = "RS";

$determinaEntrega = $estado == "RS" ? "A entrega é local." : "A entrega é nacional."; 
echo $determinaEntrega;

?>
