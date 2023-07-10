programa
{
	/* Exercício 1 lista de exercícios 07.07.23:
	 * Dados três valores A, B e C, em que A e B são números reais e C é um caractere, pede-se para imprimir
	 * o resultado da operação de A por B se C for um símbolo de operador aritmético (+,-,*,/); caso contrário deve
	 * ser impressa uma mensagem de operador não definido. Tratar erro de divisão por zero.
	 */

	real A, B
	caracter C
	
	funcao inicio() {
		perguntarDados()
		fazerCalculos()
	}

	funcao perguntarDados() {
		escreva("Digite o primeiro número da operação: ")
		leia(A)
		escreva("\nDigite o segundo número da operação: ")
		leia(B)
		escreva("\nDigite o símbolo da operação que deseja fazer (+, -, *, /): ")
		leia(C)
		limpa()
	}

	funcao fazerCalculos() {
		escolha(C) {
			caso '+':
				escreva (A," ",C," ",B,": ",A + B)
				pare
				
			caso '-':
				escreva (A," ",C," ",B,": ",A - B)
				pare

			caso '*':
				escreva (A," ",C," ",B,": ",A * B)
				pare

			caso '/':
				se (B == 0) {
					escreva("Não é possível fazer uma divisão por zero.")
				}
				senao {
					escreva (A," ",C," ",B,": ",A / B)
				}
				pare

			caso contrario:
				escreva("Operador não definido.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */