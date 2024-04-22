programa
{
	// Exercício 1 sétima aula 08.05.23:
	// Leia 10 números inteiros e indique se é par ou ímpar.
	// No final, informar quantos números pares e quantos números ímpares foram digitados.
	
	funcao inicio()
	{
		inteiro contador = 1, numero, pares = 0, impares = 0
		
		enquanto (contador <= 10) // ou contador = 0 e contador < 10, mas para mim era melhor contador = 1
		{
			escreva ("\nDigite o número ",contador,". ")
			leia(numero)
			se (numero % 2 == 0)
			{
				escreva("\nO número ",contador," é par.\n")
				pares++ // igual a pares = pares + 1
			}
			senao
			{
				escreva("\nO número ",contador," é ímpar.\n")
				impares++
			}
			contador++
		}
		escreva("\nForam digitados ",pares," números pares.")
		escreva("\nForam digitados ",impares," números ímpares.\n")	
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 274; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */