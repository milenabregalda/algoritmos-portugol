programa
{
	inclua biblioteca Util --> u

	// PROBLEMA 1: tenho q consertar parte de onibus lotado não funcionar ou mudar e só colocar um viagem vai começar com lotado
	// PROBLEMA 2: na segunda parte, a segunda parada não termina essa porcaria de viagem de jeito nenhum
	// ADD VETOR DO TIPO LÓGICO DEPOIS (fazer o código funcionar 1o)

	
	funcao inicio()
	{
		inteiro onibus[41], paradas = 0, passageiros = 0, poltronasOcupadas = 0, poltronasVazias = 40, numPoltrona = 0, i = 1, passSairam = 0
		cadeia opcao = "s"
		logico viagemComecou = falso, viagemAcabou = falso, parado = verdadeiro
		// vetor logico pra ver se está ocupado ou nao depois com 0 e 1 e sla oq

		// vetor 
		onibus[0] = 2


		escreva("O ônibus está aguardando os passageiros na estação rodoviária para partir rumo ao litoral.")
		
		///* enquanto (viagemComecou == falso) {
			se (passageiros == 0) {
				u.aguarde(3000)
				limpa()
				escreva("Para a viagem começar, precisamos de pelo menos um passageiro.\n")
			}
		
			se (passageiros > 40) { // nao executa essa parte, vai pra pergunta sem poder
				escreva("O ônibus vai partir porque está lotado.")
				viagemComecou = verdadeiro
				u.aguarde(3000)
			}
			senao se (passageiros >= 1 e passageiros <= 40) {
				opcao = "x"
				escreva("Deseja que mais passageiros sejam colocados no ônibus? (s/n) ")
				leia(opcao)
			}
			
			se (opcao == "S" ou opcao == "s" e passageiros <= 40) {
				escreva("De 1 a 40, qual será o número da poltrona em que o passageiro vai sentar? ")
				leia(numPoltrona)
				se (numPoltrona < 1 ou numPoltrona >= 41) {
					escreva("\nPoltrona inexistente!")
				}
				senao se (onibus[numPoltrona] == 1 e numPoltrona >= 1 e numPoltrona <= 40) {
					escreva("\nPoltrona já ocupada!")
				}
				senao se (onibus[numPoltrona] == 0) {
					onibus[numPoltrona] = 1
					passageiros++
					poltronasOcupadas++
					poltronasVazias--
					escreva("\nO passageiro embarcou no ônibus na poltrona ",numPoltrona,".") // passageiros até agora pra consertar o bug
				}
				u.aguarde(2000) // dps ver se tem q tirar esse aguarde ou outra opca ta executando junto
				limpa()
			}
			senao se (opcao == "N" ou opcao == "n") {
				limpa()
				u.aguarde(2000)
				escreva("O ônibus vai partir como foi requisitado.\n\nNúmero de poltronas ocupadas: ",poltronasOcupadas)
				escreva("\nNúmero de poltronas vazias: ",poltronasVazias)
				viagemComecou = verdadeiro
				u.aguarde(3000)
			}

			senao se (opcao != "S" e opcao != "s" e opcao != "N" e opcao != "n") {
				escreva("Opção inválida. Tente novamente.\n\n")
				u.aguarde(3000)
				limpa()
			}
		} //*/


		/*
		 * onibus[1] = 1
		onibus[2] = 1
		onibus[3] = 1
		onibus[5] = 1
		onibus[39] = 1
		poltronasVazias = 35
		poltronasOcupadas = 5
		*/
		
		///*
		enquanto (viagemAcabou == falso) { // cada parada precisa de 1 passageiro obrigatório + quantos quiser depois
			passSairam = 0
			
			enquanto (i < 3) {
				limpa()
				escreva("O ônibus está viajando e chegou ao ponto de parada ",i," de 2.")
				parado = verdadeiro
				u.aguarde(3000)
				limpa()
				
				enquanto (parado) {
					se (passSairam == 0) {
					escreva("Um passageiro quer descer.\n")
					opcao = "s"
					}
					senao se (passSairam >= 1 e viagemAcabou == falso) {
					//opcao = "x"
					//u.aguarde(3000)
				//	limpa()
					escreva("Mais passageiros querem descer do ônibus? (s/n) ")
					leia(opcao)
					}
					
					se (opcao == "S" ou opcao == "s" e viagemAcabou == falso) {
						escreva("\nDe 1 a 40, qual é o número da poltrona do passageiro que está descendo? ")
						leia(numPoltrona)
						se (poltronasOcupadas < 2) {
							escreva("\nO ônibus só tem uma pessoa e vai continuar sem parar até terminar a viagem.")
							parado = falso
							viagemAcabou = verdadeiro
						}
						senao se (numPoltrona < 1 ou numPoltrona >= 41) {
							escreva("\nPoltrona inexistente!")
							u.aguarde(1000)
							limpa()
						}
						senao se (onibus[numPoltrona] == 0) {
							escreva("\nPoltrona vazia.")
							u.aguarde(1000)
							limpa()
						}
						senao se (onibus[numPoltrona] == 1 e numPoltrona >= 1 e numPoltrona <= 40) {
							onibus[numPoltrona] = 0
							passSairam++
							passageiros--
							poltronasOcupadas--
							poltronasVazias++
							escreva("\nO passageiro que estava na poltrona ",numPoltrona," desceu.")
							u.aguarde(2000)
							limpa()
						}
					}


					senao se (opcao == "N" ou opcao == "n" e i == 1) {
						u.aguarde(2000)
						limpa()
						se (i <= 1) {
							escreva("O ônibus vai continuar a sua viagem.")
							i++
							passSairam = 0
							parado = falso
						}
						senao se (i > 1) {
							escreva("O ônibus chegou ao final da viagem.")
							parado = falso
							viagemAcabou = verdadeiro
						}
						u.aguarde(3000)
					}
				}
				
				//cont passageiros tbm
				// final boa viagem espero q tenha tido uma boa viagem sla + dados q o sor pediu
			}
		}
		*/
	}
}	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 695; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */