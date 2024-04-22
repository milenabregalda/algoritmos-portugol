programa
{
	/* Exercício 14 lista de exercícios 07.07.23:
	 * Escreva um vetor de 5 posições, crie um novo vetor, também de 5 posições e insira os valores
	 * do primeiro vetor de ordem inversa e mostre os dois vetores no final.
	 */

	inclua biblioteca Util --> u

	inteiro vetor[5], vetorInverso[5], i, i2 = 0
	
	funcao inicio() {
		lerVetor()
		preencherVetorInverso()
		u.aguarde(1000)
		limpa()
		escreverVetor()
		escreverVetorInverso()
	}

	funcao lerVetor() {
		para (i = 0; i < 5; i++) {
			escreva("Digite o número ",i,": ")
			leia(vetor[i])
		}
	}

	funcao preencherVetorInverso() {
		para (i = 4; i >= 0; i--) {
			vetorInverso[i2] = vetor[i]
			i2++
		}
	}
	
	funcao escreverVetor() {
		escreva("Vetor:\n")
		para (i = 0; i < 5; i++) {
			escreva(vetor[i]," ")
		}
	}

	funcao escreverVetorInverso() {
		escreva("\n\nVetor na ordem inversa:\n")
		para (i = 0; i < 5; i++) {
			escreva(vetorInverso[i]," ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */