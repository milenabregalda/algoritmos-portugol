programa
{
	
	funcao inicio()
	{
		inteiro matriz[3][3], linha, coluna, i = 1
		// última posição é [2][2] porque a primeira é [0][0], como nos vetores

		// Preenche a matriz
		para(linha = 0; linha < 3; linha++) { // laço que percorre linhas
			para(coluna = 0; coluna < 3; coluna++) {
				// laço que percorre colunas da linha para preenchê-las, quando termina volta para laço de linhas
				matriz[linha][coluna] = i
				i++
			}
		}
		// Exibe o conteúdo da matriz
		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				escreva (" | ",matriz[linha][coluna], " | ") // exibição de matriz incrementada pelo professor
				se (coluna == 2) {
				// verifica se é a última coluna, mais direto ao ponto que matriz[linha][coluna] == matriz[0][2] / [1][2] já que o 2 repete
					escreva("\n")
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 552; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */