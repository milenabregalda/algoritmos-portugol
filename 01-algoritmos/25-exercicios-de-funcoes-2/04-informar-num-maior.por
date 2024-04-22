programa
{
	/* Exercício 4 lista de exercícios 04.07.23:
	 * Escrever um algoritmo que leia dois valores inteiros distintos e informe qual é o maior.
	 */

	inteiro num1 = 0, num2 = 0
	
	funcao inicio() {
		lerNumeros()
		se (num1 > num2) {
			avisarMaior(num1,num2)
		}
		senao se (num1 < num2) {
			avisarMaior(num2,num1)
		}
		senao {
			avisarIguais()
		}
	}

	funcao lerNumeros() {
		escreva("Digite um número inteiro: ")
		leia(num1)
		escreva("Digite outro número inteiro: ")
		leia(num2)
	}

	funcao avisarMaior(inteiro maior, inteiro menor) {
		escreva("\nO número ",maior," é maior do que o número ",menor,".")
	}

	funcao avisarIguais() {
		escreva("\nOs números são iguais.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 355; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */