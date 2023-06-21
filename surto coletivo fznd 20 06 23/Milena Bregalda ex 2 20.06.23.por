programa 
{

	// Milena Bregalda 20.06.2023
	// Exercício 2 da lista
	// Faça um algoritmo onde o usuário digite o valor do veículo e o algoritmo calcule o presente desconto, conforme segue:
	// Veículos acima de R$ 50.000,00 - desconto de 5%
	// Veículos com valor até R$ 50.000,00 - desconto de 2%
	// Ao digitar zero, o algoritmo deve abortar a execução

	inclua biblioteca Util -->u
	
	funcao inicio() {
		real valorVeiculo
		inteiro resposta
		logico menu = verdadeiro

		enquanto (menu) {
			escreva("1 - Calcular desconto\n0 - Sair\nSua escolha: ")
			leia (resposta)

			escolha(resposta) {
				caso 1:
				escreva("\nDigite o valor do veículo: ")
				leia(valorVeiculo)
					se (valorVeiculo > 50000) {
						calcularDesconto(valorVeiculo, 0.05, 5)
 					}
 					senao se (valorVeiculo <= 50000 e valorVeiculo > 0) {
						calcularDesconto(valorVeiculo, 0.02, 2)
					}
					senao se (valorVeiculo <= 0) {
						escreva("\nValor inválido.")
						u.aguarde(1000)
						limpa()
						pare
					}
				pare
				
 				caso 0:
					escreva("\nExecução finalizada.")
					menu = falso
					pare

				caso contrario:
					escreva("\nOpção inválida.")
					u.aguarde(1000)
					limpa()
			}
		}
	}
	
	funcao calcularDesconto(real preco, real valorDesconto, inteiro cont) {
		real calculoDesconto, precoFinal
		calculoDesconto = preco * valorDesconto
		precoFinal = preco - calculoDesconto
		escreva("Seu carro vai ter desconto de ",cont,"% e ficou de R$",preco, " para R$",precoFinal,".")
		u.aguarde(3000)
		limpa()
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 985; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */