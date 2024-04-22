programa
{
	/* Exercício 13 lista de exercícios 07.07.23:
	 * Escreva um algoritmo que leia um vetor com 10 posições de números inteiros. Em seguida,
	 * receba um novo valor do usuário e verifique se este valor se encontra no vetor. 
	 */

	inclua biblioteca Util --> u

	inteiro num[10], novoValor
	logico encontrado = falso
	
	funcao inicio() {
		lerNumeros()
		u.aguarde(1000)
		limpa()
		lerNovoValor()
		encontrarValor()
		se (encontrado) {
			informarEncontrado()
		}
		senao {
			informarNaoEncontrado()
		}
	}

	funcao lerNumeros() {
		para (inteiro i = 0; i < 10; i++) {
			escreva("Digite o número ",i,": ")
			leia(num[i])
		}
	}

	funcao lerNovoValor() {
		escreva("Digite um novo valor para verificar se está no vetor: ")
		leia(novoValor)
	}
	
	funcao encontrarValor() {
		para (inteiro i = 0; i < 10; i++) {
			se(num[i] == novoValor) {
				encontrado = verdadeiro
			}
		}
	}

	funcao informarEncontrado() {
		escreva("\nO número ",novoValor," se encontra no vetor.")
	}

	funcao informarNaoEncontrado() {
		escreva("\nO número ",novoValor," não se encontra no vetor.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 634; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */