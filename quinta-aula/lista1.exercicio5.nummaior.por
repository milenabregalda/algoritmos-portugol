programa
{
	// 5. Faça um algoritmo que solicite ao usuário dois números inteiros e indique qual deles é o maior.
	
	funcao inicio()
	{
		inteiro num1,num2
		
		escreva("Entre com o primeiro número: ")
		leia(num1)
		escreva("\nEntre com o segundo número: ")
		leia(num2)
		
		se (num1 > num2)
		{	
			escreva("\nO primeiro número é maior.")
		}
		senao se (num1 < num2)
		{
			escreva("\nO segundo número é maior.")
		}
		senao
		{
			escreva("\nOs dois números são iguais.")
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 115; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */