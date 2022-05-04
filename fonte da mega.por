programa
{
	
	inclua biblioteca Util
	 
	funcao inicio()
	{
	inteiro n1, vet[8], i , j , aux=0 
	
		escreva("escreva a quantidade de desenas que deseja |6| |7| ou |8|:")
		leia(n1)

		para( i = 0; i < n1; i++){
			vet[i] = Util.sorteia(0,60)
		}
			 
		para( j = 1; j <= n1; j++){
			para( i = 0; i < n1-1; i++){
				se( vet[i] > vet[i+1]){
					aux = vet[i]
					vet[i] = vet[i+1]
					vet[i+1] = aux	
				}
			}
		}			
		escreva("\n")
		para( i = 0; i < n1; i++)
			escreva(" | ",vet[i]," | ")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 246; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */