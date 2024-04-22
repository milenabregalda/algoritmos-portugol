programa
{
	/* Exercício 7 lista de exercícios 10.07.23:
	 * Crie um algoritmo que leia uma matriz 3x3 e calcule a soma dos valores das colunas da matriz. Ex: 
	 * Soma da coluna 1: 8
	 * Soma da coluna 2: 5
	 * Soma da coluna 3: 6
	 */
	 
	inclua biblioteca Util --> u
	
	inteiro matriz[3][3], i, j, soma = 0

	funcao lerMatriz() {
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva("Digite um número para preencher a matriz 3x3: ")
				leia(matriz[i][j])
			}
		}
	}

	funcao escreverMatriz() {
		escreva("A matriz preenchida:\n")
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				escreva ("| ",matriz[i][j], " | ")
			}
		escreva("\n")
		}
		escreva("\n")
	}

	funcao somarColunas() {
		para(j = 0; j < 3; j++) {
			para(i = 0; i < 3; i++) {
				soma += matriz[i][j]
			}
		escreva("Soma da coluna ",j,": ",soma,"\n")
		soma = 0
		}
	}
	
	funcao inicio() {
		lerMatriz()
		u.aguarde(1000)
		limpa()
		escreverMatriz()
		somarColunas()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 867; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */