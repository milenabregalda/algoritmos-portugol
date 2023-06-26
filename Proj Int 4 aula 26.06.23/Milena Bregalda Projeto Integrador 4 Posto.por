programa
{
	
	/* Milena Bregalda 26.06.23
	 * Projeto Integrador 4 - Desenvolver Algoritmos - Simulação de sistema de posto de gasolina
	 */

	inclua biblioteca Util --> u

	logico menuPrincipal = verdadeiro, menuAbastecer = falso
	inteiro estoqueGasAditivada = 2000000, estoqueGasComum = 2000000, estoqueEtanol = 2000000
	real precoGasAditivada = 4.394, precoGasComum = 4.009, precoEtanol = 2.890, caixa = 0.0, valorAbastecido, litrosAbastecer
	caracter opcao
	
	funcao inicio()
	{
		mostrarMenus() 
	}

	funcao mostrarMenus() {
		enquanto (menuPrincipal) {
			limpa()
			escreva("Menu:\n1 - Abastecer\n2 - Estoque\n3 - Caixa\nS - Sair\n")
			leia(opcao)

			escolha(opcao) {
				caso '1':
					menuAbastecer = verdadeiro
					
					enquanto(menuAbastecer) {
						limpa()
						escreva("Informe a bomba:\n1 - Gasolina Comum\n2 - Gasolina Aditivada\n3 - Etanol\n")
						leia(opcao)
					
						escolha(opcao) {
							caso '1':
								limpa()
								
								escreva("Informe o valor: ")
								leia(valorAbastecido)
								enquanto (valorAbastecido <= 0.0) {
									valorAbastecido = 0.0
									limpa()
									u.aguarde(2000)
									escreva("Valor inválido. Informe novamente o valor para abastecer: ")
									leia(valorAbastecido)
								}
								litrosAbastecer = valorAbastecido / precoGasComum
								caixa = caixa + valorAbastecido
								estoqueGasComum = estoqueGasComum - litrosAbastecer
								escreva("\nForam abastecidos ",litrosAbastecer," litros.")
								
								u.aguarde(1000)
								menuAbastecer = falso
								pare

							caso '2':
								limpa()

								escreva("Informe o valor: ")
								leia(valorAbastecido)
								enquanto (valorAbastecido <= 0.0) {
									valorAbastecido = 0.0
									limpa()
									u.aguarde(2000)
									escreva("Valor inválido. Informe novamente o valor para abastecer: ")
									leia(valorAbastecido)
								}
								litrosAbastecer = valorAbastecido / precoGasAditivada
								caixa = caixa + valorAbastecido
								estoqueGasAditivada = estoqueGasAditivada - litrosAbastecer
								escreva("\nForam abastecidos ",litrosAbastecer," litros.")

								u.aguarde(1000)
								menuAbastecer = falso
								pare

							caso '3':
								limpa()

								escreva("Informe o valor: ")
								leia(valorAbastecido)
								enquanto (valorAbastecido <= 0.0) {
									valorAbastecido = 0.0
									limpa()
									u.aguarde(2000)
									escreva("Valor inválido. Informe novamente o valor para abastecer: ")
									leia(valorAbastecido)
								}
								litrosAbastecer = valorAbastecido / precoEtanol
								caixa = caixa + valorAbastecido
								estoqueEtanol = estoqueEtanol - litrosAbastecer
								escreva("\nForam abastecidos ",litrosAbastecer," litros.")

								
								u.aguarde(1000)
								menuAbastecer = falso
								pare

							caso contrario:
								limpa()
								escreva("Esta opção é inválida. Por favor, informe 1, 2 ou 3 para abastecimento.")
								u.aguarde(1000)
							}
						}
					u.aguarde(1000)
					pare

				caso '2':
					limpa()
					escreva("Estoque de combustível:\nGasolina Comum --> ",estoqueGasComum," lts\n")
					escreva("Gasolina Aditivada --> ",estoqueGasAditivada," lts\n")
					escreva("Etanol --> ",estoqueEtanol," lts\n")
					u.aguarde(4000)
				pare

				caso '3':
					limpa()
					escreva("Caixa do posto: R$ ",caixa)
					u.aguarde(1000)
					se (caixa > 0.0) {
						escreva("\n\n")
						sair()
					}
				pare

				caso 'S':
				caso 's':
					limpa()
					sair()
				pare

				caso contrario:
					limpa()
					escreva("Esta opção não existe. Por favor, informe uma opção válida.")
					u.aguarde(2000)
			}			
		}
	}


	funcao sair() {
		caracter opcaoSair
		escreva("Deseja encerrar o caixa? S = Sim, N = Não:\n")
		leia(opcaoSair)
		se (opcaoSair == 'S' ou opcaoSair == 's') {
			escreva("Caixa encerrado com sucesso!")
			caixa = 0.0
			menuPrincipal = falso
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 500; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */