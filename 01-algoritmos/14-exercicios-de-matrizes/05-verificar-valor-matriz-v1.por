programa
{
	// Exercício 4 décima quarta aula algoritmos 23.05.23:
	// Escreva um algoritmo que leia uma matriz 4x3. Em seguida, receba um novo valor do usuário e verifique se este valor se encontra
	// na matriz. Caso o valor se encontre na matriz, escreva a mensagem “O valor se encontra na matriz”. Caso contrário,
	// escreva a mensagem “O valor NÃO se encontra na matriz”.

	// ATT POSICAO COM EXEMPLO DO SOR
	// Com algumas mudanças pela correção do professor.
	
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[4][3], num, l = 0, c = 0
		logico encontrado = falso

		para(l = 0; l < 4; l++) {
			para(c = 0; c < 3; c++) {
				//escreva("Digite um número para preencher a matriz: ")
				//leia(num)
				//matriz[linha][coluna] = num
				matriz[l][c] = u.sorteia(0,9)
				escreva(" | ",matriz[l][c]," | ")
			}
			escreva("\n")
		}

		escreva("\nDigite um novo valor para verificar se este valor se encontra na matriz: ")
		leia(num)

		para (l = 0; l < 4; l++) {
			para (c = 0; c < 3; c++) {
				se (matriz[l][c] == num) {
					encontrado = verdadeiro
					pare
				}
			}
			se (encontrado) {
				pare
			}
		}
		se (nao encontrado) {
			escreva("\nO valor NÃO se encontra na matriz.\n")
		}
		senao {
			escreva("\nNúmero encontrado na matriz na posição ",l,",",c,".")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1294; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */