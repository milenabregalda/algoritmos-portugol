programa
{
	// Fazer um algoritmo que gere duas matrizes 2x2 e faça as multiplicações dessas duas matrizes (AxB).
	// Versão corrigida do professor do exercício de 16/06/2023 do meu jeito, sem funções e com BxA.
	
	inclua biblioteca Util --> u

	inteiro matrizA[2][2], matrizB[2][2], matrizC[2][2], i, j, k
	
	funcao inicio() {
		iniciarMatrizA()
		iniciarMatrizB()
		iniciarMatrizC()
		multMatriz()
		mostrarResultado()
	}

	funcao iniciarMatrizA() {
		para (i = 0; i < 2; i++) {
			para (j = 0; j < 2; j++) {
				matrizA[i][j] = u.sorteia(1,9)
			}
		}
	}

	funcao iniciarMatrizB() {
		para (i = 0; i < 2; i++) {
			para (j = 0; j < 2; j++) {
				matrizB[i][j] = u.sorteia(1,9)
			}
		}
	}

	funcao iniciarMatrizC() {
		para (i = 0; i < 2; i++) {
			para (j = 0; j < 2; j++) {
				matrizC[i][j] = 0 // só para inicializar
			}
		}
	}

	funcao multMatriz() {
		para (i = 0; i < 2; i++) {
			para (j = 0; j < 2; j++) {
				para (k = 0; k < 2; k++) { // jogada pra fazer multiplicação e soma juntas
					matrizC[i][j] = matrizC[i][j] + (matrizA[i][k] * matrizB[k][j]) // mesma coisa que fiz com +=
				}
			}
		}
	}

	funcao mostrarResultado() {
		para(i = 0; i < 2; i++) {
			para(j = 0; j < 2; j++) {
				escreva ("| ",matrizA[i][j], " | ")
			}
		escreva("\n")
		}
		escreva("\n")
		para(i = 0; i < 2; i++) {
			para(j = 0; j < 2; j++) {
				escreva ("| ",matrizB[i][j], " | ")
			}
		escreva("\n")
		}
		escreva("\n")
		para(i = 0; i < 2; i++) {
			para(j = 0; j < 2; j++) {
				escreva ("| ",matrizC[i][j], " | ")
			}
		escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1525; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */