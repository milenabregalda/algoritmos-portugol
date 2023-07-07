programa
{
	/* Exercício 8 lista de exercícios 07.07.23:
	 * Faça um algoritmo que receba a idade de 5 pessoas e mostre mensagem informando "maior de idade" e "menor de idade"
	 * para cada pessoa. 
	 * Considere a idade a partir de 18 anos como maior de idade. 
	 */

	inclua biblioteca Util --> u

	inteiro idade = 0
	
	funcao inicio() {
		lerIdade()
	}

	funcao lerIdade() {
		para (inteiro i = 1; i <= 5; i++) {
			escreva("Digite a sua idade: ")
			leia(idade)
			se (idade >= 18) {
				escreverMaior()
			}
			senao {
				escreverMenor()
			}
			u.aguarde(2000)
			limpa()
		}
	}

	funcao escreverMaior() {
		escreva("\nMaior de idade.")
	}

	funcao escreverMenor() {
		escreva("\nMenor de idade.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 543; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */