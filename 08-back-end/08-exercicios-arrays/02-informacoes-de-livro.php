<?php

// Aula de 06/09/2024 - Lista de exercícios de PHP (Arrays)
// Exercício 2: Crie um array associativo para armazenar informações sobre um livro, incluindo título, autor e ano de publicação.
// Em seguida, adicione uma nova informação de gênero e imprima todas as informações do livro.

$livro = array(
    "titulo" => "Harry Potter e a Pedra Filosofal", // A chave "titulo" armazena o título do livro
    "autor" => "J. K. Rowling", // A chave "autor" armazena o nome do autor do livro
    "anoPublicacao" => 1997 // A chave "anoPublicacao" armazena o ano de publicação do livro
);

$livro["genero"] = "Fantasia"; // Adiciona uma nova chave "genero" ao array, armazenando o gênero do livro

print_r($livro); // Imprime todas as informações do array $livro

?>
