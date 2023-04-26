programa
{
	//Leia uma temperatura dada na escala em Celsius (C) e imprima o equivalente em Fahrenheit.
	
	funcao inicio()
	{
		real celsius,fahrenheit // Criação das variáveis
		
		escreva("Digite a temperatura em Celsius: ") // O programa pede ao usuário uma temperatura em Celsius
		leia(celsius) // O programa guarda esse valor na variável celsius
		fahrenheit=((9.0/5.0)*celsius+32) // Operação do cálculo de conversão de Celsius para Fahrenheit
		escreva("\nO equivalente da temperatura em Fahrenheit é: ",fahrenheit)
		//O valor convertido em Fahrenheit aparece para o usuário
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 387; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */