programa
{
	// Exercício décima quinta aula algoritmos 29.05.23:
	// Aula antiga: Crie um algoritmo que faça o preenchimento automático de um vetor de 30 posições com os 30 primeiros números
	// ímpares existentes entre 0 e 100.
	// A partir da correção do exercício 7 do dia 22.05.23, complementar criando em cima desse código um update que também crie vetor
	// com 30 pares e mostre os ímpares e pares.

	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetorImpar[30], vetorPar[30], i = 0, j = 0, num // i = iPar, j = iImpar

		enquanto (i < 30 ou j < 30) {
			num = u.sorteia(0, 100)
			se (num % 2 != 0 e i < 30) {
				vetorImpar[i] = num
				i++
			}
			senao se (num % 2 == 0 e j < 30) {
		// Tinha problema de vários 0 com "e" porque i ou j ficavam > 30 antes de preencher os 2 vetores, com + testes de "ou" não tem esse problema
				vetorPar[j] = num
				j++
			}
		}
		escreva("Vetor de ímpares:\n")
		i = 0
		para (i = 0; i < 30; i++) {
			escreva(vetorImpar[i],"  ")
		}
		j = 0
		escreva("\n\nVetor de pares:\n")
		para (j = 0; j < 30; j++) {
			escreva(vetorPar[j],"  ")
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 814; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */