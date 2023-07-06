programa
{
	
	funcao inteiro sum(inteiro a, inteiro b)
	// Função que retorna um valor e armazena em variável para função inicio, declarar tipo da função e das variáveis acima
	{
		retorne a + b // Retorna valor inteiro de soma de a e b para a função inicio e lá esse valor vai ser utilizado para algo
	}
	
	funcao inicio()
	{
		inteiro num1, num2, soma
		
		escreva("Entre com um número: ")
		leia(num1)
		escreva("\nEntre com outro número: ")
		leia(num2)
		soma = sum(num1, num2)
		escreva("\nA soma dos dois números é igual a ",soma,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 541; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */