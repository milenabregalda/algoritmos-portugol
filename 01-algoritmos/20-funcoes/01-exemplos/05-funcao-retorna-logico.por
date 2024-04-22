programa
{
	
	funcao logico igual(inteiro a, inteiro b)
	{
		se (a == b) {
			retorne verdadeiro
		}
		senao {
			retorne falso
		}
	}
	
	// Quanto mais limpa e curta a função, melhor (por isso o professor não fez uma função só com o teste de se que está em inicio)
	funcao avisaIgual() {
		escreva("Os números são iguais.")
	}

	funcao avisaDiferente() {
		escreva("Os números são diferentes.")
	}
	
	funcao inicio()
	{
		inteiro num1, num2
		
		escreva("Entre com um número: ")
		leia(num1)
		escreva("Entre com outro número: ")
		leia(num2)
		igual(num1, num2)
		se (igual(num1, num2)) { // Teste lógico se é verdadeiro do professor, == verdadeiro redundante
			avisaIgual()
		}
		senao {
			avisaDiferente()
		}

		// Teste que eu fiz para criar variável lógica e escrever ela na tela
		logico eOuNaoE
		eOuNaoE = igual(num1, num2) 
		escreva("\n",eOuNaoE)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 265; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */