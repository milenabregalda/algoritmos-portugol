programa
{
	// Exercício 5 décima terceira aula algoritmos 22.05.23:
	// Crie um algoritmo que leia um vetor de 20 posições e informe: a) Quantos números pares existem no vetor
	// b) Quantos números ímpares existem no vetor c) Quantos números maiores do que 50 d) Quantos números menores do que 7
	
	funcao inicio()
	{
		inteiro i, num, vetor[20], par = 0, impar = 0, maioresQue50 = 0, menoresQue7 = 0

		para (i = 0; i < 20; i++) {
			escreva("Digite o número ",i," do vetor: ")
			leia(num)
			vetor[i] = num
		}

		para (i = 0; i < 20; i++) {
			se (vetor[i] % 2 == 0) {
				par++
			}
			senao {
				impar++
			}
			se (vetor[i] > 50) {
				maioresQue50++
			}
			se (vetor[i] < 7) {
				menoresQue7++
			}
		}
		escreva("\nQuantidade de pares que existem no vetor: ",par,"\nQuantidade de ímpares que existem no vetor: ",impar,"\n")
		escreva("Quantidade de números maiores do que 50: ",maioresQue50,"\nQuantidade de números menores que 7: ",menoresQue7,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 729; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */