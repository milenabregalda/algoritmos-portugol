programa
{
	// Exercício 1 oitava aula 09.05.23:
	// Faça uma calculadora utilizando o escolha caso onde o usuário digita dois números e tem as opções de + - * / %.
	
	funcao inicio()
	{
		real numero1, numero2, resultado
		inteiro opcao, numero1copia, numero2copia, resultadocopia
		// Cópias das variáveis reais p/ inteiras somente para calcular resto

		escreva("Digite o primeiro número. ")
		leia(numero1)
		numero1copia = numero1
		escreva("\nDigite o segundo número. ")
		leia(numero2)
		numero2copia = numero2
		escreva("\nDigite um número para:\n1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n5 - Cálculo do resto.\nNúmero: ")
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
				resultadocopia = numero1copia % numero2copia
				escreva ("\n",numero1," / ",numero2," = ",resultado,"\n Resto da divisão: ",resultadocopia)
				pare
			caso 5:
				resultadocopia = numero1copia % numero2copia
				escreva ("\n",numero1copia," % ",numero2copia," = ",resultadocopia)
				pare
			caso contrario:
				escreva ("\nOpção inválida. Tente novamente digitando um número de 1 a 5.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */