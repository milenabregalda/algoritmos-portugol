<?php

// Aula de 25/09/2024 - Exemplo de como enviar e-mails com PHP
// (sem PHPMailer porque não funcionou nos computadores do Senac, aqui é feito o envio de e-mails diretamente utilizando comandos SMTP via sockets no PHP).

// Configurações do e-mail
$host = 'smtp.seudominio.com'; // Altere para o seu servidor SMTP (servidor responsável por enviar e-mails pela internet)
$port = 465; // Porta SSL
$username = 'seuemail@seudominio.com'; // Seu e-mail
$password = 'suasenha'; // Sua senha

$to = 'destinatario@exemplo.com'; // E-mail do destinatário
$subject = 'Assunto do E-mail';
$message = 'Olá, este é um teste de envio de e-mail usando SMTP com SSL.';

// Monta o cabeçalho do e-mail
$headers = "From: $username\r\n";
$headers .= "Reply-To: $username\r\n";
$headers .= "Content-Type: text/html; charset=UTF-8\r\n";

// Cria o contexto para o SSL
$context = stream_context_create([
    'ssl' => [
        'verify_peer' => true,
        'verify_peer_name' => true,
        'allow_self_signed' => false,
    ],
]);

// Cria a conexão direta com SMTP - Siga as instruções de configuração do smtp
$smtp = stream_socket_client("ssl://$host:$port", $errno, $errstr, 30, STREAM_CLIENT_CONNECT | STREAM_CLIENT_PERSISTENT, $context);

if (!$smtp) {
    die("Erro ao conectar: $errstr ($errno)");
}

// Função para enviar comandos e receber respostas
function sendCommand($smtp, $command) {
    fwrite($smtp, $command . "\r\n");
    return fgets($smtp, 512);
}

// Inicia a comunicação SMTP (autenticação e envio feitos manualmente)
sendCommand($smtp, "EHLO " . gethostname());
sendCommand($smtp, "AUTH LOGIN");
sendCommand($smtp, base64_encode($username));
sendCommand($smtp, base64_encode($password));
sendCommand($smtp, "MAIL FROM: <$username>");
sendCommand($smtp, "RCPT TO: <$to>");
sendCommand($smtp, "DATA");

// Envia o assunto e cabeçalhos corretamente
sendCommand($smtp, "Subject: $subject");
sendCommand($smtp, $headers);
sendCommand($smtp, ""); // Linha em branco para separar cabeçalho do corpo
sendCommand($smtp, $message);
sendCommand($smtp, "."); // Finaliza o bloco de dados
sendCommand($smtp, "QUIT");

// Fecha a conexão
fclose($smtp);
echo "E-mail enviado com sucesso!";


//CONFIGURAÇÕES:
//Configurações SMTP do Outlook
//Servidor SMTP: smtp.office365.com.
//Porta: 587 (saiba mais sobre os portas SMTP)
//Requer SSL: Sim.
//Requer TLS: Sim (se disponível)
//Autenticação: Sim (escolha Login se houver várias opções disponíveis)
//Nome de usuário: Seu endereço de e-mail Outlook completo (ex.: salman123@outlook.com)


?>

