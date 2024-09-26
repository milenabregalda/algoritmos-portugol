<?php

include 'cad.php';
require 'conexao_bd.php';
require 'salvar.php';
require 'deletar.php';
require 'atualizar.php';
require 'filtrar.php';

$nome = $_POST['nome'];
$email = $_POST['email'];
$usuario = $_POST['usuario'];
$senha = MD5($_POST['senha']); // Criptografia de senha

?>