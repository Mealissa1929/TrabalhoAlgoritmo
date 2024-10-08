programa {
  cadeia principal, companheiro
  inteiro saude, sede, fome
  

	inclua biblioteca Texto
	inclua biblioteca Util

	// Variáveis  
	cadeia ImagemFaca[] = {                                        
		"                                     :",     
		"                                  .:=#",     
		"                                :==++#",     
		"                             .:-:=***:",     
		"                           .-:--*#**:",      
		"                         :-..=+#*+#.",       
		"                       .=::=+#**+=.",        
		"                     .-.:-*#**+:",           
		"                   .-.:-+#***:",             
		"                 .--=++#***-",               
		"           .:= :-==#%%***-",                 
	  	"           +#+=*+*#%%**-%%#",                   
	  	"           -*#++*##%*--++",                     
	  	"           .++*=*##*",                       
	  	"         .=*++*#%",                     
	  	"        =****%#",                      
	  	"    --++**#%%=",                             
	  	"   -=**##%+:",                               
	  	"   -*%#%%+",                                 
	  	"   :--==:"
	}                                  
	

	// Funções
	funcao dialogos(){
		inteiro Resposta =0
typewriter(" Há 53 anos, foram implementados os jogos vorazes, com a intenção de sempre lembrar os distritos da guerra e da sua derrota, a capital é quem comanda esses jogos que vão ficando cada vez mais tecnológicos e sangrentos,", falso, falso)
typewriter ("cada distrito deve conceder um tributo feminino e um masculino, os tributos lutam entre si e apenas um sairá vitorioso.", falso, falso)
typewriter (" Nossos personagens vivem no distrito 12 que foi o mais atingido e sofre as sequelas da antiga guerra.", verdadeiro, falso)



		Resposta = pergunta(
			"Escolha um personagem!",  // Pergunta
			
			"Personagem A", // Alternativa 1
			"Personagem B", // Alternativa 2
			"Personagem C", // Alternativa 3 (OPCIONAL)
			"Personagem D"  // Alternativa 4 (OPCIONAL)
		)

		
	}
	
	// Inicialização
	funcao inicio()
	{
		dialogos()
	}

	// FUNÇÃO QUE CARREGA IMAGENS
	funcao carregarImagem(cadeia TextoPorCima, cadeia Imagem[]){
		limpa()
		typewriter(TextoPorCima + "\n\n", falso, falso)
		para(inteiro i = 0; i < Util.numero_elementos(Imagem); i++){
			escreva(Imagem[i], "\n")
		}
		esperarEnter()
	}
	
	// ENTER PARA CONTINUAR
	funcao esperarEnter(){
		cadeia Esperando
		escreva("\n\n[ENTER PARA CONTINUAR]\n\n")
		leia(Esperando)	
	}

	// ANIMAÇÃO DO TEXTO
	funcao typewriter(cadeia TextoParaType, logico Esperar, logico Limpar){
		se(Limpar == verdadeiro){
			limpa()
		}senao{
			escreva("\n")
		}
		para(inteiro i = 0; i < Texto.numero_caracteres(TextoParaType); i++){
			escreva(Texto.extrair_subtexto(TextoParaType, i, i+1))
			Util.aguarde(32)
		}
		se(Esperar){
			esperarEnter()
		}
	}

	// FUNÇÃO QUE RETORNA PERGUNTA ESCOLHIDA
	funcao inteiro pergunta(cadeia Pergunta, cadeia A, cadeia B, cadeia C, cadeia D){
		inteiro Escolha = 0

		inteiro Maximo = 4
		se(C == ""){
			Maximo = 2
		}senao se(D == ""){
			Maximo = 3
		}
		
		enquanto(Escolha < 1 ou Escolha > Maximo){
			typewriter(Pergunta + "\n\n", falso, falso)
			escreva("[1] ", A, "\n")	
			escreva("[2] ", B, "\n")

			se(Maximo >= 3){
				escreva("[3] ", C, "\n")	
			}
			se(Maximo == 4){
				escreva("[4] ", D, "\n")
			}

			escreva("\n")
			leia(Escolha)
		}
		limpa()
		retorne Escolha
	}
}
}
}

