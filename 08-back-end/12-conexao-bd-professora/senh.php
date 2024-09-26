<?php
// Define a classe Senh para manipular as informações de redefinição de senha
class Senh {
    // Propriedades privadas da classe para armazenar dados
    private $ID;
    private $email;
    private $novaSenha;
    private $repetirSenha;
    
    // Método para definir o ID
    public function setID($ID) {
        $this->ID = $ID;
    }
    
    // Método para obter o ID (deveria retornar $this->ID em vez de $ID)
    public function getID() {
        return $this->ID;
    }
    
    // Método para definir o email
    public function setEmail($email) {
        $this->email = $email;
    }
    
    // Método para obter o email (deveria retornar $this->email em vez de $email)
    public function getEmail() {
        return $this->email;
    }
    
    // Método para definir a nova senha
    public function setNovaSenha($novaSenha) {
        $this->novaSenha = $novaSenha;
    }
    
    // Método para obter a nova senha (deveria retornar $this->novaSenha em vez de $novaSenha)
    public function getNovaSenha() {
        return $this->novaSenha;
    }
    
    // Método para definir a senha repetida
    public function setSenha($repetirSenha) {
        $this->repetirSenha = $repetirSenha;
    }
    
    // Método para obter a senha repetida (deveria retornar $this->repetirSenha em vez de $repetirSenha)
    public function getSenha() {
        return $this->repetirSenha;
    }
}

// Criar uma instância da classe Senh (não Recebe)
$recebe = new Senh();

// Definir valores para a instância da classe Senh (precisa de valores reais para $ID, $email, etc.)
$recebe->setID(1); // Aqui seria necessário passar um valor para ID
$recebe->setEmail($email); // $email deve ser uma variável com o email do usuário
$recebe->setNovaSenha($novaSenha); // $novaSenha deve ser uma variável com a nova senha
$recebe->setSenha($repetirSenha); // $repetirSenha deve ser uma variável com a senha repetida

// Exibir as informações armazenadas na instância da classe Senh
echo 'Email: '. $recebe->getEmail() ."<br><br>"; // Exibir o email do usuário
echo 'Nova Senha: '. $recebe->getNovaSenha() ."<br><br>"; // Exibir a nova senha
echo 'Repetir Senha: '. $recebe->getSenha() ."<br><br>"; // Exibir a senha repetida
?>
