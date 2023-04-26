programa
{
	// Desenvolva um programa que onde o usuário informe 2 valores inteiros e o próprio algoritmo efetue a troca de valores de forma
	// que a variável A passe a possuir o valor da variável B e a variável B passe a possuir o valor da variável A.
	// Apresentar os valores trocados.
	
	funcao inicio()
	{
		inteiro A,B,AB
		
		escreva("Digite o número inteiro da variável A. ")
		leia(A)
		escreva("\nDigite o número inteiro da variável B. ")
		leia(B)
		escreva("\nPor enquanto, o valor da variável A é igual a ",A," e o valor da variável B é igual a ",B,".")
		AB = B // Valor de B é passado para AB (variável de troca, dança das cadeiras) exemplo A=1,B=2,AB=2
		B = A // Valor de A é passado para B, exemplo A=1,B=1,AB=2 
		A = AB // Finalmente, os valores são trocados quando o valor de AB é passado para A, exemplo A=2,B=1,AB=2
		escreva("\n\nOs valores foram trocados. O valor de A agora é ",A," e o valor de B agora é ",B,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 945; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */