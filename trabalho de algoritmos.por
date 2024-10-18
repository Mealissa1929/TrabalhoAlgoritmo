programa
{
	
		
	// Bibliotecas
	inclua biblioteca Texto
	inclua biblioteca Util

	// Informações Importantes
	cadeia NomePersonagem = ""
	cadeia PersonagemSecundario = ""
	cadeia Pronome[] = {"Ele", "Dele", "O", "ele", "dele", "o"}
	logico EscolheuSeAliar = falso
	logico EscolheuColaborar = falso
	inteiro Resposta = 0

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

	cadeia ImagemMantimentos[] = {
	     "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░",
	     "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▒▓▓░░░░░░░░",
	     "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▓▓▒▓▓░░░░░░░░",
	     "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░▒▓▓▒▒▒▓▓▒░░░░░░",
	     "░░░░░░░░░░░▒▒▒▒▒▓▓▓▓▓█▓▓▓▓▓▒▒░░░░░▓▒▒▒▒▒▒░░▓▒░░░░░",
	     "░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓█▓▓▓░░░█▒▒▒▒▒▒░░▒▓░░░░░",
	     "░░░░░░░░░░░▓▒▒▒▒▒▒▒█▓█▓▓▓▓█▓▓▒░░░░▒▒▒▓▓▓▓▒▒▒▒░░░░░",
	     "░░░░░░░░░░░▓▒▒▒▒▒▒▒█▓█▓█▓▓█▓▓▒░░░░▓▒▒▒▒▒▒▒░▒▒░░░░░",
	     "░░░░░░░░░░░▓▒▒▒▒▒▒▒█▓█▓█▓▓█▓▓▒░░░░▓▒▒▒▒▒▒░░▒▒░░░░░",
	     "░░░░▒▒▒▒▒▒▒▓▓▓▓▓▓▓▓█▓█▓█▓▓█▓▓▓▓▒▒░▒▒▒▓▒▒▒▒▒▒▒░░░░░",
	     "░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░█▒▒▒▒▒▒▒░▒▓░░░░░",
	     "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░█▓▓▓▓▓▓▓▓▓▓░░░░░",
	     "░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░"
     }

	funcao depoisDaConversa(){
		typewriter("Mentor: Sem mais papo, vocês precisam se preparar para o desfile e as apresentações,\n",falso)
		typewriter("colaborem com os jogos e ganharão mais patrocinadores, não que eu tenha colaborado na minha vez…", verdadeiro)

		Resposta = pergunta(
			"Você quer colaborar com o desfile e apresentação?",  // Pergunta
			
			"Sim", // Alternativa 1
			"Não", // Alternativa 2
			"", // Alternativa 3 (OPCIONAL)
			""  // Alternativa 4 (OPCIONAL)
		)

		se(EscolheuSeAliar e Resposta == 1){
			EscolheuColaborar = verdadeiro
			
			typewriter(NomePersonagem + ": É melhor colaborarmos mesmo, nem tem como sobrevivermos pela nossa própria força.\n", falso)
			typewriter(PersonagemSecundario + ": Por mais que a situação toda me repugne, é o que temos que fazer mesmo.\n", verdadeiro)

			typewriter("=== APÓS O DESFILE E AS APRESENTAÇÕES ===\n", falso)
			typewriter(NomePersonagem + ": Chamamos a atenção no desfile.\n", falso)
			typewriter(PersonagemSecundario + ": Acho que conseguimos, agora vamos ver as notas das apresentações.\n\n", falso)
			typewriter("Apresentador: Josh Moore do distrito 1 tirou 11, muito bem, vai chamar a atenção dos patrocinadores\n", falso)
			typewriter("mas dos outros tributos também, haha... Chegando ao distrito 12, " + NomePersonagem + " tirou 12 e " + PersonagemSecundario + " 11,\n", falso)
			typewriter("notas acima da média para um distrito como o doze, parabéns!\n\n", falso)
			typewriter(NomePersonagem + ": Conseguimos, amanhã os jogos começam...",verdadeiro)
		}senao se(EscolheuSeAliar e Resposta == 2){
			typewriter(NomePersonagem + ": Acha que devemos colaborar?\n", falso)
			typewriter(PersonagemSecundario + ": Não, em dois conseguimos comida e água, não vou me humilhar por mantimentos básicos.\n", falso)
			typewriter(NomePersonagem + ": Concordo.", verdadeiro)
			typewriter("=== APÓS O DESFILE E AS APRESENTAÇÕES ===\n", falso)
			typewriter(NomePersonagem + ": Ainda bem que esse dia acabou.\n", falso)
			typewriter(PersonagemSecundario + ": Sim, mas ainda temos que ver as notas que tiramos.\n\n", falso)
			typewriter("Apresentador na TV: Josh do distrito 1 tirou 11, muito bem, vai chamar a atenção dos patrocinadores, mas dos outros tributos também haha(…)\n",falso)
			typewriter("chegando ao distrito 12, " + NomePersonagem + " tirou 2 e " + PersonagemSecundario + " 1, Nada fora do comum para o distrito doze…\n", falso)
			typewriter("Bom, espero que todos estejam preparados, amanhã os jogos começam.", verdadeiro)
			
		}senao se(Resposta == 1 e nao EscolheuSeAliar){
			EscolheuColaborar = verdadeiro
			
			typewriter(NomePersonagem + ": É melhor colaborarmos mesmo, nem tem como sobrevivermos pela nossa própria força.\n", falso)
			typewriter(PersonagemSecundario + ": Não tenho a menor intenção de me humilhar e virar conteúdo pra capital.\n", falso)
			typewriter(NomePersonagem + ": ...", verdadeiro)
			typewriter("=== APÓS O DESFILE E AS APRESENTAÇÕES ===\n", falso)
			typewriter("Mentor: Vocês pareceram bem distantes no desfile, não é bom, mas como foram na apresentação?\n", falso)
			typewriter(PersonagemSecundario + ": Irrelevante.\n", falso)
			typewriter(NomePersonagem + ": Acho que tirei uma boa nota.\n", falso)
			typewriter("Mentor: Bem, vamos descobrir.\n\n", falso)
			typewriter("Apresentador na TV: Josh do distrito 1 tirou 11, muito bem, vai chamar a atenção dos patrocinadores,\n", falso)
			typewriter("mas dos outros tributos também haha… chegando ao distrito 12, " + NomePersonagem + " tirou 12 e " + PersonagemSecundario + " 3.\n", falso)
			typewriter("Pelo visto o distrito doze tem um elo fraco… Bom, espero que todos estejam preparados, amanhã os jogos começam.", verdadeiro)
		}senao{
			typewriter(NomePersonagem + ": Acha que devemos colaborar?\n", falso)
			typewriter(PersonagemSecundario + ": Não.\n", falso)
			typewriter(NomePersonagem + ": (...)\n", falso)
			typewriter(NomePersonagem + ": É, concordo.", verdadeiro)
			typewriter("=== APÓS O DESFILE E AS APRESENTAÇÕES ===\n", falso)
			typewriter(NomePersonagem + ": Ainda bem que esse dia acabou.\n", falso)
			typewriter(PersonagemSecundario + ": Uhum.\n",falso)
			typewriter(NomePersonagem + ": Vamos ver as notas de qualquer forma?\n",falso)
			typewriter(PersonagemSecundario + ": Somos obrigados.\n\n",falso)
			typewriter("Apresentador na TV: Josh do distrito 1 tirou 11, muito bem, vai chamar a atenção dos patrocinadores, mas dos outros tributos também haha(…)\n",falso)
			typewriter("chegando ao distrito 12, " + NomePersonagem + " tirou 2 e " + PersonagemSecundario + " 1, Nada fora do comum para o distrito doze…\n",falso)
			typewriter("Bom, espero que todos estejam preparados, amanhã os jogos começam.",verdadeiro)
		}
		
	}
	funcao diaUm(){
		typewriter("Apresentador da TV: Bem vindos a 53° edição dos jogos vorazes! \n",falso)
		typewriter("Os competidores já estão na arena aguardando o início dos jogos.\n",falso)
		Util.aguarde(1000)
		typewriter("3...\n",falso)
		Util.aguarde(1000)
		typewriter("2...\n",falso)
		Util.aguarde(1000)
		typewriter("1...\n",falso)
		Util.aguarde(1000)
		typewriter("Que os jogos comecem!", verdadeiro)
         
          Resposta = pergunta(
			"Você quer ir para Cornucópia ou fugir e se esconder?\nCornucópia: Local no meio da arena onde ficam os mantimentos.",  // Pergunta
			
			
			"Ir para a Cornucópia", // Alternativa 1
			"Fugir", // Alternativa 2
			"", // Alternativa 3 (OPCIONAL)
			""  // Alternativa 4 (OPCIONAL)
		)

		se (Resposta == 1){
			foiParaCornucopia()	
		}senao{
				
		}
		
	}

	funcao foiParaCornucopia(){
		 Resposta = pergunta(
			"O banho de sangue está acontecendo ao seu redor... Você quer pegar mantimentos ou uma arma branca?\nMantimentos: Comida e água.",  // Pergunta
			
			"Mantimentos", // Alternativa 1
			"Arma Branca", // Alternativa 2
			"", // Alternativa 3 (OPCIONAL)
			""  // Alternativa 4 (OPCIONAL)
		)

		se(Resposta == 1){
			carregarImagem("Você encontrou mantimentos!", ImagemMantimentos)
		}senao{
			carregarImagem("Você encontrou uma faca!", ImagemFaca)
		}
	}
	
	funcao escolheuSeAliar(){
		typewriter(NomePersonagem + ": Vamos colaborar, assim a chance de um de nós sobreviver é maior. O que acha? \n", falso)
		typewriter(PersonagemSecundario + ": Fechado, mas não quero conversa, só um de nós vai sobreviver mesmo...\n", falso)
		typewriter (NomePersonagem + ": Como quiser...",verdadeiro)
		EscolheuSeAliar = verdadeiro
		depoisDaConversa()
	}

	funcao naoEscolheuSeAliar(){
		typewriter(PersonagemSecundario +": Se aliar seria uma boa ideia, não acha?\n",falso)
		typewriter (NomePersonagem + ": Não pretendo me aliar a ninguém, não tem sentido\n",falso)
		typewriter (PersonagemSecundario + ": Mas...",verdadeiro)
		EscolheuSeAliar = falso
		depoisDaConversa()
	}

	// Funções
	funcao dialogos(){
		// INTRODUÇÃO
		typewriter("Há 53 anos, foram implementados os jogos vorazes,\n", falso)
		typewriter("com a intenção de sempre lembrar os distritos da guerra e da sua derrota.\n\n",falso)
		typewriter("A capital é quem comanda esses jogos que vão ficando cada vez mais tecnológicos e sangrentos,\n",falso)
		typewriter("cada distrito deve conceder um tributo feminino e um masculino, os tributos lutam entre si e apenas um sairá vitorioso.\n\n", falso)
		typewriter("Nossos personagens vivem no distrito 12, que foi o mais atingido e sofre as sequelas da antiga guerra.", verdadeiro)

		

		// ESCOLHA DE PERSONAGEM
		Resposta = pergunta(
			"Escolha seu personagem: Masculino ou Feminino?",// Pergunta
			
			"masculino", // Alternativa 1
			"feminino", // Alternativa 2
			"", // Alternativa 3 (OPCIONAL)
			""  // Alternativa 4 (OPCIONAL)
		)

		// DEFINE PERSONAGEM
		se(Resposta == 1){
			NomePersonagem = "Liam"
			PersonagemSecundario = "Emma"
		}senao{
			NomePersonagem = "Emma"
			PersonagemSecundario = "Liam"

			Pronome[0] = "Ela"
			Pronome[1] = "Dela"
			Pronome[2] = "A"
			Pronome[3] = "ela"
			Pronome[4] = "dela"
			Pronome[5] = "a"
		}

		// EXPLICAÇÃO PERSONAGEM
		typewriter(NomePersonagem + " nasceu no distrito 12, e desde os 12 anos é obrigad" + Pronome[5] + " a participar da colheita,\n",falso)
		typewriter("onde dois moradores de doze à dezessete anos são mandados para os jogos vorazes.\n\n", falso)
		typewriter("Até hoje " + Pronome[3] + " não foi sortead" + Pronome[5] + ", mesmo que acabe colocando seu nome várias vezes em troca de comida.\n", falso)
		typewriter("Mas agora, com 16 anos, tudo mudará.", verdadeiro)

		// DIÁLOGO SORTEIO
		typewriter("=== DIA DA COLHEITA ===\n", falso)
		typewriter("ANUNCIANTE: Hora de revelar os dois sorteados do distrito 12!\n\n", falso)
		typewriter("...\n\n", falso)
		Util.aguarde(2500)
		typewriter("Os sorteados foram Emma e Liam!", verdadeiro)

		//
		Resposta = pergunta(
			"Você quer se aliar ao seu(sua) companheiro(a) de distrito?",  // Pergunta
			
			"Sim", // Alternativa 1
			"Não", // Alternativa 2
			"", // Alternativa 3 (OPCIONAL)
			""  // Alternativa 4 (OPCIONAL)
		)

		// DEFINE PERSONAGEM
		se(Resposta == 1){
			escolheuSeAliar()
		}senao{
			naoEscolheuSeAliar()
		}
	}
	
	// Inicialização
	funcao inicio()
	{
		diaUm()
		//dialogos()
	}

	// FUNÇÃO QUE CARREGA IMAGENS
	funcao carregarImagem(cadeia TextoPorCima, cadeia Imagem[]){
		limpa()
		typewriter(TextoPorCima + "\n\n", falso)
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
		limpa()
	}

	// ANIMAÇÃO DO TEXTO
	funcao typewriter(cadeia TextoParaType, logico Esperar){
		para(inteiro i = 0; i < Texto.numero_caracteres(TextoParaType); i++){
			escreva(Texto.extrair_subtexto(TextoParaType, i, i+1))
			Util.aguarde(0)
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
			typewriter(Pergunta + "\n\n", falso)
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
	
	
