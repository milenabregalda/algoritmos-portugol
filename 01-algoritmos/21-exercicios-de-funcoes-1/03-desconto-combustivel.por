programa 
{
	/* Milena Bregalda 20.06.2023
	 * Exercício 3 da lista
	 * Uma concessionária está vendendo os seus veículos com desconto. Faça um algoritmo que calcule e
	 * exiba o valor do desconto e o valor a ser pago pelo cliente. O desconto deverá ser calculado sobre
	 * o valor do veículo de acordo com o combustível (álcool – 25%, gasolina – 21% ou diesel – 14%).
	 * Com valor do veículo igual a zero encerra entrada de dados. Informe total de descontos concedidos
	 * pela concessionária e total pago pelos clientes. 
	*/

	inclua biblioteca Util --> u
		
	funcao inicio() {
		real precoCheio, desconto = 0.0, precoFinal = 0.0, totalPago = 0.0
		inteiro combustivel, resposta, qtdDescontos = 0
		logico menu = verdadeiro
		
		enquanto (menu) {
			limpa()
			escreva("\nMenu:\n1 - Calcular preço dos veículos\n0 - Sair\nSua escolha: ")
			leia (resposta)

			escolha(resposta) {
				caso 1:
					escreva("\nInforme o preço cheio do carro: ")
					leia(precoCheio)
					se (precoCheio <= 0) {
						escreva("\nPreço inválido.\nO programa será encerrado.")
						informarNoFinal(qtdDescontos, totalPago)
						menu = falso
						pare
					}
					senao {
						escreva("\nInforme o tipo de combustível:\n1 - Álcool\n2 - Gasolina\n3 - Diesel\nOutros números - sem desconto\nSua escolha: ")
						leia(combustivel)
						desconto = calcularDesconto(combustivel, precoFinal, precoCheio)
						precoFinal = calcularPrecoFinal(precoCheio, desconto)
        
						qtdDescontos++
						escreva("\nO veículo terá um desconto de ",desconto, "%")
						escreva("\nO preço final a ser pago pelo cliente é de R$ ",precoFinal)
						totalPago += precoFinal
						u.aguarde(5000)
					}
        				pare
        				
				caso 0:
					menu = falso
					escreva("\nPrograma encerrado.")
					informarNoFinal(qtdDescontos, totalPago)
					pare
					
				caso contrario:
			     escreva("\nOpção inválida.")
			     u.aguarde(1000)
			}
		}
	}

	funcao real calcularDesconto(inteiro combustivel, real precoFinal, real precoCheio) {
		real desconto = 0.0
		
		escolha (combustivel) {
			caso 1:
				desconto = 25.0
				precoFinal = calcularPrecoFinal(precoCheio, 25.0)
				pare
							
			caso 2:
				desconto = 21.0
				precoFinal = calcularPrecoFinal(precoCheio, 21.0)
				pare
									
			caso 3:
				desconto = 14.0
				precoFinal = calcularPrecoFinal(precoCheio, 14.0)
				pare
								
			caso contrario:
				precoFinal = calcularPrecoFinal(precoCheio, 0.0)
			}
			
		retorne desconto
	}

	funcao real calcularPrecoFinal(real precoCheio, real desconto) {
		real precoFinal = precoCheio - (precoCheio * (desconto/100))
		retorne precoFinal
	}

	funcao informarNoFinal(inteiro qtdDescontos, real totalPago) {
		escreva("\n\n", qtdDescontos, " desconto(s) concedido(s) pela concessionária.", "\nTotal pago pelos clientes: R$ ", totalPago, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 496; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */