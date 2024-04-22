programa
{
	/* Exercício 10 lista de exercícios 07.07.23:
	 * Escrever um algoritmo onde o usuário informe seu nome, as duas notas das provas (P1 e P2) e a nota do trabalho.
	 * No final informar o nome do aluno e a sua média (aritmética). 
	 */

	cadeia nome
	real notaP1, notaP2, notaTrab, media
	
	funcao inicio() {
		perguntarDados()
		calcularMedia()
		limpa()
		informarNomeEMedia()
	}

	funcao perguntarDados() {
		escreva("Informe o seu nome: ")
		leia(nome)
		escreva("Informe a nota da primeira prova: ")
		leia(notaP1)
		escreva("Informe a nota da segunda prova: ")
		leia(notaP2)
		escreva("Informe a nota do trabalho: ")
		leia(notaTrab)
	}

	funcao calcularMedia() {
		media = (notaP1 + notaP2 + notaTrab) / 3
	}

	funcao informarNomeEMedia() {
		escreva("Nome do aluno: ",nome,"\nMédia das notas: ",media)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */