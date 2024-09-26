<?php
// Definindo o endereço de e-mail do destinatário
$to = "destinatario@example.com";

// Definindo o assunto do e-mail
$subject = "Assunto do E-mail";

// Definindo a mensagem do e-mail
$message = "
<html>
<head>
  <title>Este é um e-mail enviado pelo PHP</title>
</head>
<body>
  <h1>Olá!</h1>
  <p>Este é um exemplo de envio de e-mail com PHP sem PHPMailer.</p>
</body>
</html>
";

// Definindo o cabeçalho para e-mails HTML
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

// Adicionando o remetente ao cabeçalho
$headers .= "From: remetente@example.com" . "\r\n";

// Enviando o e-mail
if(mail($to, $subject, $message, $headers)) {
    echo "E-mail enviado com sucesso!";
} else {
    echo "Falha no envio do e-mail.";
}
?>
