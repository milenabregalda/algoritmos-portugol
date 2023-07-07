programa
{
	/* Exercício 2 lista de exercícios 07.07.23:
	 * Criar um algoritmo para escrever 10 vezes seu nome.
	 */

	cadeia nome
	
	funcao inicio() {
		perguntarNome()
		escreverNome()
	}

	funcao perguntarNome() {
		escreva("Qual é o seu nome? ")
		leia(nome)
	}

	funcao escreverNome() {
		para (inteiro i = 1; i <= 10; i++){
			escreva(i,". ",nome,"\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 348; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */