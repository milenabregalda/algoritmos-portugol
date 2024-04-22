programa
{
	// Exercício 1 décima terceira aula algoritmos 22.05.23:
	// Criar um algoritmo que leia 10 números e coloque num vetor de 10 posições. Após, percorra esse vetor e exiba os números.
	
	funcao inicio()
	{
		inteiro i, num, vetor[10]

		para (i = 0; i < 10; i++) {
			escreva("Digite o número ",i," do vetor: ")
			leia(num)
			vetor[i] = num
		}
		
		escreva("\nNúmeros do vetor:\n| ")

		para (i = 0; i < 10; i++) {
			escreva(vetor[i]," | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 394; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */