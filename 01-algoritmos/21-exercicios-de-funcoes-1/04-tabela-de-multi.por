programa 
{

	// Milena Bregalda 20.06.2023
	// Exercício 4 da lista
	// Faça um algoritmo que leia um número e imprima a sua tabela de multiplicação de 1 até 13.

	funcao inicio() {
		inteiro numero
		escreva("Digite um número inteiro: ")
		leia(numero)
		escreva("\nTabuada:")
		mostrarTabuada(numero)
	}

	funcao mostrarTabuada(inteiro num1) {
		inteiro num2, resultado, i
		para (num2 = 1; num2 <= 13; num2++) {
			resultado = num1 * num2
			escreva("\n",num1," * ",num2," = ",resultado)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 494; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */