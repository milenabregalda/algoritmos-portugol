programa
{
	/* Exercício 5 lista de exercícios 07.07.23:
	 * Faça um algoritmo que calcule a média de 3 números e apresente o resultado no final.
	 */

	real num, soma = 0.0, media
	
	funcao inicio() {
		lerNumeros()
		calcularMedia()
		escreverResultado()
	}

	funcao lerNumeros() {
		para (inteiro i = 1; i <= 3; i++) {
			escreva("Digite o número ",i,": ")
			leia(num)
			soma += num
		}
	}

	funcao calcularMedia() {
		media = soma / 3
	}

	funcao escreverResultado() {
		escreva("\nO resultado da média é igual a ",media,".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */