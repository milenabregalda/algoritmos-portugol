programa
{

	/* Milena Bregalda
	 *  Trabalho Avaliativo 3 - 23.06.23 até 30.06.23
	*  Fazer um jogo da velha. */

	inclua biblioteca Util --> u

	caracter tabuleiro[3][3], posicaoPreenchida = ' '
	logico menu = verdadeiro, jogoIniciou = falso, vezTerminou = falso, alguemVenceu = falso, jogoEmpatado = falso
	inteiro opcao, l1, c1, l2, c2, l3, c3, contJogadas, jogadorAtual

	funcao inicio() {
		escreva("\n### Seja(m) bem-vindo(s) ao jogo da velha! ###")
		inicializarTabuleiro()
		u.aguarde(3000)
		mostrarMenu()
		iniciarJogo(alguemVenceu)
	}

	funcao mostrarMenu() {
		enquanto (menu) {
			limpa()
			escreva("\n1 - Iniciar jogo\n0 - Sair\nSua escolha: ")
			leia(opcao)
			limpa()
	
			escolha (opcao) {
				caso 1:
					escreva("\nO jogo vai começar agora! Chame um amigo ou jogue com você mesmo(a) e se divirta!")
					u.aguarde(3000)
					jogoIniciou = verdadeiro
					menu = falso
				pare
				
				caso 0:
					limpa()
					escreva("\nO jogo vai parar agora. Não se esqueça de voltar mais vezes porque a diversão é garantida!\n")
					u.aguarde(2000)
					menu = falso
					pare
				
				caso contrario:
					escreva("\nEssa opção é inválida. Tente algo diferente na próxima vez!")
					u.aguarde(1000)
					pare
			}
		} 
	}

	funcao iniciarJogo(logico venceuOuNao) {
		contJogadas = 0
		enquanto(jogoIniciou) {
			vezDoJogador(1,'X', 'O', venceuOuNao)
			verificarSeJogoAcabou(venceuOuNao)
			se (jogoIniciou == falso) {
				pare
			}
			u.aguarde(1000)
			vezDoJogador(2,'O','X', venceuOuNao)
			verificarSeJogoAcabou(venceuOuNao)
			se (jogoIniciou == falso) {
				pare
			}
		}
		}


	funcao inicializarTabuleiro() {
	    para(l1 = 0; l1 < 3; l1++) {
			para(c1 = 0; c1 < 3; c1++) {
				tabuleiro[l1][c1] = posicaoPreenchida
			}
		}
	}
	
	funcao desenharTabuleiro() {
		limpa()
		escreva("\n")
		para (l1 = 0; l1 < 3; l1++) {
			para(c1 = 0; c1 < 3; c1++) {
				escreva ("| ",tabuleiro[l1][c1], " | ")
			}
			escreva("\n")
			se (l1 < 2) {
				escreva("————— ————— —————")
			}
			escreva("\n")
		}
	}


	funcao vezDoJogador(inteiro jogAtual, caracter posPreenchida, caracter outraPos, logico venceuOuNao) {
		vezTerminou = falso
		enquanto (vezTerminou == falso) {
			desenharTabuleiro()
			escreva("Agora é a vez do jogador ",jogAtual,".\n")
			escreva("Qual é a linha em que você deseja jogar (0 a 2, cima para baixo)? ")
			leia(l2)
			escreva("Qual é a coluna em que você deseja jogar (0 a 2, esquerda para direita)? ")
			leia(c2)
			l3 = l2 + 1
			c3 = c2 + 1
    
	  	para(c1 = c2; c1 < c3; c1++) {
		  	para(l1 = l2; l1 < l3; l1++) {
		  		se (tabuleiro[l1][c1] == ' ') {
					tabuleiro[l1][c1] = posPreenchida
					verificarVencedor(jogAtual, posPreenchida, outraPos, venceuOuNao)
					contJogadas++
					vezTerminou = verdadeiro
					se (venceuOuNao == falso) {
						verificarEmpatado(contJogadas, venceuOuNao)
					}
					u.aguarde(1000)
					pare
			}
		senao {
			escreva("\nVocê tentou jogar em uma posição em que alguém já jogou! Tente de novo em uma posição que está em branco.")
			u.aguarde(3000)
			limpa()
		}
		}
      	}
		}
	}
	
	funcao verificarEmpatado(inteiro contJog, logico venceu) {
	    se (contJog >= 9 e venceu == falso) {
	      u.aguarde(1000)
	      limpa()
	      escreva("\nO jogo terminou empatado e, infelizmente, ninguém ganhou desta vez.")
	      u.aguarde(1000)
	      escreva("\nMas espero que tenha(m) se divertido!\n")
	      u.aguarde(1000)
	      jogoEmpatado = verdadeiro
	      jogoIniciou = falso
    }
}

	funcao verificarVencedor(inteiro jogAtual, caracter posPreenchida, caracter outraPos, logico venceu) {
		// Por linhas
		testarCoordenadas(0,0,0,1,0,2, jogAtual, posPreenchida, outraPos, venceu)
		testarCoordenadas(1,0,1,1,1,2, jogAtual, posPreenchida, outraPos, venceu)
		testarCoordenadas(2,0,2,1,2,2, jogAtual, posPreenchida, outraPos, venceu)

		// Por colunas
		testarCoordenadas(0,0,1,0,2,0, jogAtual, posPreenchida, outraPos, venceu)
		testarCoordenadas(0,1,1,1,2,1, jogAtual, posPreenchida, outraPos, venceu)
		testarCoordenadas(0,2,1,2,2,2, jogAtual, posPreenchida, outraPos, venceu)
		
		// Por transversais
		testarCoordenadas(0,0,1,1,1,2, jogAtual, posPreenchida, outraPos, venceu)
		testarCoordenadas(0,2,1,1,2,0, jogAtual, posPreenchida, outraPos, venceu)
	}
	
	funcao testarCoordenadas(inteiro pos1num1, inteiro pos1num2, inteiro pos2num1, inteiro pos2num2, inteiro pos3num1, inteiro pos3num2, inteiro jog, caracter posA, caracter posB, logico venceu) {
		logico igualAPosA = falso, diferenteDePosB = falso, diferenteDeEspaco = falso
		se (tabuleiro[pos1num1][pos1num2] == posA e tabuleiro[pos2num1][pos2num2] == posA e tabuleiro[pos3num1][pos3num2] == posA) {
			igualAPosA = verdadeiro
		}
		se (tabuleiro[pos1num1][pos1num2] != posB e tabuleiro[pos2num1][pos2num2] != posB e tabuleiro[pos3num1][pos3num2] != posB) {
			diferenteDePosB = verdadeiro
		}
		se (tabuleiro[pos1num1][pos1num2] != ' ' e tabuleiro[pos2num1][pos2num2] != ' ' e tabuleiro[pos3num1][pos3num2] != ' ') {
			diferenteDeEspaco = verdadeiro
		}


		se (igualAPosA e diferenteDePosB e diferenteDeEspaco) {
			venceu = verdadeiro
			vezTerminou = verdadeiro
		}
		se (venceu) {
			jogoIniciou = falso
			u.aguarde(1000)
			limpa()
			escreva("O jogador ",jog," ganhou! Parabéns!\n")
			u.aguarde(1000)
		}
	}

	funcao verificarSeJogoAcabou(logico venceu) {
		se (jogoEmpatado ou venceu) {
			jogoIniciou = falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1038; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */