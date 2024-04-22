programa
{
	// Exercício 3 sétima aula 08.05.23:
	// Faça um programa que calcule a média aritmética de 4 notas de um aluno. Se a média for maior ou igual a 7.0 está aprovado, 
	// se a média for entre 4.0 e 6.9 está em recuperação e se for menor que 4.0 está reprovado.
	
	funcao inicio()
	{
		inteiro indice = 1
		real notas = 0.0, media = 0.0

		enquanto (indice <= 4)
		{
			escreva("Digite a nota ",indice,": ")
			leia(notas)
			media = media + notas
			indice++
		}
		
		media = media / 4
		
		se (media >= 7.0)
		{
			escreva ("\nA média foi de ",media," e o aluno está aprovado.")
		}
		senao se (media >= 4.0 e media <= 6.9)
		{
			escreva ("\nA média foi de ",media," e o aluno está em recuperação.")
		}
		senao
		{
			escreva ("\nA média foi de ",media," e o aluno está em reprovado.")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 346; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */