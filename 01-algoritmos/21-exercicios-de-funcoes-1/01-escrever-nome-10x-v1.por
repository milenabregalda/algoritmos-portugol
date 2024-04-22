programa 
{

	// Milena Bregalda 20.06.2023
	// Exercício 1 da lista - Criar um algoritmo para escrever 10 vezes seu nome.

	funcao inicio() {
		cadeia nome
		escreva("Digite o seu nome: ")
 		leia(nome)
		escreverNome(nome)
	}

	funcao escreverNome(cadeia n) {
		inteiro i = 1
		para (i = 1; i <= 10; i++) {
			escreva("\n",i,". ",n)
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 332; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */