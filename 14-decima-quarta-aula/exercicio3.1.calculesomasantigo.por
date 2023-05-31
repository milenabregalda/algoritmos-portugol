programa
{
	// Exercício 3 décima quarta aula algoritmos 23.05.23:
	// Faça um programa que lê uma matriz M(5,5) e calcule as somas:
	// - da terceira linha de M;
	// - da quarta coluna de M;
	// - da diagonal principal;
	// - da diagonal secundária;
	// - de todos os elementos da matriz;
	// Escreva estas somas e a matriz.

	funcao inicio()
	{
		inteiro M[5][5], num, linha, coluna, soma3aLinha, soma4aColuna, somaPrincipal, somaSecundaria, somaTudo = 0

		para(linha = 0; linha < 5; linha++) {
			para(coluna = 0; coluna < 5; coluna++) {
				escreva("Digite um número para preencher a matriz: ")
				leia(num)
				M[linha][coluna] = num
			}
		}
		limpa()
		
		soma3aLinha = M[2][0] + M[2][1] + M[2][2] + M[2][3] + M[2][4]
		escreva("Soma da terceira linha da matriz: ",soma3aLinha)

		soma4aColuna = M[0][3] + M[1][3] + M[2][3] + M[3][3] + M[4][3]
		escreva("\nSoma da quarta coluna da matriz: ",soma4aColuna)

		somaPrincipal = M[0][0] + M[1][1] + M[2][2] + M[3][3] + M[4][4]
		escreva("\nSoma da diagonal principal: ",somaPrincipal)

		somaSecundaria = M[0][4] + M[1][3] + M[2][2] + M[3][1] + M[4][0]
		escreva("\nSoma da diagonal secundária: ",somaSecundaria)

		para(linha = 0; linha < 5; linha++) {
			para(coluna = 0; coluna < 5; coluna++) {
				somaTudo = somaTudo + M[linha][coluna]
			}
		}
		escreva("\nSoma de todos os elementos da matriz: ",somaTudo)

		escreva("\n\nA matriz:\n")
		para(linha = 0; linha < 5; linha++) {
			para(coluna = 0; coluna < 5; coluna++) {
				escreva (" | ",M[linha][coluna], " | ")
				se (coluna == 4) {
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
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */