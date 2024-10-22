<?php

/* Aula de 01/10/2024
Exercício: Crie um script que se conecte a um banco de dados MySQL; utilize mysqli para a conexão. */

function getConexaoBancoMySQL(): mysqli
{
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $bancoDeDados = "exercicio_usuarios";

    $con = new mysqli($servidor, $usuario, $senha, $bancoDeDados);

    if ($con->connect_error) {
        exit("Falha na conexão: $con->connect_error");
    }
    return $con;
}