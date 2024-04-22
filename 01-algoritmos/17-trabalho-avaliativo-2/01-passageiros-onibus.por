programa
{
	inclua biblioteca Util --> u

	/* Milena Bregalda
	 *  Trabalho Avaliativo 2 - 02.06.2023 até 13.06.23
	 *  Um algoritmo que controle o fluxo de passageiros do ônibus */

	funcao inicio() {
		inteiro onibus[40], i0 = 0, i1 = 0, poltronasOcupadas = 0, poltronasVazias = 40, paradas1 = 1, paradas2 = 1, passageiros = 0
		inteiro contPassageiros = 0, opcao
		cadeia resposta = "a"
		logico menu = verdadeiro
		
		para (i0 = 0; i0 < 40; i0++) {
			onibus[i0] = 0
		}

		enquanto (menu) {
			limpa()
			escreva("1 - Embarque\n2 - Partir para viagem\n0 - Sair do programa\nSua resposta: ")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					u.aguarde(2000)
					limpa()
					escreva("O ônibus está aguardando os passageiros na estação rodoviária para partir rumo ao litoral.")
					para (i0 = 0; i0 < 40; i0++) {
						escreva("\nDe 1 a 40, qual será o número da poltrona em que o passageiro vai sentar? ")
						leia(i1)
						i0 = i1 - 1
						se (onibus[i0] == 0 e i0 >= 0 ou i0 <= 39) {
							onibus[i0] = 1
							passageiros++
							poltronasOcupadas++
							poltronasVazias--
							escreva("O passageiro embarcou no ônibus na poltrona ",i1,".")
						}
						senao se (i0 < 0 ou i0 >= 40) {
							escreva("\nPoltrona inexistente!")
						}
						senao se (onibus[i0] == 1 e i0 >= 0 e i0 <= 39) {
							escreva("\nPoltrona já ocupada!")
						}
						escreva("\n\nDeseja que mais passageiros sejam colocados no ônibus? (s/n) ")
						leia(resposta)
						se (resposta == "N" ou resposta == "n" ou resposta == "nao" ou resposta == "NAO" ou resposta == "Não" ou resposta == "nao") {
							u.aguarde(2000)
							limpa()
							pare
						}
					}
				escreva("O ônibus vai partir.\n\nNúmero de poltronas ocupadas: ",poltronasOcupadas)
				escreva("\nNúmero de poltronas vazias: ",poltronasVazias)
				u.aguarde(3000)
				pare

				caso 2:
					u.aguarde(2000)
					limpa()
					se (passageiros >= 1) {
						para (paradas1 = 1; paradas1 <= 2; paradas1++) {
							se (paradas1 == 1) {
								contPassageiros = passageiros - 2
							}
							senao se (paradas1 == 2) {
								contPassageiros = passageiros - 1
							}
							para (paradas2 = 1; paradas2 <= contPassageiros; paradas2++) {
								limpa()
								escreva("O ônibus está viajando e chegou ao ponto de parada ",paradas1," de 2.\n")
								escreva("\nUm passageiro vai descer.")
								escreva("\nDe 1 a 40, qual será o número da poltrona do passageiro que está descendo? ")
								leia(i1)
								i0 = i1 - 1
								se (onibus[i0] == 1 e i0 >= 0 ou i0 <= 39) {
									onibus[i0] = 0
									passageiros--
									poltronasOcupadas--
									poltronasVazias++
									escreva("O passageiro que estava na poltrona ",i1," desembarcou.")
								}
								senao se (i0 < 0 ou i0 >= 40) {
									escreva("\nPoltrona inexistente!")
								}
								senao se (onibus[i0] == 0 e i0 >= 0 ou i0 <= 39) {
									escreva("\nPoltrona vazia.")
								}
								escreva("\n\nMais passageiros querem descer do ônibus? (s/n) ")
								leia(resposta)
								se (resposta == "N" ou resposta == "n" ou resposta == "nao" ou resposta == "NAO" ou resposta == "Não" ou resposta == "nao") {
									u.aguarde(2000)
									limpa()
									pare
								}
							}
							escreva("O ônibus vai continuar a viagem porque você pediu ou não pode mais descer ninguém nesta parada.")
							u.aguarde(3000)
						}
						limpa()
						escreva("O ônibus chegou ao final da viagem porque você pediu ou não pode mais descer ninguém na parada.\nNúmero de passageiros: ",passageiros,"\n\nPoltronas ocupadas:")
						para (i0 = 0; i0 < 40; i0++) {
							se (onibus[i0] == 1) {
								i1 = i0 + 1
								escreva("\nA poltrona ",i1," estava ocupada.")
							}
						}	
						u.aguarde(7000)
						menu = falso
						limpa()
						pare
					}
					senao se (passageiros < 1) {
						escreva("Nenhum passageiro embarcou até agora. A viagem ainda não pode começar.")
						u.aguarde(2000)
						limpa()
						pare
					}

				caso 0:
					limpa()
					escreva("Fechando o programa.")
					menu = falso
					pare

				caso contrario:
					limpa()
					escreva("Opção inválida. Tente novamente.")
					u.aguarde(1000)
				}
			}
		}
}	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3617; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {onibus, 10, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */