programa
{
	// Milena Bregalda lista 2 exercício 5)
	// Faça um algoritmo que solicite ao usuário a altura e o peso e exiba uma mensagem indicando a
	// categoria de acordo com o IMC (Índice de Massa Corporal). As categorias são: abaixo do peso
	// (IMC menor que 18.5), peso normal (IMC entre 18.5 e 24.9), sobrepeso (IMC entre 25 e 29.9) e
	// obesidade (IMC igual ou maior que 30).
	
	funcao inicio()
	{
		real altura,peso,imc
		
		escreva("Entre com a sua altura: ")
		leia(altura)
		escreva("Entre com o seu peso: ")
		leia(peso)
		imc = peso/(altura*altura)
		
		se (imc < 18.5)
		{	
			escreva("Seu IMC é ",imc," e você está abaixo do peso.")
		}
		senao se ((imc >= 18.5) e (imc <= 24.9))
		{
			escreva("Seu IMC é ",imc," e seu peso está normal.")
		}
		senao se ((imc >= 25) e (imc <= 29.9))
		{
			escreva("Seu IMC é ",imc," e você está com sobrepeso.")
		}
		senao se (imc >=30)
		{
			escreva("Seu IMC é ",imc," e você está com obesidade.")
		}

	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 48; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */