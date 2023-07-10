programa
{
	/* Exercício 5 lista de exercícios 10.07.23:
	 * Escreva um algoritmo que leia uma matriz 4x3. Em seguida, receba um novo valor do usuário e verifique se este
	 * valor se encontra na matriz. Caso o valor se encontre na matriz, escreva a mensagem “O valor se encontra na matriz”.
	 * Caso contrário, escreva a mensagem “O valor NÃO se encontra na matriz”.
	 */
	 
	inclua biblioteca Util --> u
	
	inteiro matriz[4][3], i, j, novoValor
	logico encontrado = falso

	funcao lerMatriz() {
		para(i = 0; i < 4; i++) {
			para(j = 0; j < 3; j++) {
				escreva("Digite um número para preencher a matriz 4x3: ")
				leia(matriz[i][j])
			}
		}
	}

	funcao lerNovoValor() {
		escreva("Digite um novo valor para verificar se está na matriz: ")
		leia(novoValor)
	}

	funcao encontrarValor() {
		para(i = 0; i < 3; i++) {
			para(j = 0; j < 3; j++) {
				se(matriz[i][j] == novoValor) {
				encontrado = verdadeiro
				}
			}
		}
	}

	funcao informarEncontrado() {
		escreva("O valor se encontra na matriz.")
	}

	funcao informarNaoEncontrado() {
		escreva("O valor NÃO se encontra na matriz.")
	}

	funcao inicio() {
		lerMatriz()
		u.aguarde(1000)
		limpa()
		lerNovoValor()
		encontrarValor()
		u.aguarde(1000)
		limpa()
		se (encontrado) {
			informarEncontrado()
		}
		senao {
			informarNaoEncontrado()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 611; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */