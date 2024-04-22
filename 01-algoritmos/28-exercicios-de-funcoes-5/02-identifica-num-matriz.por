programa
{
	/* Exercício 2 lista de exercícios 14.07.23:
	 * Gerar uma matriz 8x8 (u.sorteia(1,20)) e identificar as linhas e colunas que não contém o número 5.
	 */

	inclua biblioteca Util --> u
	
	inteiro matriz[8][8], i, j
	
	funcao sortearMatriz() {
		para(i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				matriz[i][j] = u.sorteia(1,20)
			}
		}
	}

	funcao escreverMatriz() {
		escreva("A matriz:\n")
		para(i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				escreva ("| ",matriz[i][j], " | ")
			}
		escreva("\n")
		}
		u.aguarde(4000)
		limpa()
	}

	funcao identificarNum() {
		escreva("Números diferentes de 5 estão em:\n\n")
		para(i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (matriz[i][j] != 5) {
					escreva("Linha ",i,", coluna ",j,"\n")
				}
			}
		escreva("\n")
		}
	}

	funcao inicio() {
		sortearMatriz()
		escreverMatriz()
		identificarNum()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 799; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 9, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */