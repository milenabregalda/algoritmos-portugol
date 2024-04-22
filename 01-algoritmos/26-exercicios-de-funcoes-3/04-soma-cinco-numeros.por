programa
{
	/* Exercício 4 lista de exercícios 07.07.23:
	 * Escreva um algoritmo usando a estrutura ENQUANTO que leia uma sequência de cinco números,
	 * calcule e escreva o valor da soma desses cinco números. Após escrever o resultado de soma,
	 * pergunte ao usuário se ele deseja ler novo valor. O programa deve finalizar se a resposta do usuário for “não”. 
	 */

	inclua biblioteca Util --> u

	real num, soma = 0.0
	logico execucao = verdadeiro
	cadeia resposta = "a"
	
	funcao inicio() {
		enquanto (execucao) {
			soma = 0.0
			lerESomarNumeros()
			escreverSoma()
			u.aguarde(1000)
			perguntarContinuacao()
			se (resposta == "n" ou resposta == "N" ou resposta == "não" ou resposta == "NÃO" ou resposta == "nao" ou resposta == "NAO") {
				escreva("\nO programa vai finalizar.\n")
				execucao = falso
				pare
			}
		u.aguarde(1000)
		limpa()
		}
	}

	funcao lerESomarNumeros() {
		para (inteiro i = 1; i <= 5; i++) {
			escreva("Digite o número ",i,": ")
			leia(num)
			soma += num
		}
	}

	funcao escreverSoma() {
		escreva("A soma dos cinco números é igual a ",soma,".")
	}

	funcao perguntarContinuacao() {
		escreva("\n\nDeseja ler um novo valor? ")
		leia(resposta)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 841; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */