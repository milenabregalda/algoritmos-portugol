programa
{
	/* Exercício 10 lista de exercícios 10.07.23:
	 * Escreva um programa que leia o raio de um círculo e faça duas funções: uma função chamada area que calcula
	 * e retorna a área do círculo e outra função chamada perimetro que calcula e retorna o perímetro do círculo.
	 * Área = PI * r ²
	 * Perímetro = PI * 2 * r.
	 */
	
	real r, PI = 3.14, ar, per

	funcao lerRaio() {
		escreva("Digite o raio do círculo: ")
		leia(r)
	}

	funcao real area() {
		real a
		a = PI * (r * r)
		retorne a
	}

	funcao real perimetro() {
		real p
		p = PI * 2 * r
		retorne p
	}
	
	funcao inicio() {
		lerRaio()
		ar = area()
		per = perimetro()
		escreva("Área do círculo: ",ar,"\nPerímetro do círculo: ",per)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */