programa
{
	/* Exercício 2 lista de exercícios 10.07.23:
	 * Crie um algoritmo que faça o preenchimento automático de um vetor de 50 posições
	 * com os números ímpares existentes entre 0 e 100.
	 */
	 
	inclua biblioteca Util --> u
	
	inteiro i, vetor[50], num

	funcao preencherVetor() {
		para (i = 0; i < 50; i++) {
			num = u.sorteia(0,100)
			se (num % 2 == 1) {
				vetor[i] = num
			}
			senao {
				i--
			}	
		}
	}

	funcao escreverVetor() {
		escreva("Vetor com números ímpares existentes entre 0 e 100:\n")
		para (i = 0; i < 50; i++) {
			escreva(vetor[i]," ")
		}
	}

	funcao inicio() {
		preencherVetor()
		escreverVetor()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 451; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */