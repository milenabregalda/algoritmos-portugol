programa
{
	// Milena Bregalda lista 2 exercício 4)
	// Faça um algoritmo que solicite ao usuário o preço de um produto e exiba o preço final,
	// considerando um desconto de 10% caso o pagamento seja à vista.
	
	funcao inicio()
	{
		real preco,calculo_desconto,preco_final
		cadeia opcao
		real valor_desconto = 0.1
		
		escreva("Digite o preço do produto. ")
		leia(preco)
		escreva("\nO pagamento será à vista? (s/n) ")
		leia(opcao)

		se (opcao == "s")
		{
			calculo_desconto = preco * valor_desconto
			preco_final = preco - calculo_desconto
			escreva("\nComo você pagou à vista, terá um desconto de 10% de R$ ",calculo_desconto," e o preço final ficou em R$ ",preco_final,".")
		}
		senao se (opcao == "n")
		{
			preco_final = preco
			escreva("\nO preço final não teve desconto e ficou em R$ ",preco_final,".")
		}
		senao
		{
		escreva("\nVocê digitou algo que não corresponde a nenhuma das opções.")
		escreva("\nTente novamente digitando s em minúsculo para pagar à vista e n em minúsculo para não pagar à vista.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 790; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */