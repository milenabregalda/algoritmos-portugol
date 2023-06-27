programa
{
	
	/* Milena Bregalda
	 *  Trabalho Avaliativo 3 - 23.06.23 até 30.06.23
	*  Fazer um jogo da velha. */

	inclua biblioteca Util --> u
	
	// TESTAR SE TUDO ESTÁ FUNCIONANDO ANTES DE ENTREGAR (lógica de quem ganhou e perfumarias faltando por enquanto).

	// N PASSEI ESSA VERSAO INDENTADA PRO DRIVE AINDA
	// PORTUGOL STUDIO TA RECLAMANDO DE BOOLEANOS E FUNCOES COM NOMES IGUAIS E VARIAVEIS GLOBAIS COM MSM NOME DE OUTRAS,
	// SO USAR GLOBAIS OU RENOMEAR VARIAVEIS DE FUNCOES

	caracter tabuleiro[3][3], posicaoPreenchida = ' '
	logico menu = verdadeiro, jogoIniciou = falso, vezTerminou = falso, alguemVenceu = falso, jogoEmpatado = falso
	inteiro opcao, l1, c1, l2, c2, l3, c3, contJogadas, jogadorAtual

	funcao inicio() {
		escreva("\n### Seja(m) bem-vindo(s) ao jogo da velha! ###")
		inicializarTabuleiro()
		u.aguarde(3000)
		mostrarMenu()
		iniciarJogo()
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
					escreva("\nO jogo vai parar de executar agora. Não se esqueça de voltar mais vezes porque a diversão é garantida!")
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

	funcao iniciarJogo() {
		contJogadas = 0
		enquanto(jogoIniciou) {
			vezDoJogador(1,'X')
			verificarSeJogoAcabou()
			se (jogoIniciou == falso) {
			pare
			}
			u.aguarde(1000)
			vezDoJogador(2,'O')
			verificarSeJogoAcabou()
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
			se (l1 == 0 ou l1 == 1) {
				escreva("————— ————— —————")
			}
			escreva("\n")
		}
	}


	funcao vezDoJogador(inteiro jogAtual, caracter posPreenchida) { // mudar nome variaveis dps
		vezTerminou = falso
		enquanto (vezTerminou == falso) {
			desenharTabuleiro()
			escreva("Agora é a vez do jogador ",jogAtual,".\n")
			escreva("Qual a linha em que você deseja jogar (0 a 2, cima para baixo)? ")
			leia(l2)
			escreva("Qual a coluna em que você deseja jogar (0 a 2, esquerda para direita)? ")
			leia(c2)
			l3 = l2 + 1
			c3 = c2 + 1
    
	  	para(c1 = c2; c1 < c3; c1++) {
		  	para(l1 = l2; l1 < l3; l1++) {
		  		se (tabuleiro[l1][c1] == ' ') {
					tabuleiro[l1][c1] = posicaoPreenchida
					verificarVencedor(jogAtual, posPreenchida)
					contJogadas++
					vezTerminou = verdadeiro
					verificarEmpatado(contJogadas)
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
	funcao verificarEmpatado(inteiro contJog) {
	    se (contJog >= 9) {
	      u.aguarde(1000)
	      limpa()
	      escreva("\nO jogo terminou empatado e, infelizmente, ninguém ganhou desta vez.")
	      u.aguarde(1000)
	      escreva("\nMas espero que tenham se divertido!\n")
	      u.aguarde(1000)
	      jogoEmpatado = verdadeiro
    }
}

	funcao verificarVencedor(inteiro jogAtual, caracter posPreenchida) {
		testarCoordenadas(0,0,0,1,0,2, jogAtual, posPreenchida)
		
		
	}

	funcao verificarSeJogoAcabou() {
		se (jogoEmpatado ou alguemVenceu) {
			jogoIniciou = falso
    }
  }

	funcao testarCoordenadas(inteiro pos1num1, inteiro pos1num2, inteiro pos2num1, inteiro pos2num2, inteiro pos3num1, inteiro pos3num2, inteiro jog, caracter xO) {
		se (tabuleiro[pos1num1][pos1num2] == xO e tabuleiro[pos1num1][pos1num2] == xO e tabuleiro[pos1num1][pos1num2] == xO) {



			
		}
		
		
		
		
		
		
	
		se (tabuleiro[l1][c1] == posicaoPreenchida e tabuleiro[l2][c2] == posicaoPreenchida e tabuleiro[l3][c3] == posicaoPreenchida) {
			//jogadorVencedor = jogatual
			escreva("O jogador ",jog," ganhou! Parabéns!")
			alguemVenceu = verdadeiro

			u.aguarde(1000)
	      limpa()
	      escreva("\nO jogo terminou empatado e, infelizmente, ninguém ganhou desta vez.")
	      u.aguarde(1000)
	      escreva("\nMas espero que tenham se divertido!\n")
	      u.aguarde(1000)
	      jogoEmpatado = verdadeiro
		}


	/*
		 * para(l1 = 0; l1 < 3; l1++) {
			para(c1 = 0; c1 < 3; c1++) {
				tabuleiroCopia1[l1][c1] = tabuleiro[l1][c1]
				tabuleiroCopia2[l1][c1] = tabuleiro[l1][c1]
			}
		}
		 * 
		 */

		
	}
}
 
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4688; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */