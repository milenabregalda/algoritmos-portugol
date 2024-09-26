<?php 
// Recebe os dados do formulário via POST
$email = $_POST['email'];
$novaSenha = $_POST['novaSenha'];
$repetirSenha = md5($_POST['repetirSenha']); // Criptografa a senha com MD5

// Conecta ao banco de dados usando mysqli
$connect = new mysqli('localhost', 'root', '', 'bancodedados');

// Verifica se a conexão foi bem-sucedida
if ($connect->connect_error) {
    die("Conexão falhou: " . $connect->connect_error);
}

// Verifica se o e-mail já está registrado no banco de dados
$query_select = "SELECT email FROM senha WHERE email = ?";
$stmt = $connect->prepare($query_select);
$stmt->bind_param("s", $email); // Usa 's' para string
$stmt->execute();
$result = $stmt->get_result();
$array = $result->fetch_assoc();
$logarray = $array['email'];

// Verifica se o campo de e-mail está vazio
if ($email == "" || $email == null) {
    // Exibe uma mensagem de alerta se o e-mail não for preenchido e redireciona para a página de senha
    echo "<script language='javascript' type='text/javascript'>
    alert('O campo login deve ser preenchido');window.location.href='senha.html';</script>";
} else {
    // Verifica se o e-mail já está registrado
    if ($logarray == $email) {
        // Exibe uma mensagem de alerta se o e-mail já existir e redireciona para a página de senha
        echo "<script language='javascript' type='text/javascript'>
        alert('Esse login já existe');window.location.href='senha.html';</script>";
        die(); // Encerra a execução do script
    } else {
        // Insere os dados no banco de dados
        $query = "INSERT INTO senha (email, novaSenha, redefinirSenha) VALUES (?, ?, ?)";
        $stmt = $connect->prepare($query);
        $stmt->bind_param("sss", $email, $novaSenha, $repetirSenha); // Usa 's' para strings
        $insert = $stmt->execute();
        
        // Verifica se a inserção foi bem-sucedida
        if ($insert) {
            // Exibe uma mensagem de sucesso e redireciona para a página de senha
            echo "<script language='javascript' type='text/javascript'>
            alert('Usuário cadastrado com sucesso!');window.location.href='senha.html';</script>";
        } else {
            // Exibe uma mensagem de erro e redireciona para a página de senha
            echo "<script language='javascript' type='text/javascript'>
            alert('Não foi possível cadastrar esse usuário');window.location.href='senha.html';</script>";
        }
    }
}

// Fecha a conexão
$connect->close();
?>
