programa
{
	// Milena Bregalda 05.06.2023
	// Trabalho avaliativo 3 - Desenvolver Algoritmos - Simulação de sistema bancário

	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		logico menu = verdadeiro, criouConta = falso
		inteiro opcao, numAgencia = 0, numConta = 0
		real saldo = 1000.00, deposito = 0.0, saque = 0.0
		cadeia nomeCorrentista = "a"

		enquanto (menu) {
			escreva("Menu:\n1. Criar conta\n2. Depositar\n3. Sacar\n4. Saldo\n5. Sair\nSua escolha: ")
			leia(opcao)

			escolha (opcao) {
				caso 1:
					limpa()
					escreva("Nome do correntista: ")
					leia(nomeCorrentista)
					escreva("Número da agência: ")
					leia(numAgencia)
					escreva("Número da conta: ")
					leia(numConta)
					u.aguarde(2000)
					limpa()
					criouConta = verdadeiro
					escreva("Seja bem-vindo ao banco!\nSeu saldo inicial é de R$ ",saldo,".")
					u.aguarde(3000)
					limpa()
					pare
					
				caso 2:
					limpa()
					se (criouConta) {
						escreva("Informe um valor para depositar na conta bancária: ")
						leia(deposito)
						limpa()
						enquanto (deposito <= 0.0) {
							deposito = 0.0
							limpa()
							u.aguarde(2000)
							escreva("Valor inválido. Informe novamente o valor a ser depositado: ")
							leia(deposito)
						}
						se (deposito > 0.0) {
							limpa()
							u.aguarde(2000)
							saldo = saldo + deposito
							escreva("Depósito realizado com sucesso.")
						}
					}
					senao {
						escreva("Você ainda não criou uma conta no banco. Tente novamente após criá-la.")
					}
					u.aguarde(2000)
					limpa()
					pare
					
				caso 3:
					limpa()
					se (criouConta) {
						escreva("Informe um valor para sacar da conta bancária: ")
						leia(saque)
						limpa()
						enquanto (saque <= 0.0) {
							saque = 0.0
							limpa()
							u.aguarde(2000)
							escreva("Valor inválido. Informe novamente o valor a ser sacado: ")
							leia(saque)
						}
						se (saque > saldo) {
							u.aguarde(2000)
							limpa()
							escreva("Saldo insuficiente para o saque desejado!\nO seu saldo é de R$ ",saldo,".")
							u.aguarde(2000)
						}
						senao se (saque > 0) {
							limpa()
							u.aguarde(2000)
							saldo = saldo - saque
							escreva("Saque realizado com sucesso.")
						}
					}
					senao {
						escreva("Você ainda não criou uma conta no banco. Tente novamente após criá-la.")
					}
					u.aguarde(2000)
					limpa()
					pare
					
				caso 4:
					limpa()
					se (criouConta) {
						escreva("Dados da conta:\n\nCorrentista: ",nomeCorrentista,"\nNúmero da agência: ",numAgencia,"\nNúmero da conta: ")
						escreva(numConta,"\nSaldo atual: R$ ",saldo)
						u.aguarde(4000)
					}
					senao {
						escreva("Você ainda não criou uma conta no banco. Tente novamente após criá-la.")
						u.aguarde(2000)
					}
					limpa()
					pare
					
				caso 5:
					limpa()
					escreva("O sistema bancário foi encerrado.")
					u.aguarde(2000)
					menu = falso
					pare
					
				caso contrario:
					limpa()
					escreva("Opção inválida. Tente novamente.")
					u.aguarde(3000)
					limpa()
			}
		}		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 67; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */