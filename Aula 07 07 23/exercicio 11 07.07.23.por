programa
{
	/* Exercício 11 lista de exercícios 07.07.23:
	 * Criar um algoritmo que leia 10 números pelo teclado e exiba os números na ordem correta que os números foram digitados.
	 */

	inclua biblioteca Util --> u

	real num[10]
	
	funcao inicio() {
		lerNumeros()
		u.aguarde(1000)
		limpa()
		escreva("Números na ordem em que foram digitados:\n\n")
		escreverNumeros()
	}

	funcao lerNumeros() {
		inteiro i, i2 = 1
		para (i = 0; i < 10; i++) {
			escreva("Digite o número ",i2,": ")
			leia(num[i])
			i2++
		}
	}

	funcao escreverNumeros() {
		inteiro i, i2 = 1
		para (i = 0; i < 10; i++) {
			escreva("Número ",i2,": ",num[i],"\n")
			i2++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 352; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */