programa
{
	// Exercício 1 décima aula 15.05.23:
	// Criar um algoritmo que leia 10 números pelo teclado e coloque num vetor de 10 posições.
	// Após exiba os números na ordem que os números foram digitados.
	
	funcao inicio()
	{
		inteiro vetor[10], i, numeros

		para (i = 0; i < 10; i++) // Ler as 10 posições de vetor
		{
			escreva("Digite o número que ficará guardado na posição ",i," do vetor: ")
			leia(numeros)
			vetor[i] = numeros
		}
		
		escreva("\nNúmeros na ordem que foram digitados: \n")
		
		para (i = 0; i < 10; i++) // Escrever as 10 posições de vetor (em novo laço para só ser escrito no final)
		{
			escreva(vetor[i]," ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */