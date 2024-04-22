programa
{
	// Exercício 3 décima terceira aula algoritmos 22.05.23:
	// Escreva um algoritmo que leia um vetor com 10 posições de números inteiros. Em seguida, receba um novo valor do usuário e
	// verifique se este valor se encontra no vetor. Caso não seja encontrado, exiba a mensagem: “Número não encontrado!”.
	
	funcao inicio()
	{
		inteiro i, num, vetor[10]
		logico encontrado = falso
		
		para (i = 0; i < 10; i++) {
			escreva("Digite o número ",i," do vetor: ")
			leia(num)
			vetor[i] = num
		}
		
		escreva("\nDigite um novo valor para verificar se este valor se encontra no vetor: ")
		leia(num)
		
		para (i = 0; i < 10; i++) {
			se(vetor[i] == num)
			encontrado = verdadeiro
		}
		
		se (encontrado) {
			escreva("\nNúmero encontrado!\n")
		}
		senao {
			escreva("\nNúmero não encontrado!\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 786; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */