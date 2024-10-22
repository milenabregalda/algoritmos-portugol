<?php
// Nome do cookie
$cookie_name = "user";
// Valor do cookie
$cookie_value = "John Doe";
// Tempo de expiração do cookie (30 dias a partir de agora)
$cookie_expire = time() + (86400 * 30); // 86400 segundos = 1 dia
// Definindo o cookie
setcookie($cookie_name, $cookie_value, $cookie_expire, "/"); // O "/" indica que o cookie está disponível em todo o site

// Verifica se o cookie foi definido
if (isset($_COOKIE[$cookie_name])) {
    // Se o cookie estiver definido, exibe seu valor
    echo "Cookie '$cookie_name' está definido como: " . $_COOKIE[$cookie_name];
} else {
    // Se o cookie não estiver definido, informa o usuário
    echo "Cookie '$cookie_name' não está definido. Recarregue a página.";
    /* Quando você define um cookie com setcookie(), ele é enviado ao navegador, mas não estará imediatamente disponível na mesma requisição.
    O cookie só estará disponível em requisições subsequentes, como quando você recarrega a página. */
}


