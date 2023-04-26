programa
{
	// Milena Bregalda lista 2 exercício 1)
	// Faça um algoritmo que solicite ao usuário um número inteiro e exiba na tela se ele é par ou ímpar.
	
	funcao inicio()
	{
		inteiro numero
		
		escreva("Entre com um número inteiro: ")
		leia(numero)
		se (numero % 2 == 0) // divisão por 2 dá resto 0 se for par, senão é ímpar
		{	
			escreva("O número é par.")
		}
		senao
		{
			escreva("O número é ímpar.")
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 196; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */