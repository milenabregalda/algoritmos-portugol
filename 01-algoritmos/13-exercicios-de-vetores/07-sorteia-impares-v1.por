programa
{
	// Exercício 7 décima terceira aula algoritmos 22.05.23:
	// Crie um algoritmo que faça o preenchimento automático de um vetor de 30 posições com os 30 primeiros números
	// ímpares existentes entre 0 e 100.

	// Essa foi a minha versão, mas a décima quinta aula de 29.05.23 tem a versão corrigida e com complementos.
	// Era opcional usar bubble sort para colocar números ímpares em ordem crescente.

	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro i = 0, j = 0, vetorSorteia[100], vetor[30], tam = 0, troca = 0, copia
		
		para (i = 0; i < 100; i++) {
			vetorSorteia[i] = u.sorteia(0, 100)
		}
		
			i = 0
			enquanto (i < 30) {
				se (vetorSorteia[j] % 2 == 1) {
					vetor[i] = vetorSorteia[j]
					i++
					j++
				}
				senao se (vetorSorteia[j] % 2 == 0) {
					j++
				}
			}

			escreva("Vetor de 30 posições com 30 números ímpares entre 0 e 100:\n")
			para (i = 0; i < 30; i++) {
				escreva(vetor[i],"  ")
			}
			escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */