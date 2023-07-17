programa {
	
	inclua biblioteca Util --> u

	/* Milena Bregalda
	 *  Trabalho avaliativo final - Exercício para entregar - 17.07.23 e 18.07.23:
	 *  Faça um algoritmo, utilizando funções, que gere uma matriz 8x8 (entre números inteiros de 1 a 99)
	 *  a. Encontrar na matriz os números pares e ímpares
	 *  b. Encontrar na matriz números primos (números que só são divisíveis por 1 e por ele mesmo)
	 *  c. Encontrar na matriz o maior e o menor número
	 *  d. Somar a diagonal principal
	 *  e. Multiplicar a diagonal secundária
	 *  f. Procurar determinado número informado pelo usuário e retornar a posição que ele se encontra
	 *  g. Gerar uma matriz transposta (linhas viram colunas)
	 */

	inteiro matriz[8][8], transposta[8][8], i, j, opcao, numMaior = 0, numMenor = 100, numProcurado = 0, contProcurado = 0, soma = 0
	logico execucao = verdadeiro

	funcao gerarMatriz() {
		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				matriz[i][j] = u.sorteia(1,99)
			}
		}
	}

	funcao escreverMatriz() {
		escreva("\nA matriz:\n")
		para(i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				escreva ("| ",matriz[i][j], " | ")
			}
		escreva("\n")
		}
	}

	funcao menu() {
		enquanto (execucao) {
			limpa()
			escreva("\nTemos uma matriz 8x8. Escolha as ações desejadas relacionadas a ela:\n\n1 - Encontrar números pares e ímpares")
			escreva("\n2 - Encontrar números primos\n3 - Encontrar o número maior e o número menor\n4 - Somar a diagonal principal\n5 - Multiplicar ")
			escreva("a diagonal secundária\n6 - Procurar número\n7 - Gerar matriz transposta\n0 - Sair\n\nSua escolha: ")
			leia(opcao)
	
			escolha (opcao) {
				caso 1:
					u.aguarde(1000)
					limpa()
					escreverMatriz()
					encontrarPares()
					encontrarImpares()
					u.aguarde(7000)
					pare
	
				caso 2:
					u.aguarde(1000)
					limpa()
					escreva("\nb - Pulei por enquanto, pesquisar depois")
					u.aguarde(3000)
					pare
	
				caso 3:
					u.aguarde(1000)
					limpa()
					encontrarMaior()
					encontrarMenor()
					escreverMatriz()
					escreva("\nMaior número da matriz: ",numMaior)
					escreva("\nMenor número da matriz: ",numMenor)
					u.aguarde(5000)
					pare
	
				caso 4:
					u.aguarde(1000)
					limpa()
					escreverMatriz()
					somarPrincipal()





					// https://github.com/milenabregalda/Algoritmos-portugol/blob/main/14-decima-quarta-aula/exercicio3.calculesomas.por





					
					u.aguarde(3000)
					pare
	
				caso 5:
					u.aguarde(1000)
					limpa()
					escreva("\ne")
					u.aguarde(3000)
					pare
	
				caso 6:
					u.aguarde(1000)
					limpa()
					procurarNumero()
					u.aguarde(3000)
					pare
	
				caso 7:
					u.aguarde(1000)
					limpa()
					escreverMatriz()
					gerarTransposta()
					escreverTransposta()
					u.aguarde(6000)
					pare

				caso 0:
					limpa()
					escreva("\nSaindo do programa\n...")
					u.aguarde(2000)
					execucao = falso
					pare
	
				caso contrario:
					u.aguarde(1000)
					limpa()
					escreva("\nOpção inválida. Tente novamente.")
					u.aguarde(2000)
			}
		}
	}

	funcao encontrarPares() {
		escreva("\n\nNúmeros pares na matriz:\n")
		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (matriz[i][j] % 2 == 0) {
					escreva(matriz[i][j]," ")
				}
			}
		}
	}

	funcao encontrarImpares() {
		escreva("\n\n\nNúmeros ímpares na matriz:\n")
		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (matriz[i][j] % 2 == 1) {
					escreva(matriz[i][j]," ")
				}
			}
		}
	}

	funcao encontrarPrimos() { // nao ta pronto dps vc se estressa com isso
		escreva("\n\n\nNúmeros primos na matriz:\n")
		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (matriz[i][j] % 2 == 1) {
					escreva(matriz[i][j]," ")
				}
			}
		}
	}

	funcao encontrarMaior() {
		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (matriz[i][j] > numMaior) {
					numMaior = matriz[i][j]
				}
			}
		}
	}

	funcao encontrarMenor() {
		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (matriz[i][j] < numMenor) {
					numMenor = matriz[i][j]
				}
			}
		}
	}

	funcao somarPrincipal() {
		para (i = 0; i < 8; i++) {
			soma = soma + matriz[i][i]
		}
		escreva("\nSoma da diagonal principal: ",soma)
	}

	funcao procurarNumero() {
		escreva("\nDigite o número que você deseja procurar na matriz: ")
		leia(numProcurado)
		limpa()
		escreverMatriz()

		para (i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				se (numProcurado == matriz[i][j]) {
					escreva("\nO número ",numProcurado," está na posição ",i,",",j,"\n")
					contProcurado++
				}
			}
		}

		se (contProcurado < 1) {
			escreva("\nO número ",numProcurado," não foi encontrado na matriz.\n")
		}
	}

	funcao gerarTransposta() {
		para(j = 0; j < 8; j++) {
			para(i = 0; i < 8; i++) {
				transposta[i][j] = matriz[j][i]
			}
		}
	}

	funcao escreverTransposta() {
		escreva("\nA matriz transposta:\n")
		para(i = 0; i < 8; i++) {
			para(j = 0; j < 8; j++) {
				escreva ("| ",transposta[i][j], " | ")
			}
		escreva("\n")
		}
	}
	
	funcao inicio() {
		gerarMatriz()
		menu()
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4093; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 17, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
