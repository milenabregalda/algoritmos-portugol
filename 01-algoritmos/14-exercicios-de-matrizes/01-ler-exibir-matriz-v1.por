programa
{
	// Exercício 1 décima quarta aula algoritmos 23.05.23:
	// Faça um programa que leia uma matriz 3x3 e exiba a matriz preenchida (professor explicou e mudou algumas coisas).

	inclua biblioteca Util --> u // Classe é útil, objeto é u, método é a função que vou utilizar
	funcao inicio()
	{
		inteiro matriz[3][3], num, l, c // usa-se l para linha e c para coluna, usa-se i e j também

		para(l = 0; l < 3; l++) {
			para(c = 0; c < 3; c++) {
				/* escreva("Digite um número para preencher a matriz: ")
				leia(num)
				matriz[l][c] = num
				*/
				matriz[l][c] = u.sorteia(1,100)
			}
		}

		limpa()
		escreva("A matriz preenchida:\n")
		para(l = 0; l < 3; l++) {
			para(c = 0; c < 3; c++) {
				escreva ("| ",matriz[l][c], " | ")
				/* se (c == 2) {
					escreva("\n")
				} */
			}
			escreva("\n") // Mesma coisa que código comentado acima
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 184; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */