programa
{
	// Exercício 1 nona aula 12.05.23 (usando para ao invés de enquanto):
	// Faça um algoritmo que leia 5 números e no final informe na tela qual foi o maior e qual foi o menor número digitado.
	
	funcao inicio()
	{
		inteiro i, numeros[5], maior = -999999999, menor = 999999999
		
		para (i = 0; i < 5; i++) {
			escreva("Digite o número ",i,": ")
			leia(numeros[i])
		}
		para (i = 0; i < 5; i++) {
			se (numeros[i] > maior) {
				maior = numeros[i]
			}		
			se (numeros[i] < menor) {
				menor = numeros[i]
			}
		}
		escreva("\nNúmero maior: ",maior,"\nNúmero menor: ",menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 466; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */