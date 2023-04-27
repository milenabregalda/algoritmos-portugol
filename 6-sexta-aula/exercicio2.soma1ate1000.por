programa
{
	// Exercício 2 25.04.23: faça um algoritmo que calcule a soma de 1 até 1000 (1+2+3+4... +1000 = ?)
	
	funcao inicio()
	{
		inteiro num,soma
		num = 1 // como o professor pediu tinha que começar com 1 e não 0 já que era de 1 a 1000
		soma = 0
		enquanto (num <= 1000)
		{
			soma = soma + num
			num = num + 1
		}
		escreva("A soma de 1 até 1000 é ",soma,".")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */