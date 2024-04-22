programa
{
	/* Exercício 5 lista de exercícios 04.07.23:
	 * Faça um algoritmo que receba um número e mostre uma mensagem caso este número seja maior que 10. Caso contrário,
	 * mostre mensagem informando.
	 */

	inteiro num = 0
	
	funcao inicio() {
		receberNum()
		se (num > 10) {
			avisarMaior()
		}
		senao {
			avisarSenao()
		}
	}

	funcao receberNum() {
		escreva("Digite um número: ")
		leia(num)
	}

	funcao avisarMaior() {
		escreva("\nO número é maior do que 10.")
	}

	funcao avisarSenao(){
		escreva("\nO número é menor ou igual a 10.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */