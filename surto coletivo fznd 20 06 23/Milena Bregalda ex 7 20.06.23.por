programa 
{

	/* Milena Bregalda 20.06.2023
	 * Exercício 7 da lista
	 * Um cliente de supermercado fez uma compra de 20 itens. Leia o preço de cada item e calcule o total que a pessoa vai pagar.
	*/
 
	funcao inicio() {
		real total
		total = calcularTotal()
		escreva("\nO preço total que vai ser pago ficou em R$ ",total,".")
	}

	funcao real calcularTotal() {
		inteiro i
		real preco, soma = 0.0
		para (i = 1; i <= 20; i++) {
			escreva("Leia o preço do item 1",i,": ")
			leia(preco)
			soma = soma + preco
		}
		retorne soma
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 199; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */