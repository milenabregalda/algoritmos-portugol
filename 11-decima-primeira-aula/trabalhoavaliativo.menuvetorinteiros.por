programa
{
	// Milena Bregalda - Algoritmos trabalho avaliativo menu 16.05.23 (para 22.06.23)
	
	inclua biblioteca Util --> u

	funcao inicio()
	{
		logico menu = verdadeiro, encontrado = falso
		inteiro opcao, i, vetor[10], numeros, novoValor, posicoesEncontrado[10], contagemEncontrado = 0, contagemNaoEncontrado = 0
		// Valor da variável não é mais decidido pelo usuário e terá 10 posições por limitação do Portugol.

		enquanto (menu) {
			escreva("Menu:\n1 – Criar Vetor de Inteiros\n2 – Encontrar valor no vetor\n3 – Exibir o vetor completo")
			escreva("\n4 – Zerar o vetor (preencher com zeros)\n0 - Sair\nSua escolha: ")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					limpa()
					para (i = 0; i < 10; i++) {
						escreva("Digite o número que ficará guardado na posição ",i," do vetor: ")
						leia(numeros)
						vetor[i] = numeros
					}	
					u.aguarde(1000)
					limpa()
					pare
					
				caso 2:
					limpa()
					escreva("Digite um valor para verificar se já está no vetor: ")
					leia(novoValor)
						para (i = 0; i < 10; i++) {
							se (vetor[i] == novoValor) {
								posicoesEncontrado[i] = i
								encontrado = verdadeiro
								contagemEncontrado++
							}
						
							se (vetor[i] != novoValor) {
								contagemNaoEncontrado++
							}
						
							senao se (encontrado) {
								escreva("\nEncontrado na posição ",posicoesEncontrado[i]," do vetor.")
							}
						}
					escreva ("\n\nValores encontrados acima. Se nada apareceu, nenhum valor foi encontrado.")
					u.aguarde(3000)
					limpa()
					pare
					
				caso 3:
					limpa()
					para (i = 0; i < 10; i++) {
						escreva(vetor[i]," ")
					}
					u.aguarde(1000)
					limpa()
					pare
					
				caso 4:
					limpa()
					para (i = 0; i < 10; i++) {
						vetor[i] = 0
					}
					escreva("Zerando o vetor...")
					u.aguarde(1000)
					limpa()
					pare
					
				caso 0:
					limpa()
					u.aguarde(1000)
					escreva("Programa finalizado. O menu não voltará a aparecer.\n")
					menu = falso
					pare
					
				caso contrario:
					limpa()
					escreva("Opção inválida.\n\n")
					u.aguarde(1000)
					limpa()
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 64; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */