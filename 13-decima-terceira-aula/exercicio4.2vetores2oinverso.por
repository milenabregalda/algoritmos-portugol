programa
{
	// Exercício 4 décima terceira aula algoritmos 22.05.23:
	// Escreva um vetor de 5 posições, crie um novo vetor, também de 5 posições e insira os valores do primeiro vetor no segundo vetor
	// em ordem inversa e mostre os dois vetores no final.
	
	funcao inicio()
	{
		inteiro i1, i2 = 0, num, vetor1[5], vetor2[5]

		para (i1 = 0; i1 < 5; i1++) {
			escreva("Digite o número ",i1," do vetor: ")
			leia(num)
			vetor1[i1] = num
		}

		para (i1 = 4; i1 >= 0; i1--) {
			vetor2[i2] = vetor1[i1]
			i2++
		}

		escreva("\nVetor 1: \n| ")
		para (i1 = 0; i1 < 5; i1++) {
			escreva(vetor1[i1]," | ")
		}

		escreva("\n\nVetor 2 (ordem inversa): \n| ")
		para (i2 = 0; i2 < 5; i2++) {
			escreva(vetor2[i2]," | ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 256; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor1, 9, 27, 6}-{vetor2, 9, 38, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */