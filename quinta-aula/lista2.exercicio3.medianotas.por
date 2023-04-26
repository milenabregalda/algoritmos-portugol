programa
{
	// Milena Bregalda lista 2 exercício 3)
	// Faça um algoritmo que solicite ao usuário que digite as duas notas de um aluno e depois indique se ele está aprovado ou não.
	// Para ser aprovado a média deve ser maior ou igual a 7.
	
	funcao inicio()
	{
		real nota1,nota2,media
		
		escreva("Digite a nota 1: ")
		leia(nota1)
		escreva("Digite a nota 2: ")
		leia(nota2)
		media = (nota1 + nota2) /2
		
		se (media >= 7)
		{	
			escreva("A média alcançada foi de ",media,", o aluno está aprovado.")
		}
		senao
		{
			escreva("A média alcançada foi de ",media,", o aluno está reprovado.")
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 408; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */