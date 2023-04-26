programa
{
	//Leia uma quantidade de chuva dada em polegadas e imprima o equivalente em milímetros (25,4 mm = 1 polegada).
	
	funcao inicio()
	{
		const real mm = 25.4 // Criação da constante
		real polegada,milimetro // Criação das variáveis
		
		escreva("Entre com a quantidade de chuva em polegadas: ") // O programa pede ao usuário uma quantidade de chuva em polegadas
		leia(polegada) // O programa guarda esse valor na variável polegadas
		milimetro = (mm * polegada) // Operação do cálculo de conversão de polegadas para milímetros
		escreva("\nChoveu ",milimetro," milímetros.")
		// O valor convertido em milímetros aparece para o usuário
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 559; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */