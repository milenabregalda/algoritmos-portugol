programa
{
	/* Exercício 8 lista de exercícios 10.07.23:
	 * Crie um algoritmo que calcule a média dos elementos de uma matriz 5x2. 
	 */

	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	
	real matriz[5][2], soma = 0.0, media = 0.0, numR
	inteiro i, j, numI
	
	funcao preencherMatriz() {
		para(i = 0; i < 5; i++) {
			para(j = 0; j < 2; j++) {
				numI = u.sorteia(0,9)
				numR = t.inteiro_para_real(numI)
				matriz[i][j] = numR
			}
		}
	}

	funcao escreverMatriz() {
		escreva("A matriz:\n")
		para(i = 0; i < 5; i++) {
			para(j = 0; j < 2; j++) {
				escreva ("| ",matriz[i][j], " | ")
			}
		escreva("\n")
		}
	}

	funcao calcularMedia() {
		para(i = 0; i < 5; i++) {
			para(j = 0; j < 2; j++) { 
				soma += matriz[i][j]
			}
		}
		media = soma / 10
	}
	
	funcao inicio() {
		preencherMatriz()
		escreverMatriz()
		calcularMedia()
		escreva("\nMédia dos elementos da matriz: ",media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */