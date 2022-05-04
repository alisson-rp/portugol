programa
{
	inclua biblioteca Util
	
	inteiro n1,n2,cont,pecas = 0,contAM = 0,contAF = 0,contBM = 0,contBF = 0
	inteiro contCM = 0,contCF = 0,contPM = 0,contPF = 0,numF, contAM1 = 0,contAF1 = 0,contBM1 = 0,contBF1 = 0,contCM1 = 0,contCF1 = 0
	caracter sexo
	cadeia sexoF
	real salario,bonus,slrtotal,slrtotalfab = 0.0,maiorSLR = 0.0
	
	funcao inicio()
	{
		para( cont = 1; cont <= 5; cont++){
			
			escreva(" O número do operário: ")
			leia(n1)
			escreva(" O número de peças fabricadas por mês: ")
			leia(n2)
			escreva(" O sexo do operário: m -> masculino e f -> feminino ")
			leia(sexo)
			// salario minimo 1.212,00
			salario = 1212.00
			// GRUPO A
			se( n2 <= 30 ){
				pecas += n2 // contador das peças 
				slrtotal = salario // salario mais o bonus
				escreva(" O salario desse operario sera: ",slrtotal)
				se( sexo == 'm' ou sexo == 'M' ){
					//conta peças feitas por homens
					contAM1 = contAM1 + 1 
					//soma as peças feitas por homens
					contAM += n2
				}senao{
					//conta peças feitas por mulheres
					contAF1 = contAF1 + 1 
					//soma as peças feitas por mulheres
					contAF += n2
				}	 
			}
			// GRUPO B
			se( n2 >= 31 e n2 <= 35){
				pecas += n2 // contador das peças 
				bonus = ((salario * 3)/100)*(n2 - 30)//total do bonus da fabricação superior a 30
				slrtotal = salario+bonus // salario mais o bonus 
				escreva(" O salario desse operario sera: ",slrtotal)
				se( sexo == 'm' ou sexo == 'M' ){
					//conta peças feitas por homens
					contBM1 = contBM1 + 1 
					//soma as peças feitas por homens
					contBM += n2
				}senao{
					//conta peças feitas por mulheres
					contBF1 = contBF1 + 1 
					//soma as peças feitas por mulheres
					contBF += n2
				}
			}
			// GRUPO C
			se( n2 >= 35 ){
				pecas += n2 // contador das peças 
				bonus = ((salario * 5)/100)*(n2 - 30)//total do bonus da fabricação superior a 30
				slrtotal = salario+bonus // salario mais o bonus
				escreva(" O salario desse operario sera: ",slrtotal)
				se( sexo == 'm' ou sexo == 'M' ){
					//conta peças feitas por homens
					contCM1 = contCM1 + 1 
					//soma as peças feitas por homens
					contCM += n2
				}senao{
					//conta peças feitas por mulheres
					contCF1 = contCF1 + 1 
					//soma as peças feitas por mulheres
					contCF += n2
				}
			}
			Util.aguarde(1500)
			limpa()
			// saber de quem é o maior salario 
			se( slrtotal > maiorSLR ou cont == 1){
				maiorSLR = slrtotal
				se( sexo == 'm' ou sexo == 'M' ){
					numF = cont
					sexoF = "funcionario"
				}senao{
					numF = cont
					sexoF = "funcionaria"
				}
			}
			// SOMA DO TOTAL DE SALARIOS
			slrtotalfab += slrtotal			
		}
		escreva(" O total da folha de pagamento da fabrica é  R$",slrtotalfab,"\n")
		Util.aguarde(2000)
		limpa()
		escreva(" O total de peças fabricadas por mês: ",pecas,"\n")
		Util.aguarde(2000)
		limpa()
		se(contAM1 <= 0){
			escreva(" A media de peças fabricadas por homens da classe A é ",contAM,"\n")
		}senao{
			escreva(" A media de peças fabricadas por homens da classe A é ",contAM/contAM1,"\n")
		}
		se(contBM1 <= 0){
			escreva(" A media de peças fabricadas por homens da classe B é ",contBM,"\n")
		}senao{
			escreva(" A media de peças fabricadas por homens da classe B é ",contBM/contBM1,"\n")
		}
		se(contCM1 <= 0){
			escreva(" A media de peças fabricadas por homens da classe C é ",contCM,"\n")
		}senao{
			escreva(" A media de peças fabricadas por homens da classe C é ",contCM/contCM1,"\n")
		}
		Util.aguarde(2000)
		limpa()
		se(contAF1 <= 0){
			escreva(" A media de peças fabricadas por mulheres da classe A é ",contAF,"\n")
		}senao{
			escreva(" A media de peças fabricadas por mulheres da classe A é ",contAF/contAF1,"\n")
		}
		se(contBF1 <= 0){
			escreva(" A media de peças fabricadas por mulheres da classe B é ",contBF,"\n")
		}senao{
			escreva(" A media de peças fabricadas por mulheres da classe B é ",contBF/contBF1,"\n")
		}
		se(contCF1 <= 0){
			escreva(" A media de peças fabricadas por mulheres da classe C é ",contCF,"\n")
		}senao{
			escreva(" A media de peças fabricadas por mulheres da classe C é ",contCF/contCF1,"\n")
		}
		Util.aguarde(2000)
		limpa()
		escreva(" O(a) ",sexoF," que tem o maior salario é a de numero: ",numF," e ganha R$",maiorSLR,"\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4142; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */