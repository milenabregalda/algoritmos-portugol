<?php

/* Aula de 10/10/2024 - Geração de relatório em PDF
Exemplo de conexão com o banco de dados */

// Importar a biblioteca FPDF
require('fpdf186/fpdf.php');

// Conectar ao banco de dados
$host = 'localhost';
$dbname = 'banco_fpdf';
$username = 'root';
$password = '';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    // Estabelece a conexão utilizando variáveis criadas anteriormente como parâmetros
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Configura a conexão para que erros sejam lançados como exceções, permitindo um tratamento de erros mais robusto e informativo

    // Consultar os dados da tabela usuarios
    $stmt = $conn->prepare("SELECT nome, email FROM usuarios");
    $stmt->execute();

    // Criar um novo PDF
    $pdf = new FPDF();
    $pdf->AddPage();
    $pdf->SetFont('Arial', 'B', 12);

    // Título do PDF
    //$pdf->Cell(0, 10, 'Lista de Usuários', 0, 1, 'C');
    $pdf->Cell(0, 10, iconv('UTF-8', 'windows-1252', 'Lista de Usuários'), 0, 1, 'C');
    // Célula de título centralizado + conversão para mostrar acentos
    $pdf->Ln(10); // Linha em branco

    // Cabeçalho da tabela
    $pdf->Cell(90, 10, 'Nome', 1);
    $pdf->Cell(90, 10, 'E-mail', 1);
    $pdf->Ln();

    // Definindo a fonte para os dados
    $pdf->SetFont('Arial', '', 12);

    // Adicionar dados da tabela ao PDF
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        /*$pdf->Cell(90, 10, $row['nome'], 1);
        $pdf->Cell(90, 10, $row['email'], 1); */

        // Converte os valores de nome e email de UTF-8 para windows-1252 (para que os acentos apareçam
        // corretamente no Windows, e se a conversão der errado e/ou não for no Windows, ela é simplesmente ignorada):
        $nome = iconv('UTF-8', 'windows-1252//IGNORE', $row['nome']); // $str = iconv('UTF-8', 'windows-1252', $str);
        $email = iconv('UTF-8', 'windows-1252//IGNORE', $row['email']);

        // Adiciona os dados convertidos ao PDF
        $pdf->Cell(90, 10, $nome, 1);
        $pdf->Cell(90, 10, $email, 1);
        $pdf->Ln();
    }

    // Saída do PDF
    $pdf->Output();
} catch (PDOException $e) { // Para caso ocorra alguma exceção, tratando erros de conexão com o banco de dados e geração de PDFs
    echo "Erro: " . $e->getMessage();
}

/* Script de banco de dados utilizado:

CREATE DATABASE banco_fpdf;

USE banco_fpdf;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO usuarios (nome, email) VALUES 
('João da Silva', 'joao.dasilva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Pedro Santos', 'pedro.santos@email.com'),
('Ana Costa', 'ana.costa@email.com'),
('Lucas Pereira', 'lucas.pereira@email.com');

SELECT * FROM usuarios;

*/