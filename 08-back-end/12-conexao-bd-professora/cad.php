<?php

include 'recebe.php';

class cad {
    private $id;
    private $nome;
    private $email;
    private $usuario;
    private $senha;

    public function setId($id) {
        $this->id = $id;
    }

    public function getId() {
        return $this->id;
    }

    public function setNome($nome) {
        $this->nome = $nome;
    }

    public function getNome() {
        return $this->nome;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function getEmail() {
        return $this->email;
    }

    public function setUsuario($usuario) {
        $this->usuario = $usuario;
    }

    public function getUsuario() {
        return $this->usuario;
    }

    public function setSenha($senha) {
        $this->senha = $senha;
    }

    public function getSenha() {
        return $this->senha;
    }
}

    //$recebe = new Recebe();
    $recebe->setId(1);
    $recebe->setNome($nome);
    $recebe->setEmail($email);
    $recebe->setUsuario($usuario);
    $recebe->setSenha($senha);

    echo "Nome: " . $recebe->getNome() . "<br><br>";
    echo "Email: " . $recebe->getEmail() . "<br><br>";
    echo "Usuário: " . $recebe->getUsuario() . "<br><br>";
    echo "Senha: " . $recebe->getSenha() . "<br><br>";
?>
