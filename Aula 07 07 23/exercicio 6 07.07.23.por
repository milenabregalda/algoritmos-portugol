programa
{
	/* Exercício 6 lista de exercícios 07.07.23:
	 * Um cliente de supermercado fez uma compra de 20 itens. Leia o preço de cada item e calcule o total que a pessoa vai pagar. 
	 */

	real precos, total = 0.0
	
	funcao inicio() {
		lerPrecos()
		escreverTotal()
	}

	funcao lerPrecos() {
		para (inteiro i = 1; i <= 20; i++) {
			escreva("Digite o preço do item ",i,": ")
			leia(precos)
			total += precos
		}
	}

	funcao escreverTotal() {
		escreva("\nO total que você vai pagar é R$ ",total,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 218; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */