programa
{
	/* Exercício 15 lista de exercícios 07.07.23:
	 * Crie um algoritmo que armazene em um vetor os salários dos 5 funcionários de uma empresa.
	 * Em seguida, reajuste o salário de todos os funcionários em 5%.
	 */

	inclua biblioteca Util --> u

	real salario[5], calculoReajuste = 0.0, reajuste = 0.05, salarioReajustado = 0.0
	inteiro i, i2 = 1
	
	funcao inicio() {
		lerSalarios()
		u.aguarde(1000)
		limpa()
		calcularDesconto()
	}

	

	funcao lerSalarios() {
		para (i = 0; i <= 4; i++) {
			escreva("Digite o salário do funcionário ",i2,": ")
			leia(salario[i])
			i2++
		}
	}

	funcao calcularDesconto() {
		i2 = 1
		para (i = 0; i <= 4; i++) {
			calculoReajuste = salario[i] * reajuste 
			salario[i] = salario[i] + calculoReajuste
			escreva("O salário do funcionário ",i2," teve um reajuste de 5% e o valor ficou em R$ ",salario[i],".\n")
			i2++
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 547; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */