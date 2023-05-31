programa
{
	// Exercício 5 décima quarta aula algoritmos 23.05.23:
	// Faça um programa C que leia uma matriz 3x3 de inteiros e mostre a(s) posição(ões) onde se
	// encontra(m) o(s) número(s) ímpar(es).

	// até 11h50; usar se % 2

	funcao inicio()
	{
		inteiro matriz[3][3], num, linha, coluna

		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				escreva("Digite um número para preencher a matriz: ")
				leia(num)
				matriz[linha][coluna] = num
			}
		}
		escreva("\nNúmeros ímpares da matriz 3x3:")
		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				se (matriz[linha][coluna] % 2 == 1) {
					escreva("\nO número ",matriz[linha][coluna]," se encontra na posição ",linha,",",coluna," da matriz")
				}
			}
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 807; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */