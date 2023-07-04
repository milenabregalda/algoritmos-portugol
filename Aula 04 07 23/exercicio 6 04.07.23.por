programa
{
	/* Exercício 6 lista de exercícios 04.07.23:
	 * Faça um algoritmo que receba a idade de uma pessoa e mostre mensagem informando “maior de idade” ou “menor de idade”.
	 * Considere a idade a partir de 18 anos como maior de idade.
	 */

	inteiro idade = 0
	
	funcao inicio() {
		receberIdade()
		se (idade >= 18) {
			avisarMaior()
		}
		senao {
			avisarMenor()
		}
	}

	funcao receberIdade() {
		escreva("Informe a sua idade: ")
		leia(idade)
	}

	funcao avisarMaior() {
		escreva("\nMaior de idade.")
	}

	funcao avisarMenor(){
		escreva("\nMenor de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 538; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */