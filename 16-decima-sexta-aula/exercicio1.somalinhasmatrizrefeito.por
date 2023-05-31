programa
{
	// Exercício 1 décima sexta aula algoritmos 30.05.23 (parecido com exercício 2 de 23.05.23):
	// Faça um programa que gere uma matriz 10x10 de números inteiros. Em seguida, exiba a soma dos elementos de cada linha.

	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[10][10], l, c, somal = 0 // somaL = soma linha

		para(l = 0; l < 10; l++) {
			para(c = 0; c < 10; c++) {
				matriz[l][c] = u.sorteia(0,9)
			}
		}

		escreva("A matriz aleatória:\n")
		para(l = 0; l < 10; l++) {
			para(c = 0; c < 10; c++) {
				escreva ("| ",matriz[l][c], " | ")
			}
			escreva("\n")
		}
		escreva("\nAs somas:\n")
		para(l = 0; l < 10; l++) {
			para (c = 0; c < 10; c++) {
				somal = somal + matriz[l][c]
			}
				escreva("Soma da linha ",l,": ",somal,"\n")
				somal = 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 341; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */