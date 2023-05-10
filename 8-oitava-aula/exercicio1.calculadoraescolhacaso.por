programa
{
	// Exercício 1 oitava aula 09.05.23:
	// Faça uma calculadora utilizando o escolha caso onde o usuário digita dois números e tem as opções de + - * / %.
	
	funcao inicio()
	{
		inteiro numero1, numero2, opcao, resultado, resto // Foi feito em inteiro p/ facilitar, já que resto não aceitava real

		escreva("Digite o primeiro número. ")
		leia(numero1)
		escreva("\nDigite o segundo número. ")
		leia(numero2)
		escreva("\nDigite um número para:\n1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão")
		escreva("\n5 - Cálculo do resto da divisão\nNúmero: ")
		leia(opcao)
		
		escolha(opcao) {
			caso 1:
				resultado = numero1 + numero2
				escreva ("\n",numero1," + ",numero2," = ",resultado)
				pare
			caso 2:
				resultado = numero1 - numero2
				escreva ("\n",numero1," - ",numero2," = ",resultado)
				pare
			caso 3:
				resultado = numero1 * numero2
				escreva ("\n",numero1," * ",numero2," = ",resultado)
				pare
			caso 4:
				resultado = numero1 / numero2
				resto = numero1 % numero2
				escreva ("\n",numero1," / ",numero2," = ",resultado,"\nResto da divisão: ",resto)
				pare
			caso 5:
				resto = numero1 % numero2
				escreva ("\n",numero1," % ",numero2," = ",resto)
				pare
			caso contrario:
				escreva ("\nOperação inválida.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */