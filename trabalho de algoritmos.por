programa
{
	
		
	// Bibliotecas
	inclua biblioteca Texto
	inclua biblioteca Util
	inclua biblioteca Tipos
	inclua biblioteca Matematica

	// Informações Importantes
	cadeia NomePersonagem = "Liam"
	cadeia PersonagemSecundario = "Emma"
	cadeia Pronome[] = {"Ele", "Dele", "O", "ele", "dele", "o"}
	cadeia PronomeSecundario[] = {"Ela", "Dela", "A", "ela", "dela", "a"}
	inteiro Resposta = 0

	// Escolhas
	logico EscolheuSeAliar = falso
	logico EscolheuColaborar = falso
	logico PassouPorCornucopia = falso
	logico PegouMantimentos = falso
	logico PegouFaca = falso

	// Variáveis de Status
	real Forca = 4.0
	real Vida = 100.0
	inteiro Fome = 100
	inteiro Sede = 100
	cadeia Inventario[100]
	cadeia Arma = "Punhos"

	// Listas Importantes
	cadeia InformacoesItens[][] = { {"Pão", "15"} , {"Água", "5"} , {"Curativo", "30"} }
	
	// Imagens
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

	// Inicialização
	funcao inicio()
	{
		introducao()
	}

	funcao introducao(){
		// INTRODUÇÃO
		typewriter("Há 53 anos, foram implementados os jogos vorazes,\n", falso)
		typewriter("com a intenção de sempre lembrar os distritos da guerra e da sua derrota.\n\n",falso)
		typewriter("A capital é quem comanda esses jogos que vão ficando cada vez mais tecnológicos e sangrentos,\n",falso)
		typewriter("cada distrito deve conceder um tributo feminino e um masculino, os tributos lutam entre si e apenas um sairá vitorioso.\n\n", falso)
		typewriter("Nossos personagens vivem no distrito 12, que foi o mais atingido e sofre as sequelas da antiga guerra.", verdadeiro)

		

		// ESCOLHA DE PERSONAGEM
		Resposta = pergunta(
			"Escolha seu personagem: Masculino ou Feminino?",// Pergunta
			
			"Masculino [Liam]", // Alternativa 1
			"Feminino [Emma]", // Alternativa 2
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

			PronomeSecundario[0] = "Ele"
			PronomeSecundario[1] = "Dele"
			PronomeSecundario[2] = "O"
			PronomeSecundario[3] = "ele"
			PronomeSecundario[4] = "dele"
			PronomeSecundario[5] = "o"
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

		diaUm()
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
			FinalDiaUm()
		}senao{
			cenaFloresta()

			se(EscolheuSeAliar){
				FinalDiaUm()
			}senao{
				FinalFloresta()	
			}
			
		}
		
	}

	funcao listarMortesDiaUm(logico Morreu){
		inteiro Mortes = 11
		se(Morreu){
			Mortes++
		}

		cadeia Nome
		se(NomePersonagem == "Liam"){
			Nome = "Liam Turner"
		}senao{
			Nome = "Emma Reed"
		}
		
		typewriter ( "Apresentador da TV: O dia foi intenso, tivemos " + Mortes + " mortes no banho de sangue:\n\n",falso)

		
			typewriter ( "Emilly Sugg do distrito 1.\n",falso)
			typewriter ( "Cole Jones do distrito 3.\n",falso)
			typewriter ( "Sophie Lewis do distrito 3.\n",falso)
			typewriter ( "Hannah Stone do distrito 5.\n",falso)
			typewriter ( "Andrew Norton do distrito 6.\n",falso)
			typewriter ( "David Butler do distrito 8.\n",falso)
			typewriter ( "Ellie Rivera do distrito 8.\n",falso)
			typewriter ( "Aaron Gray  do distrito 9.\n",falso)
			typewriter ( "Bryan Miller do distrito 10.\n",falso)
			typewriter ( "Chloe Clark do distrito 10.\n",falso)
			typewriter ( "Avery Allen do distrito 11. \n",falso)
			
			se(Morreu){
				typewriter("\n" + Nome + " do distrito 12.\n",falso)
				enquanto(verdadeiro){
					
				}
			}senao{
				esperarEnter()
			}
			
	}

	funcao listarMortesDiaDois(logico Morreu){
		inteiro Mortes = 8
		se(Morreu){
			Mortes++
		}

		cadeia NomeCompletoPrincipal
		cadeia NomeCompletoSecundario
		se(NomePersonagem == "Liam"){
			NomeCompletoPrincipal = "Liam Turner"
		}senao{
			NomeCompletoPrincipal = "Emma Reed"
		}

		se(PersonagemSecundario == "Emma"){
			NomeCompletoSecundario = "Emma Reed"
		}senao{
			NomeCompletoSecundario = "Liam Turner"
		}
		
		typewriter ( "Apresentador da TV: Hoje tivemos mais " + Mortes + " mortes:\n\n",falso)

		
			typewriter("Josh Moore do distrito 1.\n",falso)
			typewriter("Evan Conner do distrito 2.\n",falso)
			typewriter("Ella Johson do distrito 4.\n",falso)
			typewriter("Tyler Owens do distrito 5.\n",falso)
			typewriter("Ryan Price do distrito 7.\n",falso)
			typewriter("Amelia White do distrito 9.\n",falso)
			typewriter("Austin Walker do distrito 11.\n",falso)
			typewriter(NomeCompletoSecundario + " do distrito 12.\n",falso)
			
			se(Morreu){
				typewriter("\n" + NomeCompletoPrincipal + " do distrito 12.\n",falso)
				enquanto(verdadeiro){
					
				}
			}senao{
				esperarEnter()
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
			PegouMantimentos = verdadeiro
			carregarImagem("Você encontrou alguns mantimentos!", ImagemMantimentos)
			adicionarAoInventario("Pão")
			adicionarAoInventario("Água")
		}senao{
			PegouFaca = verdadeiro
			carregarImagem("Você encontrou uma faca!", ImagemFaca)
			Forca += 2
			Arma = "Faca"
		}

		typewriter("Eita! Você esbarrou com um adversário no caminho de volta.\n", falso)
		typewriter("Você terá que lutar!", verdadeiro)
		
		luta("Cole Jones", 50.0, 5.0)

		se(EscolheuSeAliar){
			florestaComAliado()
		}senao{
			florestaSemAliado()
		}
	}

	funcao florestaComAliado(){
		typewriter("Você corre pro meio das árvores e começa a ouvir passos…\n\n",falso)
		Util.aguarde(2000)
		typewriter("(" + PersonagemSecundario + " chega com alguns mantimentos e um punhal)\n\n",falso)

		se(PegouMantimentos){
			typewriter("(Vocês dividem os mantimentos)",verdadeiro)

			typewriter(PersonagemSecundario + ": Você se machucou?\n",falso)
			typewriter(NomePersonagem + ": Um pouco, eu precisei lutar pela mochila de mantimentos... mas venci.\n",falso)
			typewriter(PersonagemSecundario + ": Ah...\n",falso)
			typewriter(NomePersonagem + ": Bom, vamos nos esconder.",verdadeiro)
		}senao{
			adicionarAoInventario("Pão")
			adicionarAoInventario("Água")
			
			typewriter("(" + PronomeSecundario[0] + " joga alguns pães e água para você)",verdadeiro)

			typewriter(NomePersonagem + ": Você se machucou?\n",falso)
			typewriter(PersonagemSecundario + ": Um pouco, eu precisei lutar pela mochila de mantimentos... mas venci.\n",falso)
			typewriter(NomePersonagem + ": Ah...\n",falso)
			typewriter(PersonagemSecundario + ": Bom, vamos nos esconder.",verdadeiro)
		}
	}

	funcao florestaSemAliado(){
		typewriter("Você corre pro meio das árvores e começa a ouvir passos…\n\n",falso)
		Util.aguarde(2000)
		typewriter("(" + PersonagemSecundario + " aparece segurando um punhal)\n\n",falso)
		typewriter(NomePersonagem + ": " + PersonagemSecundario + "?\n\n",falso)

		se(PegouFaca){
			typewriter("(Você aponta a faca para "+ PersonagemSecundario + ", buscando se defender)",verdadeiro)
		}senao{
			typewriter("(Você começa a andar para trás, buscando se defender)",verdadeiro)	
		}
		
		typewriter(NomePersonagem + ": Você...\n",falso)

		se(PegouFaca){
			typewriter(PersonagemSecundario + ": Não vou fazer nada desta vez, mas se esconda.",verdadeiro)
		}senao{
			typewriter(PersonagemSecundario + ": Não vou fazer nada desta vez, mas se arme.",verdadeiro)
		}
		
	}

	funcao cenaFloresta(){
		typewriter("Você correu para a floresta.", verdadeiro)
		se(EscolheuSeAliar){
			typewriter("Você corre pro meio das árvores e começa a ouvir passos…\n\n",falso)
			Util.aguarde(2000)
			typewriter("(" + PersonagemSecundario + " chega com alguns mantimentos e um punhal)\n\n",falso)

			adicionarAoInventario("Pão")
			adicionarAoInventario("Água")
			
			typewriter("(" + PronomeSecundario[0] + " joga alguns pães e água para você.)",verdadeiro)

			typewriter("(Os adversários Cole Jones e Sophie Lewis seguiram " + PronomeSecundario[3] + " e atacam vocês desprevenidos,\n",falso)
			typewriter("você terá que lutar com Sophie Lewis!",verdadeiro)
			
			luta("Sophie Lewis", 50.0, 5.0)

			typewriter(PersonagemSecundario + ": Tudo bem? Quero dizer, dentro do possível...\n",falso)
			typewriter(NomePersonagem + ": Vamos só nos esconder logo.\n", falso)
			typewriter(PersonagemSecundario + ": Claro...",verdadeiro)
		}senao{
			florestaSemAliado()
			
		}
	}
	funcao FinalDiaUm()
	{
		se(EscolheuSeAliar){
			typewriter(NomePersonagem + ": Vamos achar um lugar para nos esconder.\n\n",falso)
			typewriter ("(Vocês andaram um pouco e encontraram uma caverna)\n\n",falso)
			typewriter (NomePersonagem + ": É um bom lugar para ficar.\n",falso)
			
			
			typewriter (PersonagemSecundario + ": Provavelmente não vão nos deixar ficar muito tempo afastados do resto…\n",falso)
			typewriter (NomePersonagem + ": Bom, enquanto der vamos ficar, temos comida e água por uns dois dias.\n",falso)
			typewriter (PersonagemSecundario + ": Eu levei um golpe na perna, se precisarmos correr…\n",falso)
			
			typewriter (NomePersonagem + ": A gente se ajuda.\n",falso)
			typewriter (PersonagemSecundario + ": Vamos comer e esperar...",verdadeiro)
	
			listarMortesDiaUm(falso)

			typewriter(NomePersonagem + ": É, já foi metade.\n",falso)
			typewriter(PersonagemSecundario + ": ...\n",falso)
			typewriter(PersonagemSecundario + ": Vamos nos revezar para vigiar e dormir.",verdadeiro)

			DiaDoisComAliado()
		}senao{
			FinalFloresta()
		}
	}
	
	funcao FinalFloresta(){
		
		inteiro sorteio = Util.sorteia(1,2)
	
		se (sorteio == 1){
			typewriter("Você encontrou uma fruta chamada abrunhos.\n",falso) 
		}senao{
			typewriter("Você encontrou uma fruta chamada belladonnas.\n",falso) // Venenosa
			
		}
	
		Resposta = pergunta(
				"Você quer comer a fruta?",  // Pergunta
				
				"Sim", // Alternativa 1
				"Não", // Alternativa 2
				"", // Alternativa 3 (OPCIONAL)
				""  // Alternativa 4 (OPCIONAL)
	
			)
			
		se (Resposta == 1 e sorteio  == 1){
			typewriter ("(Você ouviu um barulho de colisão a sua direita.\n",falso)
			typewriter ("(Você se escondeu em uma moita e viu Sophie Lewis lutando com outro jogador)\n",verdadeiro)
			carregarImagem("Após o fim daquela luta, você encontrou uma faca no chão!", ImagemFaca)
			
			Arma = "Faca"
				
			typewriter (NomePersonagem + ": Bom, isso vai me ajudar, agora só preciso de uma fonte de água.\n",verdadeiro)
		}senao se(Resposta == 1 e sorteio == 2){
			 typewriter ("A fruta era venenosa.",verdadeiro)
			 listarMortesDiaUm(verdadeiro)
		}senao se(Resposta == 2 e nao PassouPorCornucopia){				
			typewriter(NomePersonagem + ": Melhor não comer essas frutinhas, não sei se são venenosas.\n\n",falso)
			typewriter("(Você ouve um galho quebrando)\n",falso)
			typewriter("(Sophie Lewis aparece, ela tinha te seguido)\n",falso)
			typewriter("(Ela te encurrala, você terá que lutar pela sua vida)",verdadeiro)
			luta("Sophie Lewis", 50.0, 5.0)

			typewriter("(Após ter vencido a luta, você pegou a faca e a comida de Sophie e voltou para a caverna)\n\n",falso)
			adicionarAoInventario("Pão")
			Arma = "Faca"

			typewriter(NomePersonagem + ": Pelo menos só preciso de água agora.",verdadeiro)
		}

		se(EscolheuColaborar){
			typewriter(NomePersonagem + ": O que é isso? Me enviaram algo!\n\n",falso)
			typewriter("(Você abre a embalagem e vê algo como um cano)\n\n",falso)
			typewriter(NomePersonagem + ": Eu já vi usarem isso, é como uma torneira.\n\n",falso)
			typewriter("(Você insere a torneira em uma árvore e água começa a sair)\n\n",falso)
			typewriter(NomePersonagem + ": Agora posso só me esconder na caverna, tenho tudo que eu preciso por enquanto.\n",falso)
			typewriter("Só não posso dormir, seria bom um aliado agora...",verdadeiro)
		}senao{
			typewriter(NomePersonagem + ": É quase impossível que me mandem água, tenho que procurar.\n\n",falso)
			typewriter("(Você começa a andar pelos arredores em busca de água)\n",falso)
			typewriter("(Você acaba se distraindo e cai em cima de espinhos modificados pela capital)\n",falso)
			typewriter("(Um deles perfura a sua perna)\n",falso)
			typewriter("(Você começa a rastejar, tira o espinho e avista um pequeno riacho)\n",falso)
			typewriter("(Você levanta e vai mancando até ele, desce e bebe um pouco utilizando as mãos)\n",falso)
			typewriter("(Você volta para a caverna torcendo para que ninguém apareça, não tem como se defender)",verdadeiro)
		}

		listarMortesDiaUm(falso)
		typewriter("*Vendo o anúncio das mortes no céu*\n",falso)
		typewriter(NomePersonagem + ": " + PronomeSecundario[2] + " " + PersonagemSecundario + " não morreu.\n",falso)
		typewriter("Que bom...",verdadeiro)

		typewriter("(Você está quase dormindo quando percebe chamas devorando as árvores e chegando cada vez mais perto)\n",falso)
		typewriter("(Você se levanta para correr)",verdadeiro)

		se(EscolheuColaborar){
			typewriter("(Você corre sem olhar para trás)\n",falso)
			typewriter("(Um galho em chamas cai rente aos seus olhos)\n",falso)
			typewriter("(Você tropeça neste mesmo galho…)\n",falso)
			typewriter("(Mas consegue se apoiar e levantar)\n",falso)
			typewriter("(Você corre até um campo aberto onde as chamas não chegam)\n",verdadeiro)
			
			typewriter("(Você observa o grupo de carreiristas ainda dormindo no chão,\n",falso)
			typewriter("mas Josh Moore está acordado de vigia)\n",falso)
			typewriter ("*Carreiristas: tributos dos distritos 1, 2 e 4 que treinam para os jogos e se aliam entre eles.\n\n",falso)
			typewriter("(Ele está distraído com o fogo)\n",falso)
			typewriter("(Você aproveita para se esconder em meio às pedras)\n\n",falso)
			typewriter(NomePersonagem + ": Eu deixei meus mantimentos lá.\n",falso) 
			typewriter("Mas não vou atrás de comida, podem me ver.\n",verdadeiro)

			typewriter("=== HORAS DEPOIS ===\n\n",falso)
			typewriter("(Um paraquedas com mantimentos se choca com as pedras, fazendo barulho)\n\n",falso)
			typewriter(NomePersonagem + ": São mantimentos, mas fizeram muito barulho.\n\n",falso)
			typewriter("(Você pega os mantimentos mas Josh Moore e Evan Conner seguiram o barulho\n",falso)

			adicionarAoInventario("Pão")
			adicionarAoInventario("Curativo")
			
			typewriter("e você se pergunta como vai lutar com dois)\n\n",falso)
			typewriter("(Mas " + PersonagemSecundario + " aparece e começa a lutar com Conner)\n",falso)
			typewriter("(Você terá que lutar com Josh Moore)",verdadeiro)

			luta("Josh Moore", 75.0, 6.0)

			typewriter("(Você olha pro lado e vê Conner dar o golpe final em " + PersonagemSecundario + ")\n",falso) 
			typewriter("(Você não pensa e pega o punhal da mão do tributo 1 e o ataca, também ganhando essa luta)\n",falso)
			typewriter("(Então você se permite parar por alguns minutos e entender o que aconteceu)\n",falso)
			typewriter("(Depois pega os mantimentos e armas dos tributos e foge para não pensar nisso)\n",verdadeiro)

			adicionarAoInventario("Pão")
			adicionarAoInventario("Água")
			adicionarAoInventario("Curativo")

			final()
		}senao{
			typewriter("(Você começa a correr com a perna machucada)\n",falso)
			typewriter("(As chamas chegam cada vez mais perto)\n",falso)
			typewriter("(Um galho em chamas cai rente aos seus olhos)\n",falso)
			typewriter("(Você tropeça neste mesmo galho…)\n",verdadeiro)

			listarMortesDiaDois(verdadeiro)
		}
	}
	
	
	
	

	funcao DiaDoisComAliado()
	{
		typewriter(NomePersonagem + ": Estou no terceiro turno de vigia, quando começo a sentir cheiro de fumaça.\n",falso)
		typewriter(NomePersonagem + ": Quando olhei para a floresta vi que as árvores estavam pegando fogo.\n",falso)
		typewriter(NomePersonagem + ": O fogo está chegando cada vez mais perto "+PersonagemSecundario+ " está com a perna machucada",verdadeiro)
		
		Resposta = pergunta(
			"Acordar " + PersonagemSecundario + " ou fugir sozinho?.",  // Pergunta
			
			"Acordar " + PersonagemSecundario, // Alternativa 1
			"Fugir Sozinho", // Alternativa 2
			"", // Alternativa 3 (OPCIONAL)
			""  // Alternativa 4 (OPCIONAL)

		)
		
	     
	    

	    se (Resposta == 2)
	    {
			typewriter("(Você começa a correr deixando " + PersonagemSecundario + " para trás)\n",falso)
			typewriter (NomePersonagem + ": As chamas estão chegando cada vez mais perto...\n",falso)
			typewriter ("(Um galho cai em sua frente, bloqueando seu caminho e fazendo você tropeçar)\n",verdadeiro)

			listarMortesDiaUm(verdadeiro)

	    }senao{
			typewriter ("Você empurra " + PersonagemSecundario + ", fazendo " + PronomeSecundario[3] + " acordar.\n",falso)
		    	typewriter ("(Vocês rapidamente começam a correr, as chamas estão\n",falso)
		    	typewriter ("cada vez mais perto, um galho em chamas bloqueia o seu caminho)\n\n",falso)
		    	typewriter (PersonagemSecundario + ": Me segura! Estou quase caindo.\n\n",falso)
		    	typewriter ("(Você " + PronomeSecundario[5] + " segura e voltam a correr)\n\n",falso)
		    	typewriter (NomePersonagem + ": Chegamos a um campo aberto onde o fogo não alcança...\n",verdadeiro)
		    	
		    	typewriter ("(Vocês observam o grupo de carreirristas ainda dormindo no chão, mas Josh Moore está acordado de vigia.)\n",falso)
		    	typewriter ("*Carreiristas: tributos dos distritos 1, 2 e 4 que treinam para os jogos e se aliam entre eles.\n\n",falso)
		    	typewriter(NomePersonagem + " [entre sussurros]: Shhh, ele está distraído com o fogo, vamos nos esconder nas pedras.\n\n",falso)
		    	typewriter("(Vocês vão se esconder)",verdadeiro)

		    	typewriter(PersonagemSecundario + ": Você está bem? Deixamos todos os mantimentos para trás.\n",falso)
		    	typewriter(NomePersonagem + ": Não tenho certeza, mas não tem como ficarmos escondidos aqui.\n",falso)
		    	typewriter(PersonagemSecundario + ": Podemos esperar que eles estejam lutando entre si.\n",falso)
		    	typewriter(NomePersonagem + ": Como vamos esperar sem comida e água?\n",falso)

			se(EscolheuColaborar){
				typewriter(PersonagemSecundario + ": Ficamos um dia, nós tiramos notas boas, podem nos mandar algo, senão a gente vê o que faz.\n",falso)
				typewriter(NomePersonagem + ": Tudo bem, mas devemos nos manter em silêncio.\n",verdadeiro)

				typewriter("=== HORAS DEPOIS ===\n\n",falso)

				typewriter("(" + PersonagemSecundario + " está dormindo)\n",falso)
				typewriter("(Um paraquedas com mantimentos se choca com as pedras fazendo barulho)\n\n",falso)
				typewriter(PersonagemSecundario + ": O que é isso?\n",falso)
				typewriter(NomePersonagem + ": Mantimentos, mas fizeram muito barulho.\n\n",falso)

				adicionarAoInventario("Pão")
				adicionarAoInventario("Curativo")

				typewriter("(Você pega os mantimentos mas Josh Moore e Evan Conner seguiram o barulho,\n",falso)
				typewriter("você terá que lutar com Moore e " + PersonagemSecundario + " com Conner)",verdadeiro)
			}senao{
				typewriter(PersonagemSecundario + ": Vamos esperar um dia, não sabemos se tem comida por perto e os carreiristas estão à espreita.\n",falso)
				typewriter(NomePersonagem + ": Tudo bem, mas devemos nos manter em silêncio.",verdadeiro)

				typewriter("=== HORAS DEPOIS ===\n\n",falso)

				typewriter("(" + PersonagemSecundario + " está dormindo)\n",falso)
				typewriter("(Você decide procurar por comida sem ir longe)\n",falso)
				typewriter("(Depois de minutos procurando você acaba se cortando em uma pedra e soltando um grito involuntário)\n",falso)
				typewriter("(Volta rapidamente para o esconderijo com medo de ser seguid" + Pronome[5] + ".\n\n",falso)
				typewriter(PersonagemSecundario + ": O que aconteceu?\n\n",falso)
				typewriter("(Você não tem tempo de responder pois Josh Moore e Evan Conner seguiram o barulho,\n",falso)
				typewriter("você tem que lutar com Moore e " + PersonagemSecundario + " com Conner)",verdadeiro)
			}

			luta("Josh Moore", 75.0, 6.0)

			typewriter("(Você olha pro lado e vê Conner dar o golpe final em " + PersonagemSecundario + ")\n",falso) 
			typewriter("(Você não pensa e pega o punhal da mão do tributo 1 e o ataca, também ganhando essa luta)\n",falso)
			typewriter("(Então você se permite parar por alguns minutos e entender o que aconteceu)\n",falso)
			typewriter("(Depois pega os mantimentos e armas dos tributos e foge para não pensar nisso)\n",verdadeiro)

			adicionarAoInventario("Pão")
			adicionarAoInventario("Água")
			adicionarAoInventario("Curativo")

			final()
	    }

		
	}
    	
	funcao final(){
		cadeia NomeCompletoPrincipal
		se(NomePersonagem == "Liam"){
			NomeCompletoPrincipal = "Liam Turner"
		}senao{
			NomeCompletoPrincipal = "Emma Reed"
		}
		typewriter("(Você espia os carreiristas e vê que só sobraram a tributo do 2 e o do 4) \n", falso)
          typewriter("(Você segue escondid"+Pronome[5]+" entre as pedras pensando em quantos tributos faltam)\n\n", falso)
          typewriter(NomePersonagem + ": Melhor esperar para ver quantos faltam daqui algumas horas.", verdadeiro)

          listarMortesDiaDois(falso)
          
          typewriter("*Vendo o anúncio das mortes no céu*\n", falso)
          typewriter(NomePersonagem + ": Só faltam 4 além de mim.\n\n", falso)
          typewriter("(Você volta a espionar os últimos carreiristas e os encontra lutando) \n", falso)
          typewriter("(Brandon Smith derrota Ava Brown)\n", falso)
          typewriter("(E enquanto ele ainda está respirando forte você decide correr e lutar contra ele", verdadeiro)
    
          luta("Brandon Smith",50.0,5.0)
          
          typewriter("(Você vence e ouve barulhos, animais irreconhecíveis mas que mordem começam a te perseguir)\n", falso)
          typewriter("(Você corre já sabendo que está sendo levad"+Pronome [5]+"para enfrentar os dois últimos tributos)\n", falso)
          typewriter("(Você chega na cornucópia e vê Olivia Sanders e Scarlett Foster se preparando para lutar uma contra a outra)\n", falso)
          typewriter("Apresentador na tv: Esta é uma final impensável, quem diria que os distritos ", falso)
          typewriter ("6, 7 e 12 estariam disputando o prêmio?", verdadeiro)
        
          luta("Olive Sanders e Scarlet Foster",100.0,10.0)
         
          typewriter("Apresentador: E " + NomeCompletoPrincipal + " é "+ Pronome[5] +" vencedor da 53° edição dos jogos vorazes!!!", falso) 
          typewriter(" Meus parabéns!\n\n", falso)
          typewriter("Principal: Eu sobrevivi…\n", falso)
          typewriter("(Mas será que isso é o melhor que poderia ter acontecido?)\n",verdadeiro)


		
	}
	
	funcao adicionarAoInventario(cadeia Item){
		para(inteiro i = 0; i < 100; i++){
			se(Inventario[i] == ""){
				Inventario[i] = Item
				pare
			}
		}
	}
	
	funcao logico mostrarInventario(){
		limpa()
		cadeia ItemEscolhido
		escreva("SEU INVENTÁRIO:\n\n")
		para(inteiro i = 0; i < 100; i++){
			se(Inventario[i] != ""){
				escreva("[",i + 1,"] ", Inventario[i], ": Recupera ")
				para(inteiro j = 0; j < 100; j++){
					se(InformacoesItens[j][0] == Inventario[i]){
						escreva(InformacoesItens[j][1], " de vida.\n")
						pare
					}
				}
			}
		}
		escreva("\nEscolha um item ou digite \"SAIR\" para sair do inventário.\n")
		leia(ItemEscolhido)

		se(ItemEscolhido != "SAIR" e ItemEscolhido != "sair" e ItemEscolhido != ""){
			inteiro Escolhido = Tipos.cadeia_para_inteiro(ItemEscolhido, 10)
			
			para(inteiro i = 0; i < 100; i++){
				se(InformacoesItens[i][0] == Inventario[Escolhido - 1]){
					inteiro VidaRecuperada = Tipos.cadeia_para_inteiro(InformacoesItens[i][1], 10)
					Vida += VidaRecuperada

					se(Vida > 100){
						VidaRecuperada -= (Vida - 100)
						Vida = 100.0
					}

					limpa()

					typewriter("Você recuperou " + VidaRecuperada + " de vida!", verdadeiro)

					pare
				}
			}
			
			Inventario[Escolhido - 1] = ""

			retorne verdadeiro
		}senao{
			retorne falso
		}
	}

	funcao atacar(real &VidaAdversario){
		limpa()
		
		real Dano = Matematica.arredondar(Forca * Util.sorteia(2, 5) / Util.sorteia(1, 3), 0) 
		VidaAdversario -= Dano
		typewriter("Você atacou o adversário e deu " + Dano + " de dano!",verdadeiro)
	}

	funcao luta(cadeia NomeAdversario, real VidaAdversario, real ForcaAdversario){
		real VidaOriginal = VidaAdversario
		inteiro Opcao
		enquanto(VidaAdversario > 0 e Vida > 0){
			logico Agiu
			faca{
				escreva("=== LUTA ===\n")
				escreva("Adversário: ", NomeAdversario, "\n")
				escreva("Vida do Adversário: " , VidaAdversario , "/", VidaOriginal, "\n\n")
				escreva("SUA VIDA: ", Vida, "/100\n")
				escreva("SUA ARMA: ", Arma, "\n\n")
				escreva("[1] Atacar\n")
				escreva("[2] Inventário\n")
	
				leia(Opcao)
	
				se(Opcao == 1){
					Agiu = verdadeiro
					atacar(VidaAdversario)
				}senao{
					Agiu = mostrarInventario()
				}
				limpa()
			}enquanto(nao Agiu)

			se(VidaAdversario > 0){
				typewriter("É a vez do adversário atacar!\n",falso)
				typewriter("...\n\n",falso)
				Util.aguarde(2000)

				real Dano = Matematica.arredondar(ForcaAdversario * Util.sorteia(2, 3) / Util.sorteia(1, 4), 0)
				typewriter("Você levou " + Dano + " de dano!",verdadeiro)
				Vida -= Dano
			}senao{
				typewriter("Você venceu a luta!", verdadeiro)
				Vida = 100.0
				pare
			}

			se(Vida <= 0){
				escreva("=== FIM DE JOGO! Você morreu! ===")
				enquanto(verdadeiro){
					
				}
			}

			
		}
	}

	funcao carregarImagem(cadeia TextoPorCima, cadeia Imagem[]){
		limpa()
		typewriter(TextoPorCima + "\n\n", falso)
		para(inteiro i = 0; i < Util.numero_elementos(Imagem); i++){
			escreva(Imagem[i], "\n")
		}
		esperarEnter()
	}
	
	funcao esperarEnter(){
		cadeia Esperando
		escreva("\n\n[ENTER PARA CONTINUAR]\n\n")
		leia(Esperando)
		limpa()
	}

	funcao typewriter(cadeia TextoParaType, logico Esperar){
		para(inteiro i = 0; i < Texto.numero_caracteres(TextoParaType); i++){
			escreva(Texto.extrair_subtexto(TextoParaType, i, i+1))
			Util.aguarde(17)
		}
		se(Esperar){
			esperarEnter()
		}
	}

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
	
	
