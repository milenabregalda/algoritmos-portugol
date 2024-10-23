<?php
require 'conexao.php'; // Conecta com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Pega o nome do formulário
    $name = $_POST['name'];

    // Armazena o diretório onde as imagens serão salvas (o diretório atual src, volta uma pasta e vai para a pasta uploads)
    $uploadDir = __DIR__ . '/../uploads/';

    $fileName = basename($_FILES['foto']['name']);
    // Extrai o nome da imagem (exemplo: imagem.png), porque o usuário pode ter feito upload com o caminho completo de seu computador
    $targetFilePath = $uploadDir . $fileName; // O caminho de destino do upload é o diretório onde as imagens serão salvas + o nome da imagem

    // Verifica se o diretório de upload existe, caso contrário cria
    if (!is_dir($uploadDir)) {
        mkdir($uploadDir, 0777, true);
    }

    if (move_uploaded_file($_FILES['foto']['tmp_name'], $targetFilePath)) {
        /* Tenta salvar o arquivo na pasta uploads, pegando a imagem do método POST e salvando
       no diretório de upload definido nas linhas de código acima. Se o envio for bem-sucedido: */

        $relativePath = 'uploads/' . $fileName; // Define o caminho da imagem relativo à pasta do projeto para salvar no banco de dados

        // Insere o caminho da imagem no banco de dados
        $stmt = $pdo->prepare("INSERT INTO pessoas (nome, caminho_foto) VALUES (?, ?)");
        if ($stmt->execute([$name, $relativePath])) {
            echo "Cadastro realizado com sucesso!";
        } else {
            echo "Erro ao salvar no banco de dados.";
        }
    } else {
        echo "Erro ao enviar a imagem.";
    }
}
