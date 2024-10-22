<?php
require('fpdf186/fpdf.php');

/* Aula de 10/10/2024 - Geração de relatório em PDF
Código da professora */

// Criar uma nova instância do FPDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 16);

// Título do relatório
$pdf->Cell(0, 10, 'Relatório de Vendas', 0, 1, 'C');

// Adicionar uma linha em branco
$pdf->Ln(10);

// Definindo cabeçalhos da tabela
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(40, 10, 'Produto', 1);
$pdf->Cell(40, 10, 'Quantidade', 1);
$pdf->Cell(40, 10, 'Preço', 1);
$pdf->Cell(40, 10, 'Total', 1);
$pdf->Ln();

// Adicionando dados à tabela
$pdf->SetFont('Arial', '', 12);

// Supondo que você tenha um array de dados
$vendas = [
    ['produto' => 'Produto A', 'quantidade' => 2, 'preco' => 10],
    ['produto' => 'Produto B', 'quantidade' => 1, 'preco' => 15],
];

foreach ($vendas as $venda) {
    $total = $venda['quantidade'] * $venda['preco'];
    $pdf->Cell(40, 10, $venda['produto'], 1);
    $pdf->Cell(40, 10, $venda['quantidade'], 1);
    $pdf->Cell(40, 10, 'R$ ' . number_format($venda['preco'], 2), 1);
    $pdf->Cell(40, 10, 'R$ ' . number_format($total, 2), 1);
    $pdf->Ln();
}

// Salvar o PDF
$pdf->Output('D', 'relatorio_vendas.pdf'); // 'D' para download