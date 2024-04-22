programa
{
	// Exercício 2 sétima aula 08.05.23:
	// Construa um algoritmo que, para um grupo de 10 valores inteiros lidos, determine:
	// - a soma dos números positivos;
	// - a quantidade de valores negativos.

	funcao inicio()
	{
		inteiro contador = 1, numero, soma_positivos = 0, quantidade_negativos = 0 // contador normalmente é usado i de índice
		
		enquanto (contador <= 10)
		{
			escreva("Digite o número inteiro ",contador,": ")
			leia(numero)
			se (numero > 0)
			{
				soma_positivos = soma_positivos + numero
			}
			senao se (numero < 0)
			// ou numero < 0 e senao; ou numero >= 0 e senao, mas nesse caso 0 seria positivo e não exceção (não muda resultado)
			{
				quantidade_negativos++
			}
			contador++
		}
		escreva("\nA soma dos números positivos é igual a ",soma_positivos,".")
		escreva("\nVocê digitou ",quantidade_negativos," números negativos.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 676; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */