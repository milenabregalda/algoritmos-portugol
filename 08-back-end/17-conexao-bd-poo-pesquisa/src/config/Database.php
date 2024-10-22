<?php

// Classe que gerencia a conexão com o banco de dados
class Database {
    // Propriedades da classe que armazenam as informações necessárias para a conexão
    private $host = 'localhost';     // O host onde o banco de dados está localizado
    private $db_name = 'crud_poo';    // O nome do banco de dados
    private $username = 'root';        // Nome de usuário para acessar o banco de dados
    private $password = '';             // Senha para acessar o banco de dados
    public $conn;                       // Propriedade pública que armazenará a conexão com o banco de dados

    // Método que estabelece a conexão com o banco de dados
    public function getConnection() {
        $this->conn = null; // Inicializa a conexão como nula
        try {
            // Cria uma nova instância PDO para conectar ao banco de dados
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            // Define o modo de erro do PDO para exceções
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $exception) {
            // Se houver um erro na conexão, exibe uma mensagem de erro
            echo "Erro de conexão: " . $exception->getMessage();
        }
        // Retorna a conexão estabelecida
        return $this->conn;
    }
}

?>
