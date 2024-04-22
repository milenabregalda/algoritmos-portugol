programa
{
	/* Exercício 9 lista de exercícios 10.07.23:
	 * Crie um algoritmo que leia uma matriz 3x3 e crie uma nova matriz que seja a matriz transposta da primeira (troque as linhas por colunas).
	 */

	inclua biblioteca Util --> u
	
	inteiro matriz[3][3], transposta[3][3], i, j
	
	funcao lerMatriz() {
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva("Digite um número para preencher a matriz 3x3: ")
				leia(matriz[i][j])
			}
		}
	}

	funcao preencherTransposta() {
		para(j = 0; j < 3; j++) {
			para(i = 0; i < 3; i++) {
				transposta[i][j] = matriz[j][i]
			}
		}
	}

	funcao escreverMatriz() {
		escreva("A matriz normal:\n")
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva ("| ",matriz[i][j], " | ")
			}
		escreva("\n")
		}
		escreva("\n")
	}

	funcao escreverTransposta() {
		escreva("A matriz transposta (linhas e colunas trocadas):\n")
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva ("| ",transposta[i][j], " | ")
			}
		escreva("\n")
		}
	}
	
	funcao inicio() {
		lerMatriz()
		preencherTransposta()
		u.aguarde(1000)
		limpa()
		escreverMatriz()
		escreverTransposta()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1109; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */