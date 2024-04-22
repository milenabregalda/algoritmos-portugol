programa
{
	// Exercício 1 décima segunda aula 19.05.23:
	// Faça um programa que leia do usuário inteiros de uma matriz 3x3 e depois exiba a matriz.
	// Depois exibir a soma de cada linha da matriz.
	
	funcao inicio()
	{
		inteiro matriz[3][3], linha, coluna, i = 0, soma = 0
		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				escreva("Digite um número da matriz: ")
				leia(matriz[linha][coluna])
			}
		}
		
		escreva("\nA matriz:\n")
		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				escreva (" | ",matriz[linha][coluna], " | ")
				se (coluna == 2) {
					escreva("\n")
				}	
			}
		}
		
		escreva("\nSomas das linhas:\n")
		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				soma = soma + matriz[linha][coluna]
			}
		escreva("Soma da linha ",i,": ",soma,"\n")
		i++
		soma = 0 // Reinicializa a soma para que a soma da próxima linha não tenha valores da anterior
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 666; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
