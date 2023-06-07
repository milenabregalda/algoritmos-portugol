programa
{
	inclua biblioteca Util --> u

	/* Milena Bregalda
	 *  Trabalho Avaliativo 2 - 02.06.2023
	 *  Um algoritmo que controle o fluxo de passageiros do ônibus */

	funcao inicio()
	{
		inteiro onibus[40], i0 = 0, i1 = 0, poltronasOcupadas = 0, poltronasVazias = 0, i = 1, paradas = 1, passageiros = 0, cont = 0, opcao
		cadeia resposta = "a"
		logico menu = verdadeiro, ocupado = falso
		
		para (i0 = 0; i0 < 40; i0++)
					{					
						onibus[i0] = 0
					}

		enquanto (menu) {
			//ocupado=falso vazios=0 ocupados=0 soma=0 i2=0
			
			escreva("1 - Embarque\n2 - Partir para viagem\n0 - Sair do programa\nSua resposta: ")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					escreva("O ônibus está aguardando os passageiros na estação rodoviária para partir rumo ao litoral.")
					para (i0 = 0; i0 < 40; i++) {
						escreva("\nDe 1 a 40, qual será o número da poltrona em que o passageiro vai sentar? ")
						leia(i1)
						i0 = i1 - 1
						se (i0 < 1 ou i0 >= 40) {
							escreva("\nPoltrona inexistente!")
						}
						senao se (onibus[i0] == 1 e i0 >= 1 e i0 <= 40) {
							para (i0 = i1 - 1;i0 <= i1 - 1; i++) {
		 						se (onibus[i0] == 1) {
		 							ocupado = verdadeiro
		 						}
							}
		 					se (ocupado) {
		 						escreva("\nPoltrona já ocupada!")
		 					}
						}
						senao se (onibus[i0] == 0) {
							onibus[i0] = 1
							passageiros++
							poltronasOcupadas++
							poltronasVazias--
							escreva("\nO passageiro embarcou no ônibus na poltrona ",i1,".") // deixar passageiros?
						}
						escreva("\nDeseja que mais passageiros sejam colocados no ônibus? (s/n) ")
						leia(opcao)
						
						se (resposta == "N" ou resposta == "n" ou resposta == "nao" ou resposta == "NAO" ou resposta == "Não" ou resposta == "nao") {
							u.aguarde(2000)
							escreva("O ônibus vai partir.\n\nNúmero de poltronas ocupadas: ",poltronasOcupadas)
							escreva("\nNúmero de poltronas vazias: ",poltronasVazias)
							pare
						}
					}
				escreva("O ônibus vai partir.\n\nNúmero de poltronas ocupadas: ",poltronasOcupadas)
				escreva("\nNúmero de poltronas vazias: ",poltronasVazias)
				u.aguarde(3000)
				limpa()
				pare

				caso 2:
					para (paradas = 1; paradas <= 2; paradas++) {
						escreva("O ônibus está viajando e chegou ao ponto de parada ",i," de 2.")
						escreva("\nUm passageiro quer descer.")
						escreva("\nDe 1 a 40, qual será o número da poltrona do passageiro que está descendo? ")
						leia(i1)
						i0 = i1 - 1
						onibus[i0] = 0
						passageiros--
						poltronasOcupadas--
						poltronasVazias++
						escreva("Mais passageiros querem descer do ônibus? (s/n) ")
						leia(opcao)
						se (resposta == "S" ou resposta == "s" ou resposta == "sim" ou resposta == "SIM" ou resposta == "Sim") {
							u.aguarde(2000)
							escreva("\nDe 1 a 40, qual será o número da poltrona do passageiro que está descendo? ")
							leia(i1)
							i0 = i1 - 1
							onibus[i0] = 0
							passageiros--
							poltronasOcupadas--
							poltronasVazias++
							escreva("\nO ônibus vai continuar a sua viagem.")
						}
						u.aguarde(3000)
						limpa()
						escreva("\nO ônibus chegou ao final da viagem.\nNúmero de passageiros: ",passageiros)
						para (i0 = 0; i0 < 40; i++) {
							se (onibus[i0] == 1) {
								i1 = i0 + 1
								escreva("\nA poltrona ",i1," estava ocupada.")
							}
						}
				menu = falso
				u.aguarde(3000)
				limpa()
				pare
				}

				caso 0:
					escreva("Fechando o programa.")
					menu = falso
					u.aguarde(1000)
					limpa()
					pare
					}
				}
		}
}	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1292; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */