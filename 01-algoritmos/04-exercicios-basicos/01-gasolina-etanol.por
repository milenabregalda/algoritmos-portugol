programa
{
	// Desenvolva um algoritmo com as seguintes funções:
	// -leia e imprima o seu nome na tela;
	// -Leia e imprima o seu número de matricula;
	// -Leia e imprima o preço do litro da gasolina e do etanol.
	
	funcao inicio()
	{
		cadeia nome
		inteiro num_matricula
		real gasolina,etanol
		gasolina = 5.50
		etanol = 4.58
		
		escreva("Qual é o seu nome? ")
		leia(nome)
		escreva("\nDigite o seu número de matrícula. ")
		leia(num_matricula)
		limpa()
		escreva("O seu nome é ",nome,".\nO seu número de matrícula é ",num_matricula,".")
		escreva("\nO preço do litro da gasolina está em R$",gasolina," e o do etanol está em R$",etanol,".")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 296; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
