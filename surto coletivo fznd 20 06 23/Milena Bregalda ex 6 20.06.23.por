programa 
{

	/* Milena Bregalda 20.06.2023
	 * Exercício 6 da lista
	 * Faça um algoritmo que calcule a média de 3 números e apresente o resultado no final.
	*/
 
	funcao inicio() {
		real num1, num2, num3, media
		
		escreva("Digite o primeiro número: ")
		leia(num1)
		escreva("Digite o segundo número: ")
		leia(num2)
		escreva("Digite o terceiro número: ")
		leia(num3)
		media = calcularMedia(num1, num2, num3)
		escreva("\nA média dos três números é igual a ",media,".")
	}

	funcao real calcularMedia(real a, real b, real c) {
		retorne (a + b + c)/3
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 161; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */