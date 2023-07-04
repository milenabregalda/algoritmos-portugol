programa
{
	/* Exercício 8 lista de exercícios 04.07.23:
	 *  Escreva um algoritmo que receba o salário e o tempo de serviço em anos.
	 *  Calcule o limite de empréstimo considerando a tabela abaixo:
	 *  Salário até R$ 1.000,00 e tempo de empresa menor que 2 anos: comprometimento de 10% do salário;
	 *  Salário entre R$ 1.001,00 e R$ 3.000,00 e tempo de empresa entre 2 anos e 4 anos : comprometimento de 25% do salário;
	 *  Salário entre R$ 3.001,00 e R$ 5.000,00 e tempo de empresa entre 4 anos e 6 anos : comprometimento de 40% do salário;
	 *  Salário acima de R$ 5.000,00: : comprometimento de 50% do salário;
	 */

	real salario = 0.0
	inteiro anosNaEmpresa = 0
	
	funcao inicio() {
		receberSalarioETempo()
		se (salario <= 1000.0 e anosNaEmpresa < 2) {
			
		}
		senao se (salario >= 1001.0 e salario <= 3000.0 e anosNaEmpresa >= 2 e anosNaEmpresa < 4) {
			
		}
		senao se (salario >= 3001.0 e salario <= 5000.0 e anosNaEmpresa >= 4 e anosNaEmpresa <= 6) {
			
		}
		senao se (salario > 5000.0) {
			
		}
	}

	funcao receberSalarioETempo() {
		escreva("Qual é o salário? ")
		leia(salario)
		escreva("Quantos anos de serviço?")
		leia(anosNaEmpresa)


	}

	funcao calcularImposto(real imposto) {
		


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