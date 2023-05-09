programa
{
	// Exemplo 1 oitava aula 09.05.23: Menu
	
	funcao inicio()
	{
		inteiro opcao
		escreva(" 1 - Bom dia!")
		escreva("\n 2 - Boa noite...")
		escreva("\n 3 - Tchau! ")
		leia(opcao)
		escolha (opcao)
		{
			caso 1:
				escreva("\nTenha um ótimo dia!")
				pare // é obrigatório para sair fora do escolha opção
			caso 2:
				escreva("\nTenha uma ótima noite!")
				pare
			caso 3:
				escreva("\nTchau! Volte sempre!")
				pare
			caso contrario:
				escreva("\nOpção inválida.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 212; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
