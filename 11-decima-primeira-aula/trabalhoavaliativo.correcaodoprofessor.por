programa
{
	
	inclua biblioteca Util --> u

	funcao inicio()
	{
		logico menuPrincipal = verdadeiro, encontrado = falso
		inteiro opcao, i, vetor[10], elemento
		
		para (i = 0; i < 10; i++) { // Inicializar o vetor para caso usuário já queira outras opções sem dar erro
			vetor[i] = 0
		}
		
		enquanto (menuPrincipal) {
			limpa()
			escreva("1 - Criar vetor de inteiros\n2 - Encontrar valor no vetor\n3 - Exibir o vetor completo\n4 - Zerar o vetor ")
			escreva("(preencher com zeros)\n0 - Sair ")
			leia(opcao)
			
			escolha (opcao) {
				caso 1:
					limpa ()
					encontrado = falso // Só pode estar encontrado no caso 2, para não dar problema de encontrar número que não tem no vetor
					para (i = 0; i < 10; i++) {
						escreva("Entre com o elemento ",i,": ")
						leia(elemento)
						vetor[i] = elemento
					}
					escreva("\n\nVetor completo.")
					u.aguarde(5000)
					pare
				caso 2:
					limpa()
					escreva("Qual o elemento a procurar? ")
					leia(elemento)
					para (i = 0; i < 10; i++) {
						se (vetor[i] == elemento) {
							encontrado = verdadeiro
							pare // Para só encontrar uma vez, pode ser usado em se também não só em para
						}
					}
					se (encontrado) {
						escreva ("\nElemento encontrado na posição ",i) // Como parou em cima, i fecha no valor encontrado
						u.aguarde(5000)
					}
					senao {
						escreva("\nElemento não encontrado no vetor.")
						u.aguarde(5000)
					}
					pare
				caso 3:
					limpa()
					para (i = 0; i < 10; i++) {
						escreva(vetor[i],"  ")
					}
					u.aguarde(5000)
					pare
				caso 4:
					limpa()
					para (i = 0; i < 10; i++) {
						vetor[i] = 0
					}
					escreva("Vetor zerado!!")
					u.aguarde(5000)
					pare
				caso 0:
					menuPrincipal = falso
					escreva("Até mais!!!")
					pare
				caso contrario:
					escreva("\nOpção inválida.")
					
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 520; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */