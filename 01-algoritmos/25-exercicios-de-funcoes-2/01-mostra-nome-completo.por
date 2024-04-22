programa
{
	/* Exercício 1 lista de exercícios 04.07.23:
	 * Elabore um algoritmo em que o usuário digita seu nome completo e mostre na tela.
	 * É melhor usar variáveis globais a não ser que seja um cálculo interno ou algo do tipo.
	 */

	cadeia nome
	
	funcao inicio()
	{
		perguntarNome()
		mostrarNome()
	}

	funcao perguntarNome() {
		escreva("Digite o seu nome completo: ")
		leia(nome)
	}

	funcao mostrarNome() {
		escreva("O seu nome é ",nome,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */