programa
{
	
	/* Milena Bregalda
	 *  Trabalho Avaliativo 3 - 23.06.23 até 30.06.23
	 *  Fazer um jogo da velha. */

	inclua biblioteca Util --> u
	
	caracter velha [3][3]
	logico menu = verdadeiro, executarJogo = falso
	inteiro opcao, l1, c1, l2, c2, l3, c3

	funcao inicio() {
		inicializarVelha()
		desenharVelha()
		jogarVelha()
		


		
		desenharVelha()
		
		/*

		
		 */
		 u.aguarde(2000)
		 menu = falso // dps tirar
		enquanto (menu) {
			limpa()
			escreva("1 - Iniciar jogo\n0 - Sair\nSua escolha: ")
			leia(opcao)
	
			escolha (opcao) {
				caso 1:
				escreva("a")
				menu = falso
				executarJogo = verdadeiro // fzr essa parte em funcao?
				pare
				
				caso 0:
				escreva("b")
				menu = falso
				pare
				
				caso contrario:
				escreva("\nOpção inválida.")
				u.aguarde(1000)
				pare
			}
		} 
	}

	funcao inicializarVelha() {
		para(l1 = 0; l1 < 3; l1++) {
			para(c1 = 0; c1 < 3; c1++) {
				velha[l1][c1] = ' '
			}
		}
	}
	
	funcao desenharVelha() {
		limpa()
		para (l1 = 0; l1 < 3; l1++) {
			para(c1 = 0; c1 < 3; c1++) {
				escreva ("| ",velha[l1][c1], " | ")
			}
			escreva("\n")
			se (l1 == 0 ou l1 == 1) {
				escreva("————— ————— —————")
			}
			escreva("\n")
		}
	}
	funcao jogarVelha() {
		escreva("Qual a linha em que você deseja jogar? (0 a 2, esquerda para direita): ")
		leia(l2)
		escreva("Qual a coluna em que você deseja jogar? (0 a 2, cima para baixo): ")
		leia(c2)
		l3 = l2 + 1
		c3 = c2 + 1

		para(l1 = l2; l1 < l3; l1++) {
			para(c1 = c2; c1 < c3; c1++) {
				velha[l1][c1] = 'X'
			}
		}
	}
}	
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {velha, 10, 10, 5}-{l1, 12, 16, 2}-{c1, 12, 20, 2}-{l2, 12, 24, 2}-{c2, 12, 28, 2}-{l3, 12, 32, 2}-{c3, 12, 36, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */