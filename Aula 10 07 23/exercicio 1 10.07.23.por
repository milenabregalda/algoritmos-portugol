programa
{
	/* Exercício 1 lista de exercícios 10.07.23:
	 * Escreva um algoritmo que leia dois vetores de 10 posições e faça a soma dos elementos de mesmo índice,
	 * colocando o resultado em um terceiro vetor. Mostre o vetor resultante. 
	 */
	 
	inclua biblioteca Util --> u
	
	real vetor1[10], vetor2[10], soma[10]
	inteiro i

	funcao lerVetor1() {
		para (i = 0; i < 10; i++) {
			escreva("Digite o número que vai ficar na posição ",i," do primeiro vetor: ")
			leia(vetor1[i])
		}
	}

	funcao lerVetor2() {
		para (i = 0; i < 10; i++) {
			escreva("Digite o número que vai ficar na posição ",i," do segundo vetor: ")
			leia(vetor2[i])
		}
	}

	funcao somar() {
		para (i = 0; i < 10; i++) {
			soma[i] = vetor1[i] + vetor2[i]
		}
	}

	funcao escreverSoma() {
		escreva("Vetor resultante da soma:\n")
		para (i = 0; i < 10; i++) {
			escreva(soma[i]," ")
		}
	}

	
	funcao inicio() {
		lerVetor1()
		u.aguarde(1000)
		limpa()
		lerVetor2()
		somar()
		u.aguarde(1000)
		limpa()
		escreverSoma()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 796; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */