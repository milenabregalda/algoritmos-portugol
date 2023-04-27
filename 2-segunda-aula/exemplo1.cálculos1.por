programa
{
	
	funcao inicio()
	{
		inteiro num1,num2,soma,sub,mul,resto // Declaração das variáveis
		real div
		
		escreva("Entre com um número inteiro: ")
		leia(num1) //Lê o primeiro número
		escreva("\nEntre com outro número inteiro: ")
		leia(num2) //Lê o segundo número
		soma = num1 + num2 //Soma os dois números
		sub = num1 - num2 //Subtrai num1 de num2
		mul = num1 * num2 //Multiplica num1 de num2
		div = num1 / num2 // Divide num1 por num2
		resto = num1 % num2 // Calcula o resto da divisão
		escreva("\nA soma dos dois números é: ",soma)
		escreva("\nA subtração dos dois números é: ",sub)
		escreva("\nA multiplicação dos dois números é: ",mul)
		escreva("\nResultado da divisão: ",div," e o resto é: ",resto)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 504; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
