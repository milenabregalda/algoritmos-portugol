programa
{
	/* Exercício 8 lista de exercícios 04.07.23:
	 *  Escreva um algoritmo que receba o salário e o tempo de serviço em anos.
	 *  Calcule o limite de empréstimo considerando a tabela abaixo:
	 *  Salário até R$ 1.000,00 e tempo de empresa menor que 2 anos: comprometimento de 10% do salário;
	 *  Salário entre R$ 1.001,00 e R$ 3.000,00 e tempo de empresa entre 2 anos e 4 anos: comprometimento de 25% do salário;
	 *  Salário entre R$ 3.001,00 e R$ 5.000,00 e tempo de empresa entre 4 anos e 6 anos: comprometimento de 40% do salário;
	 *  Salário acima de R$ 5.000,00: comprometimento de 50% do salário;
	 */

	real salario = 0.0, limiteEmprestimo = 0.0
	inteiro anosNaEmpresa = 0
	
	funcao inicio() {
		receberSalario()
		receberTempo()
		se (salario <= 1000.0 e anosNaEmpresa < 2) {
			calcularLimiteEmprestimo(0.1)
		}
		senao se (salario >= 1001.0 e salario <= 3000.0 e anosNaEmpresa >= 2 e anosNaEmpresa < 4) {
			calcularLimiteEmprestimo(0.25)
		}
		senao se (salario >= 3001.0 e salario <= 5000.0 e anosNaEmpresa >= 4 e anosNaEmpresa <= 6) {
			calcularLimiteEmprestimo(0.4)
		}
		senao se (salario > 5000.0) {
			calcularLimiteEmprestimo(0.5)
		}
	}

	funcao receberSalario() {
		escreva("Quanto você recebe de salário? ")
		leia(salario)
	}

	funcao receberTempo() {
		escreva("Você tem quantos anos de serviço na empresa? ")
		leia(anosNaEmpresa)
	}

	funcao calcularLimiteEmprestimo(real emprestimo) {
		real porcEmprestimo
		porcEmprestimo = emprestimo * 100
		limiteEmprestimo = salario * 	emprestimo
		escreva("\nO seu limite de empréstimo é ",porcEmprestimo,"% do seu salário e fica em R$ ",limiteEmprestimo,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1017; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
