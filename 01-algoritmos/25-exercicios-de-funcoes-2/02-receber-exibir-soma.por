programa
{
	/* Exercício 2 lista de exercícios 04.07.23:
	 * Faça um algoritmo que receba dois números e exiba o resultado da sua soma.
	 */

	inteiro num1, num2, soma
	
	funcao inicio() {
		receberNumeros()
		somarNumeros()
		mostrarSoma()
	}

	funcao receberNumeros() {
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
	}

	funcao somarNumeros() {
		soma = num1 + num2
	}

	funcao mostrarSoma() {
		escreva("\nResultado da soma: ",soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */