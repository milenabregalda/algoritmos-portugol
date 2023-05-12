programa
{
	// Exercício 1 nona aula 12.05.23:
	// Faça um algoritmo que leia 5 números e no final informe na tela qual foi o maior e qual foi o menor número digitado.
	
	funcao inicio()
	{
		inteiro indice = 1
		real numero, numero_maior = 0.0, numero_menor = 0.0
		
		enquanto (indice <= 5) {
			escreva("Digite o número ",indice,": ")
			leia(numero)
			se (indice == 1) {
				numero_maior = numero
				numero_menor = numero_maior
			}
	// Essa comparação é criada como indice = 1 porque só deve ser executada no primeiro laço de repetição. Ela é uma dança das cadeiras
	// inicial que passa o primeiro número que o usuário digitou para as outras 2 variáveis. Isso é importante para guardá-lo antes do próximo
	// número ser perguntado, para que posteriormente as comparações sejam feitas e os números maiores/menores sejam salvos em seus respectivos
	// lugares (se nenhum número for maior que o primeiro número fica ele mesmo guardado lá, mesma coisa para o número menor).

	// Alternativa do professor: entrar com o primeiro número, lê-lo e fazer a dança das cadeiras fora do laço de repetição.
	// Depois fazer laço de repetição de enquanto/para pedindo números 2 a 5 e fazendo as comparações de maior e menor com um índice igual a 4 ao invés de 5.
			
			senao se (numero > numero_maior) {
				numero_maior = numero
			}
			senao se (numero < numero_menor) {
	// Parece redundante colocar senao se, mas quando eu só colocava senao dava problema em guardar o número menor corretamente. Não há necessidade
	// de colocar outro senao porque se essas duas últimas comparações não forem verdadeiras, nada é feito.
				numero_menor = numero
			}
			indice++
		}
		escreva("\nO maior número digitado foi: ",numero_maior,"\nO menor número digitado foi: ",numero_menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1238; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */