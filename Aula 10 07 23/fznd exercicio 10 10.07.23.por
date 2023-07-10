programa
{
	/* Exercício 10 lista de exercícios 10.07.23:
	 * Escreva um programa que leia o raio de um círculo e faça duas funções: uma função chamada area que calcula
	 * e retorna a área do círculo e outra função chamada perimetro que calcula e retorna o perímetro do círculo.
	 * Área = PI * r ²
	 * Perímetro = PI * 2 * r;
	 */
	
	real r, PI = 3.14

	funcao lerDados() {
		escreva("Digite o raio do círculo: ")
		leia(r)
	}

	funcao calcularArea() {
		real area
		area = PI * (r * r)
		retorne
	}

	funcao real calcularPerimetro() {
		real perimetro
		perimetro = PI * 2 * r
		retorne perimetro // fzr dps
	}
	
	funcao inicio() {
		lerDados()
		calcularArea()
		calcularPerimetro()
		escreva("Área do círculo: ",area,"\nPerímetro do círculo: ",perimetro)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 610; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */