programa
{
	
	funcao ola(cadeia n) // Função recebe como parâmetro uma variável do tipo cadeia (String)
	{
		cadeia name // Variável declarada na função funciona de maneira privada naquela função (como nos diagramas)
		
		name = n // Para mostrar exemplo do que comentei acima
		escreva("Olá, ",name,".\n")
	}
	
	funcao inicio()
	{
		cadeia nome
		
		escreva("Entre com o seu nome: ")
		leia(nome)
		ola(nome)
		ola("João") // Pode chamar função quando quiser
		ola("Maria")
		ola("Júnior")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 459; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */