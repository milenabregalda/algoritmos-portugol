programa 
{

	/* Milena Bregalda 20.06.2023
	 * Exercício 9 da lista
	 * Faça um algoritmo que receba a idade de 5 pessoas e mostre mensagem informando "maior de idade" e "menor de idade"
	 * para cada pessoa. Considere a idade a partir de 18 anos como maior de idade.
	*/
 
	funcao inicio() {
		inteiro i, idade

		para (i = 1; i <= 5; i++) {
			escreva("Digite a idade da pessoa número ",i,": ")
			leia(idade)
			se (idade >= 18) {
				escreva("Esta pessoa é maior de idade.")
			}
			senao {
				escreva("Esta pessoa é menor de idade.")
			}
			escreva("\n\n")
		}
		
		
		
		
		/*


inteiro aprovados = 0
		aprovados = calcularAprovados()
		escreva("\nTivemos ",aprovados," aluno(s) aprovado(s) por média.")
		 
		 */
	}

	/*


funcao inteiro calcularAprovados() {
		inteiro i, , aprov = 0
		real media
	
		leia(qtdAlunos)
		para (i = 1; i <= qtdAlunos; i++) {
			escreva("Digite a média final do aluno ",i,": ")
			leia(media)
			se (media >= 7.0) {
				aprov++
			}
		}
		retorne aprov
	 
	 */
	  
	 
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 564; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */