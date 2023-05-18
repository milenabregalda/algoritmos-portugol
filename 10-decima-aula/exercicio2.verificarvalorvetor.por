programa
{
	// Exercício 2 décima aula 15.05.23:
	// Escreva um algoritmo que leia um vetor com 5 posições de números inteiros. Em seguida, receba um novo valor do
	// usuário e verifique se este valor se encontra no vetor. Caso não seja encontrado, exiba a mensagem: "Número não encontrado!".
	
	funcao inicio()
	{
		inteiro i, vetor[5], numeros
		logico encontrado = falso

		para (i = 0; i < 5; i++) { // Preencher o vetor com dados do usuário
			escreva("Digite o número ",i,": ")
			leia(numeros)
			vetor[i] = numeros
		}
		
		escreva("\nDigite um novo número para verificar se já está no vetor: ")
		// Usuário define qual número procurar
		
		leia(numeros)
		// Não precisava de uma nova variável novo_valor, já que os outros números já estavam no vetor
		
		para (i = 0; i < 5; i++) { // Percorre o vetor para encontrar um número igual ao digitado
			se (vetor[i] == numeros) // Testa se o número da posição do vetor é igual ao digitado
			encontrado = verdadeiro // Torna o encontrado em verdadeiro
		}
		
		se (encontrado) { // Testa se encontrado é verdadeiro
			escreva("Número encontrado!\n")
		}
		senao { // O encontrado será igual a falso
			escreva("Número não encontrado!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 667; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */