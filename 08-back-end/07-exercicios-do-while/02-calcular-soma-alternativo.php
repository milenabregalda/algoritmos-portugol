<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soma de Números Positivos</title>
</head>

<!-- Aula de 05/09/2024 - Lista de exercícios de PHP (Do-while)
     Exercício 2: Crie um script PHP que peça ao usuário para inserir números positivos e calcule a soma desses números.
     O loop deve continuar até que o usuário insira um número negativo. -->

<body>
    <?php
    // Iniciar a sessão para armazenar o valor da soma
    session_start();

    // Inicializar a soma se não estiver definida na sessão
    if (!isset($_SESSION['soma'])) {
        $_SESSION['soma'] = 0;
    }

    // Verificar se o formulário foi enviado
    if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['numero'])) {
        $numero = (int)$_POST['numero'];

        // Atualizar a soma apenas se o número for positivo
        if ($numero >= 0) {
            $_SESSION['soma'] += $numero;
        } else {
            // Se o número for negativo, reiniciar a soma
            $_SESSION['soma'] = 0;
        }
    }
    ?>

    <h1>Soma de Números Positivos</h1>
    <form method="post">
        <label for="numero">Digite um número:</label>
        <input type="number" id="numero" name="numero" required>
        <button type="submit">Adicionar</button>
    </form>

    <p>
        Soma atual: <?php echo $_SESSION['soma']; ?>
    </p>
</body>
</html>