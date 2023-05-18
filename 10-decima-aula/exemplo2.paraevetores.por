programa
{
	
	funcao inicio()
	{
		inteiro milena[10], i
		
		para (i = 0; i < 10; i++) // Condição inicial, condição de parada, índice + 1
		{
			milena[i] = i // milena de vetor 1 recebe o valor 1, milena de 2 recebe 2, etc.
			escreva(" ",milena[i])
		}
		escreva("\n")
		
		para (i = 9; i >= 0; i--) // o contrário do exemplo acima; índice - 1
		{
			escreva(" ",milena[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 351; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */