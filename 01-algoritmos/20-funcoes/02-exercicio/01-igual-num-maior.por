programa
{
	/* Exercício 1 19.06.2023:
	 *  Faça uma função que receba 2 números inteiros e retorne 0 se os números forem iguais,
	 *  1 se o primeiro for maior e 2 se o segundo for maior. Incrementar com funções para números iguais, num1 é maior e num2 é maior.")
	 */
	 
	funcao inicio() {
		inteiro num1, num2
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("\nDigite o segundo número: ")
		leia(num2)
		
		se (compararNums(num1,num2) == 0) { // colocando a função direto aqui, não precisa da variável retorno = compararNums(2,3)
			informarIgual()
		}
		senao se (compararNums(num1,num2) == 1) {
			informarMaior()
		}
		senao {
			informarMenor()
		}	
	}
	
	funcao informarIgual() {
		escreva("\nOs números são iguais.")
	}
	
	funcao informarMaior() {
		escreva("\nO primeiro número é maior do que o segundo número.")
	}

	funcao informarMenor() {
		escreva("\nO primeiro número é menor do que o segundo número.")
	}
	
	funcao inteiro compararNums(inteiro a, inteiro b) {
		se (a == b) {
			retorne 0
		}
		senao se (a > b) {
			retorne 1
		}
		senao {
			retorne 2
		// ou usar senao se a < b aqui e senao com 9 abaixo, 9 nunca retornará mesmo mas só para não dar erro (a que usei é melhor)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 922; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */