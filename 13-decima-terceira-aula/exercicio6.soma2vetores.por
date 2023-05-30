programa
{
	// Exercício 6 décima terceira aula algoritmos 22.05.23:
	// Escreva um algoritmo que leia dois vetores de 10 posições e faça a soma dos elementos de mesmo índice,
	// colocando o resultado em um terceiro vetor. Mostre o vetor resultante.
	
	funcao inicio()
	{
		inteiro i, vetor1[10], vetor2[10], vetor3[10], num

		para (i = 0; i < 10; i++) {
			escreva("Digite o número ",i," do vetor 1: ")
			leia(num)
			vetor1[i] = num
		}
		escreva("\n")
		
		para (i = 0; i < 10; i++) {
			escreva("Digite o número ",i," do vetor 2: ")
			leia(num)
			vetor2[i] = num
		}
		
		para (i = 0; i < 10; i++) {
			vetor3[i] = vetor1[i] + vetor2[i]
		}
		
		escreva("\nVetor resultante (resultados das somas dos índices dos outros 2 vetores): \n| ")
		para (i = 0; i < 10; i++) {
			escreva(vetor3[i]," | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 808; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */