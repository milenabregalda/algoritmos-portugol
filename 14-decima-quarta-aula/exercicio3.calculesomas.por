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
		inteiro M[5][5], num, linha, coluna, soma3aLinha, soma4aColuna, somaPrincipal = 0, somaSecundaria = 0, somaTudo = 0, tam = 4

		para (linha = 0; linha < 5; linha++) {
			para (coluna = 0; coluna < 5; coluna++) {
				escreva("Digite um número para preencher a matriz: ")
				leia(num)
				M[linha][coluna] = num
			}
		}
		limpa()

		para (linha = 2; linha < 3; linha++) {
			soma3aLinha = 0
			para (coluna = 0;coluna < 5; coluna++) {
				soma3aLinha = soma3aLinha + M[linha][coluna]
			}
			escreva("\nSoma da terceira linha da matriz: ",soma3aLinha)
		}

		para (coluna = 3; coluna < 4; coluna++) {
			soma4aColuna = 0
			para (linha = 0; linha < 5; linha++) {
				soma4aColuna = soma4aColuna + M[linha][coluna]
			}
			escreva("\nSoma da quarta coluna da matriz: ",soma4aColuna)
		}

		para (linha = 0; linha < 5; linha++) {
			somaPrincipal = somaPrincipal + M[linha][linha]
		}
		escreva("\nSoma da diagonal principal: ",somaPrincipal)

		para (linha = 0; linha < 5; linha++) {
			somaSecundaria = somaSecundaria + M[linha][tam - linha]
		}
		escreva("\nSoma da diagonal secundária: ",somaSecundaria)

		para (linha = 0; linha < 5; linha++) {
			para (coluna = 0; coluna < 5; coluna++) {
				somaTudo = somaTudo + M[linha][coluna]
			}
		}
		escreva("\nSoma de todos os elementos da matriz: ",somaTudo)

		escreva("\n\nA matriz:\n")
		para (linha = 0; linha < 5; linha++) {
			para (coluna = 0; coluna < 5; coluna++) {
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
 * @POSICAO-CURSOR = 1155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */