<?php
require('fpdf186/fpdf.php'); // Importa os arquivos da biblioteca FPDF

/* Aula de 10/10/2024 - Geração de relatório em PDF
FPDF é uma classe de PHP que permite a geração de arquivos PDF sem o uso da biblioteca PDFlib.
A letra "F" de FPDF significa "Free", ou seja, pode ser usada para qualquer tipo de uso e modificada de acordo com as necessidades.

FPDF pode ser baixada em http://www.fpdf.org/. */


// Criar uma nova instância do FPDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 12);

// Título
//$pdf->Cell(0, 10, 'Relatório de Vendas', 0, 1, 'C'); // Célula de título centralizado
$pdf->Cell(0, 10, iconv('UTF-8', 'windows-1252', 'Relatório de vendas'), 0, 1, 'C');
// Célula de título centralizado + conversão para mostrar acentos

// Inserir uma imagem
$pdf->Image('logo.png', 10, 10, 30);
$pdf->Ln(); // Quebra de linha
$pdf->Ln();
$pdf->Ln();

// Cabeçalho da tabela
$pdf->Cell(40, 10, iconv('UTF-8', 'windows-1252', 'Produto'), 1);
// Conversão para caracteres aparecerem corretamente no Windows
$pdf->Cell(40, 10, iconv('UTF-8', 'windows-1252', 'Quantidade'), 1);
$pdf->Cell(40, 10, iconv('UTF-8', 'windows-1252', 'Preço'), 1);
$pdf->Ln();


// Adicionar produtos - forma simples
$pdf->Cell(40, 10, 'Teclado', 1);
$pdf->Cell(40, 10, '5', 1);
$pdf->Cell(40, 10, 'R$ 100,00', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'Mouse', 1);
$pdf->Cell(40, 10, '3', 1);
$pdf->Cell(40, 10, 'R$ 50,00', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'Monitor', 1);
$pdf->Cell(40, 10, '2', 1);
$pdf->Cell(40, 10, 'R$ 600,00', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'Cadeira', 1);
$pdf->Cell(40, 10, '1', 1);
$pdf->Cell(40, 10, 'R$ 400,00', 1);
$pdf->Ln();

$pdf->Cell(40, 10, 'Webcam', 1);
$pdf->Cell(40, 10, '4', 1);
$pdf->Cell(40, 10, 'R$ 200,00', 1);
$pdf->Ln();


// Adicionar produtos - forma com array e conversão de caracteres:
$produtos = [
    ['Sofá', '1', 'R$ 1200,00'],
    ['Xícara', '3', 'R$ 30,00'],
];

foreach ($produtos as $produto) {
    foreach ($produto as $item) {
        $pdf->Cell(40, 10, iconv('UTF-8', 'windows-1252', $item), 1);
    }
    $pdf->Ln();
}


// Gerar o PDF e mostrar no navegador
$pdf->Output();
