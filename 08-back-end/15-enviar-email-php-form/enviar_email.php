<?php

// Aula de 25/09/2024 - Exemplo de como enviar e-mails com PHP via SMTP
// Para funcionar: habilitar extension=openssl em php.ini (XAMPP > Apache > Config > abrir php.ini e tirar ; de extension=openssl > reiniciar servidor)

// Verifica se o e-mail foi enviado pelo formulário
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $to = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL); // E-mail do destinatário

    if ($to === false) {
        die('Endereço de e-mail inválido.');
    }

    // Configurações do servidor SMTP para Gmail
    $host = 'smtp.gmail.com'; // Host do Gmail
    $port = 587; // Porta para TLS
    $username = 'esteemailnaoexiste@email.com'; // Aqui deve ficar e-mail criado somente para testes 
    $password = 'senhaquenaoevalida'; // Senha do e-mail (obviamente não é seguro por vários motivos) ou senha de aplicativo 

    // Assunto e corpo da mensagem
    $subject = 'E-mail do PHP';
    $message = 'Veja só como o PHP é legal!';

    // Monta o cabeçalho do e-mail
    $headers = "From: $username\r\n";
    $headers .= "Reply-To: $username\r\n";
    $headers .= "Content-Type: text/html; charset=UTF-8\r\n";

    // Cria o contexto para o TLS
    $context = stream_context_create([
        'ssl' => [
            'verify_peer' => true,
            'verify_peer_name' => true,
            'allow_self_signed' => false,
        ],
    ]);

    // Conecta ao servidor SMTP
    $smtp = stream_socket_client("tcp://$host:$port", $errno, $errstr, 30, STREAM_CLIENT_CONNECT | STREAM_CLIENT_PERSISTENT, $context);

    if (!$smtp) {
        die("Erro ao conectar: $errstr ($errno)");
    }

    // Função para enviar comandos ao servidor SMTP
    function sendCommand($smtp, $command) {
        fwrite($smtp, $command . "\r\n");
        return fgets($smtp, 512);
    }

    // Inicia a comunicação SMTP
    sendCommand($smtp, "EHLO " . gethostname());
    //sendCommand($smtp, "STARTTLS"); // Inicia TLS
    stream_socket_enable_crypto($smtp, true, STREAM_CRYPTO_METHOD_TLS_CLIENT); // Habilita criptografia

    // Autenticação SMTP
    sendCommand($smtp, "AUTH LOGIN");
    sendCommand($smtp, base64_encode($username));
    sendCommand($smtp, base64_encode($password));

    // Envio do e-mail
    sendCommand($smtp, "MAIL FROM: <$username>");
    sendCommand($smtp, "RCPT TO: <$to>");
    sendCommand($smtp, "DATA");

    // Envia o assunto e cabeçalho corretamente
    sendCommand($smtp, "Subject: $subject");
    sendCommand($smtp, $headers);
    sendCommand($smtp, ""); // Linha em branco para separar o cabeçalho do corpo
    sendCommand($smtp, $message);
    sendCommand($smtp, "."); // Finaliza o bloco de dados
    sendCommand($smtp, "QUIT");

    // Fecha a conexão SMTP
    fclose($smtp);

    echo "E-mail enviado com sucesso para $to.6";
} else {
    echo "Método de envio incorreto.";
}
?>
