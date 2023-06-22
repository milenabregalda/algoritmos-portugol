programa 
{

	/* Milena Bregalda 20.06.2023
	 * Exercício 8 da lista
	 * Leia a quantidade de alunos existentes em uma sala de aula e para cada aluno, leia a sua média final.
	 * Ao final, escreva a quantidade de alunos que foi aprovada por média
	 * (o aluno é aprovado por média se sua média final for maior ou igual a 7,0)
	*/
 
	funcao inicio() {
		inteiro aprovados = 0
		aprovados = calcularAprovados()
		escreva("\nTivemos ",aprovados," aluno(s) aprovado(s) por média.")
	}

	funcao inteiro calcularAprovados() {
		inteiro i, qtdAlunos, aprov = 0
		real media
		
		escreva("Quantos alunos têm na sala de aula? ")
		leia(qtdAlunos)
		para (i = 1; i <= qtdAlunos; i++) {
			escreva("Digite a média final do aluno ",i,": ")
			leia(media)
			se (media >= 7.0) {
				aprov++
			}
		}
		retorne aprov
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */