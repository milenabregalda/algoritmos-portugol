programa
{
	// Milena Bregalda lista 2 exercício 2)
	// Faça um algoritmo que solicite ao usuário o raio de uma circunferência e exiba na tela o seu diâmetro e sua área.
	
	funcao inicio()
	{
		real raio,diametro,area
		real pi = 3.14
		
		escreva("Entre com o raio de uma circunferência: ")
		leia(raio)
		diametro = 2 * raio
		area = pi * (raio*raio)
		escreva("\nO diâmetro é ",diametro," e a área é ",area,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 48; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
