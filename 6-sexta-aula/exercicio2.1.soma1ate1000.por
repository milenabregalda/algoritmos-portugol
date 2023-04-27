programa
{
	// Exercício 2.1 25.04.23 (2 modificado): faça um algoritmo que calcule a soma de 1 até 1000 (1+2+3+4... +1000 = ?)
	
	funcao inicio()
	{
		inteiro num,soma,numUser
		escreva("A soma será de 1 até quanto? ")
		leia(numUser)
		num = 0
		soma = 0
		enquanto (num < numUser)
		{
			num = num + 1
			soma = soma + num
		}
		escreva("O cálculo foi feito. A soma de 1 até ",num," é igual a ",soma,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 41; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */