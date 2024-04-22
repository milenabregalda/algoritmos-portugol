programa
{
	/* Exercício 3 lista de exercícios 07.07.23:
	 * Faça um algoritmo onde o usuário digite o valor do veículo e o algoritmo calcule o apresente o desconto, conforme segue:
	 * Veículos acima de R$ 50.000,00 - desconto de 5%
	 * Veículos abaixo de R$ 50.000,00 - desconto de 2%
	 * Ao digitar zero, o algoritmo deve abortar a execução.
	 */

	inclua biblioteca Util --> u

	real valorVeiculo = 0.0, calculoDesconto = 0.0, valorDoDesconto = 0.0, valorVeiculoFinal = 0.0, porcentagem = 0.0
	logico execucao = verdadeiro
	
	funcao inicio() {
		enquanto (execucao) {
			lerValorVeiculo()
			se (valorVeiculo == 0) {
				escreva("\nO programa vai fechar.\n")
				execucao = falso
				pare
			}
			senao se (valorVeiculo < 0) {
				escreva("\nValor inválido. Tente novamente.")
			}
			senao se (valorVeiculo >= 50000) {
				calcularDesconto(0.05)
			}
			senao se (valorVeiculo < 50000) {
				calcularDesconto(0.02)
			}
		u.aguarde(3000)
		limpa()
		}
	}

	funcao lerValorVeiculo() {
		escreva("Digite o valor do veículo: ")
		leia(valorVeiculo)
	}

	funcao calcularDesconto(real desconto) {
		porcentagem = desconto * 100
		calculoDesconto = valorVeiculo * desconto
		valorVeiculoFinal = valorVeiculo - calculoDesconto
		escreva("\nSeu veículo terá um desconto de ",porcentagem,"% e o valor ficou em R$ ",valorVeiculoFinal,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 26; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */