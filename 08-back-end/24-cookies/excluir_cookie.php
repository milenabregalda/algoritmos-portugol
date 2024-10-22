<?php
// Limpando o cookie
setcookie("user", "", time() - 3600, "/"); // Define o cookie para expirar 1 hora atrás, removendo-o

// Verifica se o cookie foi removido
if (!isset($_COOKIE["user"])) {
    // Se o cookie não estiver mais definido, confirma que foi removido
    echo "Cookie 'user' foi limpo.";
} else {
    // Se o cookie ainda estiver presente, informa o usuário
    echo "Cookie 'user' ainda está presente. Recarregue a página.";
    /* Quando você define um cookie com setcookie(), ele é enviado ao navegador, mas não estará imediatamente disponível na mesma requisição.
    O cookie só estará disponível em requisições subsequentes, como quando você recarrega a página. */
}


