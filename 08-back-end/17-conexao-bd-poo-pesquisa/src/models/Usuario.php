<?php

// Define a classe Usuario
class Usuario {
    // Propriedades privadas
    private $conn; // Armazena a conexão com o banco de dados
    private $table_name = "usuarios"; // Nome da tabela no banco de dados

    // Propriedades públicas para os atributos do usuário
    public $id; // ID do usuário
    public $nome; // Nome do usuário
    public $email; // Email do usuário
    public $senha; // Senha do usuário

    // Construtor da classe que é chamado ao instanciar um objeto da classe
    public function __construct($db) {
        $this->conn = $db; // Inicializa a conexão com o banco de dados
    }

    // Método para criar um novo usuário
    public function create() {
        // Prepara a consulta SQL para inserir um novo registro na tabela
        $query = "INSERT INTO " . $this->table_name . " SET nome = :nome, email = :email, senha = :senha";
        $stmt = $this->conn->prepare($query); // Prepara a declaração SQL

        // Faz o mapeamento dos parâmetros da consulta
        $stmt->bindParam(':nome', $this->nome); // Associa o parâmetro :nome à propriedade nome do objeto
        $stmt->bindParam(':email', $this->email); // Associa o parâmetro :email à propriedade email do objeto
        
        // Armazenando a senha hasheada em uma variável para segurança
        $senhaHashed = password_hash($this->senha, PASSWORD_DEFAULT); // Criptografa a senha antes de armazená-la
        $stmt->bindParam(':senha', $senhaHashed); // Associa o parâmetro :senha à senha hasheada

        // Executa a consulta e retorna o resultado da execução
        return $stmt->execute(); // Retorna verdadeiro em caso de sucesso, falso em caso de erro
    }

    // Método para ler todos os usuários
    public function read() {
        // Prepara a consulta SQL para selecionar todos os registros da tabela
        $query = "SELECT * FROM " . $this->table_name;
        $stmt = $this->conn->prepare($query); // Prepara a declaração SQL
        $stmt->execute(); // Executa a consulta e prepara os resultados

        // Retorna todos os registros encontrados como um array associativo
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    // Método para atualizar as informações de um usuário
    public function update() {
        // Prepara a consulta SQL para atualizar um registro existente na tabela
        $query = "UPDATE " . $this->table_name . " SET nome = :nome, email = :email, senha = :senha WHERE id = :id";
        $stmt = $this->conn->prepare($query); // Prepara a declaração SQL

        // Faz o mapeamento dos parâmetros da consulta
        $stmt->bindParam(':nome', $this->nome); // Associa o parâmetro :nome à propriedade nome do objeto
        $stmt->bindParam(':email', $this->email); // Associa o parâmetro :email à propriedade email do objeto
        
        // Armazenando a senha hasheada em uma variável para segurança
        $senhaHashed = password_hash($this->senha, PASSWORD_DEFAULT); // Criptografa a nova senha
        $stmt->bindParam(':senha', $senhaHashed); // Associa o parâmetro :senha à nova senha hasheada
        $stmt->bindParam(':id', $this->id); // Associa o parâmetro :id à propriedade id do objeto
        
        // Executa a consulta e retorna o resultado da execução
        return $stmt->execute(); // Retorna verdadeiro em caso de sucesso, falso em caso de erro
    }

    // Método para excluir um usuário
    public function delete() {
        // Prepara a consulta SQL para deletar um registro da tabela
        $query = "DELETE FROM " . $this->table_name . " WHERE id = :id";
        $stmt = $this->conn->prepare($query); // Prepara a declaração SQL
        $stmt->bindParam(':id', $this->id); // Associa o parâmetro :id à propriedade id do objeto
        
        // Executa a consulta e retorna o resultado da execução
        return $stmt->execute(); // Retorna verdadeiro em caso de sucesso, falso em caso de erro
    }
}

?>
