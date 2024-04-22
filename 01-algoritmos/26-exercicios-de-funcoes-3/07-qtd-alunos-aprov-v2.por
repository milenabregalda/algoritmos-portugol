programa
{
	/* Exercício 7 lista de exercícios 07.07.23:
	 * Leia a quantidade de alunos existentes em uma sala de aula e para cada aluno, leia a sua média final.
	 * Ao final, escreva a quantidade de alunos que foi aprovada por média (o aluno é aprovado por média se sua média final for
	 * maior ou igual a 6,0).
	 */

	inteiro qtdAlunos = 0, contAprovados = 0
	real mediaFinal = 0.0
	
	funcao inicio() {
		lerQtdAlunos()
		lerMedias()
		escreverAprovados()
	}

	funcao lerQtdAlunos() {
		escreva("Qual é a quantidade de alunos existentes na sala de aula? ")
		leia(qtdAlunos)
	}

	funcao lerMedias() {
		para (inteiro i = 1; i <= qtdAlunos; i++) {
			escreva("Digite a média final do aluno ",i,": ")
			leia(mediaFinal)
			contarAprovados()
		}
	}

	funcao contarAprovados() {
		se (mediaFinal >= 6.0) {
			contAprovados++
		}
	}
	
	funcao escreverAprovados() {
		escreva("\n",contAprovados," aluno(s) foram aprovados por média.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 936; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */