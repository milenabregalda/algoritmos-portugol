programa
{
	/* Exercício 9 lista de exercícios 07.07.23:
	 * Escrever um algoritmo que calcule o consumo médio de combustível de um carro, onde o usuário
	 * informa a distância total percorrida e o total de combustível gasto.
	 */

	real distanciaPercorrida = 0.0, combustivelGasto = 0.0, consumoMedio = 0.0
	
	funcao inicio() {
		perguntarDados()
		calcularConsumo()
		informarConsumo()
	}

	funcao perguntarDados() {
		escreva("Informe a distância total percorrida com o carro em quilômetros: ")
		leia(distanciaPercorrida)
		escreva("Informe o total de combustível gasto em litros: ")
		leia(combustivelGasto)
	}

	funcao calcularConsumo() {
		consumoMedio = distanciaPercorrida / combustivelGasto
	}

	funcao informarConsumo() {
		escreva("\nO consumo médio de combustível do carro foi de ",consumoMedio," km/l.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */