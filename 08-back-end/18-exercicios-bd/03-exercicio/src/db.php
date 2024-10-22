<?php

/* Aula de 03/10/2024
Exercício: Crie a conexão com o Banco de Dados (db.php). */

function getConexaoBancoMySQL(): mysqli
{
    $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $bancoDeDados = "usuarios_db";

    $con = new mysqli($servidor, $usuario, $senha, $bancoDeDados);

    if ($con->connect_error) {
        exit("Falha na conexão: $con->connect_error");
    }
    return $con;
}
