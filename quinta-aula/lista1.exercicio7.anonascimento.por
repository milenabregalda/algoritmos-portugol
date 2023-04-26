programa
{
	// 7. Faça um algoritmo que solicite ao usuário seu nome e idade e indique qual seu ano de nascimento.

	funcao inicio()
	{
		cadeia nome
		inteiro idade,ano_nascimento
		inteiro ano_atual = 2023
		
		escreva("Qual é o seu nome? ")
		leia(nome)
		escreva("\nDigite a sua idade. ")
		leia(idade)
		ano_nascimento = ano_atual - idade
		escreva("\nVocê se chama ",nome," e nasceu em ",ano_nascimento,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */