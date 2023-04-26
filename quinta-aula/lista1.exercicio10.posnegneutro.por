programa
{
	// 10. Faça um algortimo que solicite ao usuário um número inteiro e indique se ele é positivo ou
	// negativo. O número zero é neutro.
	
	funcao inicio()
	{
		inteiro num
		escreva("Entre com um número: ")
		leia(num)
		se (num > 0)
		{	
			escreva("O número é positivo.")
		}
		senao se (num < 0)
		{
			escreva("O número é negativo.")
		}
		senao
		{
			escreva("O número é neutro.")
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 149; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */