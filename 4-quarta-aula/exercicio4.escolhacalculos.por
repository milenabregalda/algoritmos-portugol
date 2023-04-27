programa
{
	// Elabore um programa que solicite ao usuário que digite 2 números
	// inteiros e após ele escolha uma operação à realizar, conforme segue:
	// -A - Adição
	// -S - Subtração
	// -M - Multiplicação
	// -D - Divisão
	
	funcao inicio()
	{
		real num1,num2,adicao,sub,mul,div
		cadeia operacao
		
		escreva("Digite o primeiro de 2 números. ")
		leia(num1)
		escreva("\nDigite o segundo de 2 números. ")
		leia(num2)
		limpa()
		escreva("\nDigite A para fazer uma adição, S para uma subtração,\nM para uma multiplicação e D para uma divisão com esses números. ")
		leia(operacao)
		limpa()
		se (operacao == "A")
		{
			adicao = num1 + num2
			escreva("O resultado da sua adição é igual a ",adicao,".")
		}
		senao se (operacao == "S")
		{
			sub = num1 - num2
			escreva("O resultado da sua subtração é igual a ",sub,".")
		}
		senao se (operacao == "M")
		{
			mul = num1 * num2
			escreva("O resultado da sua multiplicação é igual a ",mul,".")
		}
		senao se (operacao == "D")
		{
		div = num1 / num2
		escreva("O resultado da sua divisão é igual a ",div,".")
		}
		senao
		{
		escreva("Você digitou uma letra que não corresponde a nenhuma das opções. Tente usar letra maiúscula ou outra letra.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
