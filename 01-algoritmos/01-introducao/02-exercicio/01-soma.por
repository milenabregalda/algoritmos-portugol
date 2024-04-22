programa
{
	
	funcao inicio()
	{
		inteiro numero_um,numero_dois,soma_numeros // Criação das variáveis do tipo inteiro (número sem vírgula)
		
		escreva("Entre com um número inteiro: ")
		// O programa pede o primeiro número
		leia(numero_um)
		//Após o usuário digitar o primeiro número, o programa guarda essa informação na variável numero_um
		escreva("\nEntre com outro número inteiro: ")
		// O programa pede o segundo número
		leia(numero_dois)
		//Após o usuário digitar o segundo número, o programa guarda essa informação na variável numero_dois
		soma_numeros = numero_um + numero_dois
		// Ocorre a soma dos valores das duas variáveis, que é salva em uma terceira variável chamada soma_numeros
		escreva("\nA soma dos dois números é igual a: ",soma_numeros)
		// O programa mostra o valor da soma para o usuário
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
