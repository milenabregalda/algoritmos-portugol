programa 
{

	/* Milena Bregalda 20.06.2023
	 * Exercício 5 da lista
	 * Escreva um algoritmo usando a estrutura REPITA que leia uma sequência de dois números, calcule e escreva o valor
	 * da soma desses dois números. Após escrever o resultado de soma, pergunte ao usuário se ele deseja ler novo valor.
	 * O programa deve finalizar se a resposta do usuário for igual a 'N'.
	*/

	inclua biblioteca Util --> u
 
	funcao inicio() {
		logico execucao = verdadeiro
		cadeia resposta = "s"
		inteiro soma

		enquanto (execucao) {
			soma = somarNumeros()
			escreva("\nO resultado da soma é ",soma,".\n\nDeseja ler um novo valor?\nSua resposta (s/n): ")
			leia(resposta)
			se (resposta == "n" ou resposta == "N") {
				execucao = falso
				pare
			}
			senao {
				u.aguarde(1000)
				limpa()
			}
		}
	}

	funcao inteiro somarNumeros() {
		inteiro i, num, soma = 0

		para (i = 1; i <= 2; i++) {
			escreva("Digite o número ",i,": ")
			leia(num)
			soma = soma + num
		}
		
		retorne soma
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 254; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */