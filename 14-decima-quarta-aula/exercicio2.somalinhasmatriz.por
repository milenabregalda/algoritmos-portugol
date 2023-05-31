programa
{
	// Exercício 2 décima quarta aula algoritmos 23.05.23:
	// Faça um programa leia um matriz 3x3. Em seguida, exiba a soma dos elementos de cada uma das linhas.

	funcao inicio()
	{
		inteiro matriz[3][3], num, linha, coluna, soma = 0

		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				escreva("Digite um número para preencher a matriz: ")
				leia(num)
				matriz[linha][coluna] = num
			}
		}
		escreva("\n")

		para(linha = 0; linha < 3; linha++) {
			para(coluna = 0; coluna < 3; coluna++) {
				soma = soma + matriz[linha][coluna]
			}
			escreva("Soma da linha ",linha,": ",soma,"\n")
			soma = 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 583; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */