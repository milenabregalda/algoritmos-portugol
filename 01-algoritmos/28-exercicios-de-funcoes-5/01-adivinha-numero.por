programa
{
	/* Exercício 1 lista de exercícios 14.07.23 (versão corrigida):
	 * Faça um algoritmo onde o usuário deve adivinhar um número sorteado entre 1 e 50. O usuário tem até 10 chances e o programa avisa se o número
	 * tentado é maior ou menor ao sorteado a cada tentativa. Caso o usuário não consiga adivinhar, informar o número correto.
	*/
	
	inclua biblioteca Util --> u

	inteiro num = 0, chute, jogadas = 10

	funcao inteiro sortear() {
		retorne u.sorteia(1,50) // Ao invés de declarar direto, retorna o valor para a variável na função inicio
	}

	funcao lerTentativa() {
		escreva("\nDigite um número para tentar adivinhar o número sorteado (dicas: entre 1 e 50, ",jogadas," tentativas restantes): ")
		leia(chute)
		jogadas--
	}

	funcao logico verificarTentativa() {
		se (chute < 1 ou chute > 50) {
			escreva("Número inválido. Tente novamente!\n")
			jogadas++
			retorne falso
		}

		senao se (chute == num) {
			retorne verdadeiro
		}
		
		senao se (num < chute) {
			escreva("Não foi dessa vez! O número é menor que sua tentativa.\n")
			retorne falso
		}
		
		senao {
			escreva("Não foi dessa vez! O número é maior que sua tentativa.\n")
			retorne falso
		}
	}
	
	funcao inicio() {
		num = sortear() // variável = dado retornado da função
		enquanto (jogadas > 0) {
			lerTentativa()
			se (verificarTentativa()) { // se função retorna verdadeiro e ganhou
				u.aguarde(2000)
				limpa()
				escreva("\nParabéns, você acertou!")
				u.aguarde(2000)
				escreva("\nO número sorteado é mesmo ",num,"! :) \n")
				u.aguarde(1000)
				pare
			}
			senao se (jogadas == 0) {
				u.aguarde(2000)
				limpa()
				escreva("\nAs tentativas acabaram! :(")
				u.aguarde(1000)
				escreva("\nO número sorteado é ",num,".\n")
				u.aguarde(1000)
				pare
			}
			u.aguarde(1000)
			limpa()
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */