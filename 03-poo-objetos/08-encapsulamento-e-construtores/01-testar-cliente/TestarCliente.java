package com.mycompany.testarcliente;
import java.util.Scanner;

// Aula de 02/10/2023 - Exercício 1 dos slides de encapsulamento e construtores
// + Aula de 03/10/2023 - Alterações no exercício (mais construtores)
// + Aula de 04/10/2023 - Criação de nova classe e alterações para aprender de atributos e métodos static

public class TestarCliente {

    public static void main(String[] args) {
        // Código até 03/10 (comentado para aula de 04/10):
        
        /*Scanner input = new Scanner (System.in);
//      c.nome = "Milena"; Atributo privado não dá assim, só por método set
        
        // Setters e getters são necessários para atributos privados e melhores no geral
        // c.setNome("Teste"); 
        
        System.out.print("Informe o nome: ");
        String nome = input.nextLine();
        //c.setNome(nome); - Jeito explicado anteriormente
        
        System.out.print("Informe o endereço: ");
        String endereco = input.nextLine();
        //c.setEndereco(endereco);
        
//      System.out.print("Informe a renda: ");
//      float renda = input.nextFloat();
        //c.setRenda(renda);
        
        Cliente c = new Cliente(nome, endereco); // renda fixa de 1000

        System.out.println("\nDados informados");
        System.out.println("----------------");
        System.out.println("Nome: " + c.getNome());
        System.out.println("Endereço: " + c.getEndereco());
        System.out.println("Renda: " + c.getRenda());
        
        // Vários tipos de construtores:
        Cliente c2 = new Cliente ("Flávio", "Endereço 2", 5000.0f);
        Cliente c3 = new Cliente ("Maria", "Endereço 3");
        Cliente c4 = new Cliente ("João");
        
        System.out.println("\nDados informados do cliente 2");
        System.out.println("-------------------------------");
        System.out.println("Nome: " + c2.getNome());
        System.out.println("Endereço: " + c2.getEndereco());
        System.out.println("Renda: " + c2.getRenda());
        
        System.out.println("\nDados informados do cliente 3");
        System.out.println("-------------------------------");
        System.out.println("Nome: " + c3.getNome());
        System.out.println("Endereço: " + c3.getEndereco());
        System.out.println("Renda: " + c3.getRenda());
        
        System.out.println("\nDados informados do cliente 4");
        System.out.println("-------------------------------");
        System.out.println("Nome: " + c4.getNome());
        System.out.println("Endereço: " + c4.getEndereco());
        System.out.println("Renda: " + c4.getRenda());
        
        Cliente c5 = new Cliente();*/
        
        
        // Código de 04/10:
        
        //ContaCorrente c1 = new ContaCorrente();
        //System.out.println("Quantidade: " + c1.getQtdContas());
        // - aqui eu chamei um objeto da classe, dá certo, explicado no método
        //ContaCorrente c2 = new ContaCorrente();
        //System.out.println("Quantidade: " + c2.getQtdContas());
        //ContaCorrente c3 = new ContaCorrente();
        //System.out.println("Quantidade: " + c3.getQtdContas());
        
        ContaCorrente c1 = new ContaCorrente();
        ContaCorrente c2 = new ContaCorrente();
        int x = ContaCorrente.getQtdContas();
        // - aqui eu chamei a classe toda e atribuí o valor à variável x
        System.out.println("Quantidade: " + x);
    }
}