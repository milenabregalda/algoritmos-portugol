programa
{
	/* Exercício 4 lista de exercícios 10.07.23:
	 * Criar um algoritmo que leia uma matrizes 3x3. Em seguida, exiba a soma dos elementos de cada uma das linhas.
	 */
	 
	inclua biblioteca Util --> u
	
	inteiro matriz[3][3], i, j, soma = 0

	funcao lerMatriz() {
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva("Digite um número para preencher a matriz 3x3: ")
				leia(matriz[i][j])
			}
		}
	}
	
	funcao somarLinhas() {
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				soma += matriz[i][j]
			}
			escreva("Soma da linha ",i,": ",soma,"\n")
			soma = 0
		}
	}

	funcao inicio() {
		lerMatriz()
		u.aguarde(1000)
		limpa()
		somarLinhas()	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 587; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */