package com.mycompany.testarempregado;
import java.util.Scanner;

// Aula de 03/10/2023 - Exercício 1:
// Crie uma classe em Java chamada Empregado que inclui três partes de informações como variáveis de
// instância - nome (String), sobrenome (String) e um salário mensal (double). A classe deve ter um
// construtor, métodos get e set para cada variável de instância. Escreva um aplicativo de teste
// chamado EmpregadoTeste que cria dois objetos Empregado e exibe o salário anual de cada objeto.
// Então dê a cada Empregado um aumento de 10% e exiba novamente o salário anual de cada Empregado.
// Com algumas modificações que o professor pediu.

// + Aula de 06/10/2023 - Criação de classe gerente para aprender sobre herança

public class TestarEmpregado {

    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        
        Empregado e1 = new Empregado("Milena", "Bregalda", 5000.00);
        Empregado e2 = new Empregado("Júlio", "Barros", 1500.00);
        
        e1.dados();
        e1.mostrarSalarioAnual();
        // Comentado por enquanto por não ser relevante à nova explicação:
        /* System.out.print("\nQual é a porcentagem do aumento? ");
        double porcentagem = ler.nextDouble();
        e1.aumentarSalario(porcentagem);
        e1.dados();
        e1.mostrarSalarioAnual();

        // se usar sout para informar salário anual várias vezes, é bom criar método para isso
        // se usar retorno de método diretamente em main várias vezes,
        // atribuir valor para variável para otimização do programa
        
        e2.dados();
        e2.mostrarSalarioAnual();
        e2.aumentarSalario(10);
        e2.dados();
        e2.mostrarSalarioAnual(); */
        
        Gerente g1 = new Gerente(887799, "Maria", "Silva", 12000.00);
        g1.dados(); // métodos de superclasse Funcionario também podem ser usados em subclasse Gerente
        // tanto usando direto o método de Empregado como criando Override em Gerente
    }
}