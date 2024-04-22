programa
{
	// Fazer um algoritmo que gere duas matrizes 2x2 e faça as multiplicações dessas duas matrizes (AxB e BxA).
	// Professor corrigiu em 03/07/2023 com funções.

	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro A[2][2], B[2][2], AxB[2][2], BxA[2][2], l, c, k = 0 // num = 0 - era para testes

		para(l = 0; l < 2; l++) {
			para(c = 0; c < 2; c++) {
				A[l][c] = u.sorteia(0,9)
				B[l][c] = u.sorteia(0,9)
				/*
				 * A[l][c] = num // lógica para testes
				 * num++
				 * B[l][c] = num
				 * num++
				*/
			}
		}

		escreva("Matriz A:\n")
		para(l = 0; l < 2; l++) {
			para(c = 0; c < 2; c++) {
				escreva ("| ",A[l][c], " | ")
			}
		escreva("\n")
		}

		
		escreva("\nMatriz B:\n")
		para(l = 0; l < 2; l++) {
			para(c = 0; c < 2; c++) {
				escreva ("| ",B[l][c], " | ")
			}
		escreva("\n")
		}
		
		para (l = 0; l < 2; l++) {
			para (c = 0; c < 2; c++) {
				para (k = 0; k < 2; k++) { // jogada pra fazer multiplicação e soma juntas
					AxB[l][c] += A[l][k] * B[k][c] // Professor fez na explicação dele sem operador e mais extenso
					BxA[l][c] += B[l][k] * A[k][c] // que também é possível
				}
			}
		}
		
		/* Operador += é a combinação de + e =
		 * soma = soma + 1 vira soma++, com outros números utiliza-se +=
		 * Exemplo:
		 * soma += 2 é a mesma coisa que soma = soma + 2
		 * 
		 * Fazem a mesma coisa:
		 * matrizC[i][j] >> += << matrizA[i][k] * matrizB[k][j]
		 * matrizC[i][j] >> = matrizC[i][j] + << (matrizA[i][k] * matrizB[k][j])
		*/
		
		escreva("\nAxB (matriz de multiplicação de A com B):\n")
		// num = 0 - era para testes
		
		para(l = 0; l < 2; l++) {
			para(c = 0; c < 2; c++) {
				escreva ("| ",AxB[l][c], " | ")
			}
		escreva("\n")
		}

		escreva("\nBxA (matriz de multiplicação de B com A):\n")
		para(l = 0; l < 2; l++) {
			para(c = 0; c < 2; c++) {
				escreva ("| ",BxA[l][c], " | ")
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
 * @POSICAO-CURSOR = 1328; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */