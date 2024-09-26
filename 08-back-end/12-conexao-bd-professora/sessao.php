<?php 
// Verifica se o valor 'valor' foi enviado via requisição (pode ser GET ou POST) e se o valor é igual a 'enviado'
// (que verifica se formulário já foi enviado corretamente)
if(isset($_REQUEST['valor']) and ($_REQUEST['valor'] == 'enviado')){
    // Inicia uma sessão para armazenar variáveis de sessão
    session_start();
    
    // Armazena o nome de usuário e a senha enviados via POST nas variáveis de sessão
    $_SESSION['usuario'] = $_POST['usuario'];
    $_SESSION['senha'] = $_POST['senha'];
    
    // Exibe um link para 'sessao2.php', que será a página acessada após o envio do formulário
    echo "<a href='sessao2.php'>Ir para a página da Empresa</a>";
} else {
    // Caso a condição acima não seja atendida (o formulário ainda não foi enviado), exibe o formulário HTML
?>
    <!-- Formulário HTML para capturar o nome de usuário e a senha -->
    <form name="form1" action="sessao2.php" value="enviado" method="POST">
        Digite seu Usuário:
        <input type="text" name="usuario"><br/>
        Digite sua Senha:
        <input type="text" name="senha"><br/>
        <!-- Botão para enviar o formulário -->
        <input type="submit" value="Enviar"><br/>
    </form>
<?php 
}
?>
