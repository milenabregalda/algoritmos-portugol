programa
{
	/* Exercício 6 lista de exercícios 10.07.23:
	 * Crie um algoritmo que leia uma matriz 5x5. Em seguida, conte quantos números pares existem na matriz.
	 */
	 
	inclua biblioteca Util --> u
	
	inteiro matriz[5][5], i, j, pares = 0

	funcao lerMatriz() {
		para(i = 0; i < 5; i++) {
			para(j = 0; j < 5; j++) {
				escreva("Digite um número para preencher a matriz 5x5: ")
				leia(matriz[i][j])
			}
		}
	}

	funcao contarPares() {
		para(i = 0; i < 5; i++) {
			para(j = 0; j < 5; j++) {
				se(matriz[i][j] % 2 == 0) {
					pares++
				}
			}
		}
	}

	funcao informarPares() {
		escreva("Existem ",pares," números pares na matriz.")
	}
	
	funcao inicio() {
		lerMatriz()
		u.aguarde(1000)
		limpa()
		contarPares()
		informarPares()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */