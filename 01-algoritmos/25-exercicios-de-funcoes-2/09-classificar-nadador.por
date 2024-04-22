programa
{
	/* Exercício 9 lista de exercícios 04.07.23:
	 * Elabore um algoritmo que, dada a idade de um nadador. Classifique-o em uma das seguintes categorias:
	 * Infantil A = 5 - 7 anos
	 * Infantil B = 8 - 10 anos
	 * Juvenil A = 11- 13 anos
	 * Juvenil B = 14 - 17 anos
	 * Sênior = 18 - 25 anos
	 * Apresentar mensagem “idade fora da faixa etária” quando for outro ano não contemplado. 
	 */

	inteiro idade = 0
	
	funcao inicio() {
		perguntarIdade()
		se (idade >= 5 e idade <= 7) {
			informarCategoria("Infantil A")
		}
		senao se (idade >= 8 e idade <= 10) {
			informarCategoria("Infantil B")
		}
		senao se (idade >= 11 e idade <= 13) {
			informarCategoria("Juvenil A")
		}
		senao se (idade >= 14 e idade <= 17) {
			informarCategoria("Juvenil B")
		}
		senao se (idade >= 18 e idade <= 25) {
			informarCategoria("Sênior")
		}
		senao {
			informarInvalido()
		}
	}

	funcao perguntarIdade() {
		escreva("Digite a idade do nadador: ")
		leia(idade)
	}

	funcao informarCategoria(cadeia categ) {
		escreva("O nadador está classificado na categoria ",categ,".")
	}

	funcao informarInvalido() {
		escreva("Idade fora da faixa etária.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */