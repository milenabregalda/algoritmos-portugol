<?php

// Inclui o arquivo de configuração da conexão com o banco de dados
include_once '../src/config/Database.php';
// Inclui o modelo de usuário que define a estrutura e as operações relacionadas aos usuários
include_once '../src/models/Usuario.php';

// Define a classe UsuarioController, responsável pela lógica de controle dos usuários
class UsuarioController {
    // Propriedades da classe
    private $database; // Armazena a instância da classe Database
    private $usuario;  // Armazena a instância da classe Usuario

    // Construtor da classe
    public function __construct() {
        // Cria uma nova instância de Database
        $this->database = new Database();
        // Obtém a conexão com o banco de dados através do método getConnection
        $db = $this->database->getConnection();
        // Cria uma nova instância de Usuario, passando a conexão do banco de dados
        $this->usuario = new Usuario($db);
    }

    // Método para criar um novo usuário
    public function createUsuario($nome, $email, $senha) {
        // Atribui os valores recebidos aos atributos do objeto usuario
        $this->usuario->nome = $nome;
        $this->usuario->email = $email;
        $this->usuario->senha = $senha;
        // Chama o método create do modelo Usuario para inserir o novo usuário no banco de dados
        return $this->usuario->create();
    }

    // Método para ler (listar) todos os usuários
    public function readUsuarios() {
        // Chama o método read do modelo Usuario para obter todos os usuários
        return $this->usuario->read();
    }

    // Método para atualizar um usuário existente
    public function updateUsuario($id, $nome, $email, $senha) {
        // Atribui os valores recebidos aos atributos do objeto usuario
        $this->usuario->id = $id; // Atribui o ID do usuário que será atualizado
        $this->usuario->nome = $nome;
        $this->usuario->email = $email;
        $this->usuario->senha = $senha; // Atribui a nova senha
        // Chama o método update do modelo Usuario para atualizar as informações do usuário no banco de dados
        return $this->usuario->update();
    }

    // Método para excluir um usuário
    public function deleteUsuario($id) {
        // Atribui o ID do usuário que será excluído
        $this->usuario->id = $id;
        // Chama o método delete do modelo Usuario para remover o usuário do banco de dados
        return $this->usuario->delete();
    }
}

?>
