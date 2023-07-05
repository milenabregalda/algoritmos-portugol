programa
{
	/* Exercício 7 lista de exercícios 04.07.23:
	 * O imposto de renda de uma pessoa varia segundo uma tabela. 
	 * Se o salário for menor do que R$ 1.000,00, não há imposto;
	 * Se for entre R$ 1.000,00 e R$ 2.200,00, o imposto é de 13% do valor do salário;
	 * Se for maior do que R$ 2.200,00, o imposto é de 22%.
	 * Faça um algoritmo que dado um valor, em reais, correspondente a um salário,
	 * informe o valor que será recebido (total menos imposto).
	 */

	real salarioBruto = 0.0, salarioLiquido = 0.0, calculoImposto
	
	funcao inicio() {
		perguntarSalario()
		se (salarioBruto < 1000.0) {
			zerarImposto()
		}
		senao se (salarioBruto >= 1000.0 e salarioBruto <= 2200.0) {
			calcularImposto(0.13)
		}
		senao {
			calcularImposto(0.22)
		}
		informarSalario()
	}

	funcao perguntarSalario() {
		escreva("Digite o valor do salário bruto: ")
		leia(salarioBruto)
	}

	funcao calcularImposto(real imposto) {
		real porcImposto
		porcImposto = imposto * 100
		calculoImposto = salarioBruto * imposto
		salarioLiquido = salarioBruto - calculoImposto
		escreva("\nVocê tem que pagar ",porcImposto,"% de imposto de renda.")
	}

	funcao zerarImposto(){
		salarioLiquido = salarioBruto
		escreva("\nComo o seu salário é menor do que 1000 reais, você não precisa pagar o imposto de renda.")
	}

	funcao informarSalario() {
		escreva("\nO salário ficou em R$ ",salarioLiquido,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1128; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {salarioBruto, 12, 6, 12}-{salarioLiquido, 12, 26, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
