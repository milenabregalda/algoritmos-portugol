programa
{
	/* Exercício 3 lista de exercícios 10.07.23:
	 * Criar um algoritmo que leia uma matriz 3x3 e exiba a matriz preenchida.
	 */
	 
	inclua biblioteca Util --> u
	
	inteiro matriz[3][3], i, j

	funcao lerMatriz() {
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva("Digite um número para preencher a matriz 3x3: ")
				leia(matriz[i][j])
			}
		}
	}

	funcao escreverMatriz() {
		escreva("A matriz preenchida:\n")
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva ("| ",matriz[i][j], " | ")
			}
		escreva("\n")
		}
	}

	funcao inicio() {
		lerMatriz()
		u.aguarde(1000)
		limpa()
		escreverMatriz()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */