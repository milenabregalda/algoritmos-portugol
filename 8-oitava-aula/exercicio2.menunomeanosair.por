programa
{
	// Exercício 2 oitava aula 09.05.2023:
	// Fazer menu com 3 opções: 1 nome, 2 ano de nascimento e 0 sair, programa só termina quando digitar o 0,
	// senão ele retorna para o menu anterior. Utilizar enquanto e lógico.
	
	funcao inicio()
	{
		logico menu = verdadeiro
		inteiro opcao, ano_nasc, ano_atual = 2023, idade
		cadeia nome

		enquanto (menu) { // menu é igual a menu == verdadeiro, seria redundância lógica colocar
			// Professor colocou limpa() aqui, mas os escrevas de cada caso não apareciam então mudei
			escreva("Menu:\n1 - Digite seu nome\n2 - Digite seu ano de nascimento\n0 - Sair\nSua escolha: ")
			leia(opcao)
			escolha (opcao) {
				caso 1:
					escreva("\nQual é o seu nome? ")
					leia (nome)
					limpa()
					escreva("\nOlá, ",nome,".\n\n")
					pare
				caso 2:
					escreva("\nQual é o ano de seu nascimento? ")
					leia (ano_nasc)
					idade = ano_atual - ano_nasc
					limpa()
					escreva("\nVocê nasceu em ",ano_nasc," e tem ",idade," anos.\n\n")
					pare
				caso 0:
					escreva("\nTchau, volte sempre!")
					menu = falso // Cairá fora do laço e o menu parará de repetir.
					pare
				caso contrario:
					limpa()
					escreva("\nOpção inválida.\n\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */