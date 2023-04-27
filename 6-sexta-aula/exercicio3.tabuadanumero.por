programa

{
	// Exercício 3 25.04.23: faça um algoritmo que leia um número inteiro de 1 a 10 e escreva na tela sua tabuada.
	
	funcao inicio()
	{
		inteiro numUser,numTabuada,produto
		escreva("Entre com um número inteiro: ")
		leia(numUser)
		numTabuada = 0
		enquanto (numTabuada <= 10)
		{
			produto = numUser * numTabuada
			escreva("\n",numUser," x ",numTabuada," = ",produto)
			numTabuada = numTabuada + 1
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 174; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */