package com.mycompany.testarrelacionamentos;

// Aula de 16/10/2023
// Relacionamentos entre classes (tem um e tem muitos)

public class TestarRelacionamentos {

    public static void main(String[] args) {
        Contato contato = new Contato();
        contato.setNome("Milena");

        Endereco end = new Endereco();
        end.setNomeRua("Rua da Alegria");
        end.setNumero("n/a");
        end.setComplemento("-");
        end.setCidade("Porto Feliz");
        end.setEstado("Rio Grande do Sudeste");
        end.setCep("1234567");

        contato.setEndereco(end);

        Telefone telefone = new Telefone();
        telefone.setTipo("Celular");
        telefone.setDdd("51");
        telefone.setNumero("99999-9999");

        Telefone telefone2 = new Telefone();
        telefone2.setTipo("Casa");
        telefone2.setDdd("51");
        telefone2.setNumero("88888-8888");

        Telefone[] telefones = new Telefone[2];
        telefones[0] = telefone;
        telefones[1] = telefone2;
        // Instanciar objetos de telefone e depois passar para Array 

        contato.setTelefones(telefones);

        System.out.println(contato.getNome());

        // Importante questão de segurança
        // para não dar erros de exceções quando mostrar dados:
        
        if (contato != null && contato.getEndereco() != null){
            // System.out.println(contato.getEndereco());
            // acima não mostra o endereço, e sim uma referência de memória dele
            // (usar método que retorna String se quiser mostrar o endereço)
            
            System.out.println(contato.getEndereco().getCidade());
            // para ver a cidade, tem que entrar no endereço e depois nela
        }

        if (contato != null && contato.getTelefones() != null){
            for (Telefone t : contato.getTelefones()){
                    System.out.println(t.getDdd() + " " + t.getNumero());
            }
        }
    }
}