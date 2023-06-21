programa 
{

	/* Milena Bregalda 20.06.2023
	 * Exercício 3 da lista
	 *  Uma concessionária está vendendo os seus veículos com desconto. Faça um algoritmo que calcule e exiba o valor do desconto e o valor
	 *  a ser pago pelo cliente. O desconto deverá ser calculado sobre o valor do veículo de acordo com o combustível (álcool – 25%,
	 *  gasolina – 21% ou diesel –14%). Com valor do veículo igual a zero encerra entrada de dados. Informe total de
	 *  descontos concedidos pela concessionária e total pago pelos clientes. 
	 */

	inclua biblioteca Util -->u

	funcao inicio() {
		real precoCheio, combustivel
		inteiro resposta
		logico menu = verdadeiro

		enquanto (menu) {
			escreva("1 - Calcular preço dos veículos\n0 - Sair\nSua escolha: ")
			leia (resposta)

			escolha(resposta) {
				caso 1:
					
					escreva("Informe o preço cheio do carro: ")
					leia(precoCheio)
					se (precoCheio <= 0) {
						escreva("\nPreço inválido.")
						pare
					}
					senao {
						escreva("\nInforme o tipo de combustível: ")
						leia(combustivel)
						
						
					}
			}
		}
	}

	funcao calcularPrecoFinal(inteiro num1) {
		- recebe valor
		- recebe combustivel
		- calcula 






		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1180; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */