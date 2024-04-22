programa
{
	// Exercício 2 décima terceira aula algoritmos 22.05.23:
	// Criar um algoritmo que leia 10 números pelo teclado e coloque num vetor de 10 posições.
	// Após exiba os números na ordem inversa da que os números foram digitados.
	
	funcao inicio()
	{
		inteiro i, num, vetor[10]

		para (i = 0; i < 10; i++) {
			escreva("Digite o número ",i," do vetor: ")
			leia(num)
			vetor[i] = num
		}
		
		escreva("\nNúmeros do vetor na ordem inversa que foram digitados:\n| ")

		para (i = 9; i >= 0; i--) {
			escreva(vetor[i]," | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 273; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */