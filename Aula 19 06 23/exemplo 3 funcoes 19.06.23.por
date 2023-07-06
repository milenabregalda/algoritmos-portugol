programa
{
	// Um código limpo é um código com o mínimo possível de código na função inicio e esta chama outras funções.
	
	funcao soma(inteiro a, inteiro b)
	{
		inteiro num1 = a, num2 = b // Variáveis privadas da função soma
		escreva(num1 + num2)
	}

	funcao escrever()  {
		escreva("\n")
	}
	
	funcao inicio()
	{
		soma(5, 6) // Com funções, tudo fica mais limpo
		escrever()
		soma(16, 10)
		escreva("\nA soma de 15+15 é igual a: ") // Em outras linguagens, dá para chamar funções dentro de escreva
		soma(15, 15)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 518; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */