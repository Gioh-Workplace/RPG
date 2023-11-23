-- H2 2.1.214;
;             
CREATE USER IF NOT EXISTS "SA" SALT 'cc708cfb22c2f3e8' HASH '4b1b481ed1281d693542c5d5b061287a447471a6534750b1581f1046a6f42b05' ADMIN;         
CREATE CACHED TABLE "PUBLIC"."USUARIO"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 3) NOT NULL,
    "USERNAME" CHARACTER VARYING(255) NOT NULL,
    "EMAIL" CHARACTER VARYING(255) NOT NULL,
    "SENHA" CHARACTER VARYING(255) NOT NULL,
    "PONTUACAO" INTEGER
);   
ALTER TABLE "PUBLIC"."USUARIO" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("ID");      
-- 2 +/- SELECT COUNT(*) FROM PUBLIC.USUARIO; 
INSERT INTO "PUBLIC"."USUARIO" VALUES
(1, 'admin', 'admin@gmail.com', 'admin123', 12),
(2, 'usuario20', 'usuario20@Dsa.com', '123', NULL);  
CREATE CACHED TABLE "PUBLIC"."TEXTOS"(
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY(START WITH 1 RESTART WITH 53) NOT NULL,
    "TEXTO" CHARACTER VARYING(550) NOT NULL,
    "OP1" CHARACTER VARYING(255),
    "REF1" INTEGER,
    "OP2" CHARACTER VARYING(255),
    "REF2" INTEGER,
    "OP3" CHARACTER VARYING(255),
    "REF3" INTEGER,
    "IMAGE" CHARACTER VARYING(255)
);               
ALTER TABLE "PUBLIC"."TEXTOS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_9" PRIMARY KEY("ID");       
-- 51 +/- SELECT COUNT(*) FROM PUBLIC.TEXTOS; 
INSERT INTO "PUBLIC"."TEXTOS" VALUES
(1, U&'Voc\00ea entra em uma sala escura... \00c0 sua frente \00e9 poss\00edvel ouvir um ''SSSSSsssss'' com um breve som de chocalhos. Logo voc\00ea reconhece que se trata de uma cobra', 'Lutar', 2, 'Correr', 4, 'Mochila', 7, '0'),
(2, U&'Voc\00ea tenta lutar contra a cobra com suas m\00e3os nuas, a falta de informa\00e7\00e3o sobre o animal te leva a fazer movimentos imprudentes e voc\00ea \00e9 mordido e envenenado.Aos poucos o veneno come\00e7a a fazer efeito e voc\00ea sente suas for\00e7as se esvaindo, voc\00ea ent\00e3o pode sentir o abra\00e7o da morte.', 'Morte', 3, '0', 0, '0', 0, '0'),
(3, U&'Voc\00ea morreu! Fim de jogo!', '0', 0, '0', 0, '0', 0, '0'),
(4, U&'Com medo do que o animal seja pe\00e7onhento ou mortal, voc\00ea decide sair da sala, evitando ao m\00e1ximo chamar a aten\00e7\00e3o da cobra.', 'Sucesso', 12, '0', 0, '0', 0, '0'),
(5, U&'Voc\00ea consegue escapar da sala.', '0', 0, '0', 0, '0', 0, '0'),
(6, U&'Voc\00ea n\00e3o consegue ser silencioso o bastante e chama a aten\00e7\00e3o da cobra.Surpreso e em choque ao ver ela se movendo em sua dire\00e7\00e3o, voc\00ea n\00e3o consegue reagir r\00e1pido o suficiente e \00e9 mordido e envenenado at\00e9 a morte.', 'Morte', 3, '0', 0, '0', 0, '0'),
(7, U&'Abrindo sua mochila e vasculhando por poss\00edveis materiais, voc\00ea encontra uma faca pequena.', 'Equipar', 8, 'Guardar', 8, '0', 0, '0'),
(8, U&'Voc\00ea equipou a faca', 'Equipada', 10, '0', 0, '0', 0, '0'),
(9, U&'Voc\00ea guardou a faca', 'Guardada', 11, '0', 0, '0', 0, '0'),
(10, U&'Ati\00e7ada pelos sons de voc\00ea mexendo em suas coisas, o animal se aproxima ferozmente.J\00e1 esperando por isso, voc\00ea se prepara para o bote.Ela avan\00e7a, e voc\00ea acerta uma estocada certeira em sua cabe\00e7a, finalizando-a.Orgulhoso de seu sucesso, voc\00ea recupera sua faca e abre a pr\00f3xima porta.', 'Sucesso', 12, '0', 0, '0', 0, '0'),
(11, U&'Desajeitado enquanto tenta guardar suas coisas novamente, voc\00ea n\00e3o consegue reagir ao ataque e sente uma mordida na sua perna.Assustado, voc\00ea cai no ch\00e3o. A cobra continua te atacando e voc\00ea sente sua vida se esvaindo.....', 'Morte', 3, '0', 0, '0', 0, '0'),
(12, U&'Voc\00ea sai da sala', 'RANDOM1', 21, 'RANDOM2', 32, '0', 0, '0'),
(13, U&'O centro da sala est\00e1 bem iluminado,com tamanho destaque no centro, o resto da sala est\00e1 um completo breu, \00e9 poss\00edvel ver um pequeno punhado de moedas de ouro.', 'Pegar', 14, 'Analisar', 15, 'Sair', 16, '0'),
(14, U&'Feliz por encontrar um pouco de sorte finalmente, voc\00ea caminha diretamente at\00e9 elas.Um, dois, tr\00eas, cinco passos, aos poucos voc\00ea vai se aproximando. Quando chega at\00e9 as moedas, voc\00ea se agacha para peg\00e1-las.Ao se abaixar, voc\00ea sente uma coisa fria perfurando seu peito, sangue come\00e7a a subir at\00e9 sua boca rapidamente. Tentando olhar para o local, voc\00ea tem um leve vislumbre de uma faca em suas costas.Uma pequena risada \00e9 ouvida, e voc\00ea cai no ch\00e3o, sentindo a frieza de sua pr\00f3pria pele e uma po\00e7a vermelha crescendo.', 'Morte', 3, '0', 0, '0', 0, '0'),
(15, U&'Estranhando a situa\00e7\00e3o, voc\00ea come\00e7a a analisar os arredores ainda melhor.Aos poucos seus olhos se acostumam com a escurid\00e3o e voc\00ea pode ver uma pequena silhueta a sua direita. Ainda est\00e1 muito escuro, ent\00e3o voc\00ea n\00e3o consegue identificar o que exatamente pode ser.', 'Pegar', 14, 'Sair', 16, '0', 0, '0'),
(16, U&'Voc\00ea decide sair da sala, perto da porta \00e9 poss\00edvel ouvir um som de passos r\00e1pidos.Aproveitando que j\00e1 estava perto da porta, voc\00ea sai da sala.', 'Sucesso', 12, '0', 0, '0', 0, '0'),
(17, U&'Ao entrar na sala voc\00ea analisa seus arredores:Um ambiente quadrado com paredes claras,um pouco sujas devidas ao tempo, por\00e9m muito bonitas ainda assimO ch\00e3o se mistura em um quadriculado preto e branco, e ao centro voc\00ea v\00ea uma espada fincada no ch\00e3o.', 'Pegar', 18, 'Analisar', 20, 'Sair', 19, '0'),
(18, U&'Voc\00ea se aproxima e repara melhor na arma, \00e9 uma l\00e2mina muito bem forjada, seu fio em perfeito estado e com algumas marca\00e7\00f5es estranhas no cabo.Voc\00ea tenta tirar a espada, fascinado pela beleza dela, e com um pouco de esfor\00e7o voc\00ea consegue remov\00ea-la do ch\00e3o.Voc\00ea adquiriu: Espada leveSentindo confiante com sua l\00e2mina, voc\00ea segue para a pr\00f3xima sala.', 'Sucesso', 12, '0', 0, '0', 0, '0');   
INSERT INTO "PUBLIC"."TEXTOS" VALUES
(19, U&'Com receio do que essas escrituras possam ser, voc\00ea decide recuar e n\00e3o tocar na espada.Voc\00ea saiu da sala', 'Sucesso', 12, '0', 0, '0', 0, '0'),
(20, U&'Com uma estranha sensa\00e7\00e3o de ''algo est\00e1 errado'', voc\00ea decide analisar melhor o quarto, passa pelas paredes cautelosamente, procura no ch\00e3o por algum tipo de armadilha, e ent\00e3o se aproxima da espada o suficiente para analis\00e1-la...Mas nada acontece.', 'Pegar', 18, 'Sair', 19, '0', 0, '0'),
(21, U&'Ao entrar no novo c\00f4modo, voc\00ea logo repara na falta de cor do ambiente, as paredes e ch\00e3o emanam energias negativas.Voc\00ea escuta a porta atr\00e1s de voc\00ea se trancando, logo em seguida voc\00ea consegue escutar um rosnado furioso vindo do centro.Um lobo faminto est\00e1 barrando seu caminho.', 'Atacar', 22, 'defender', 26, 'Mochila', 29, '0'),
(22, U&'Voc\00ea prepara sua arma e parte para cima do lobo, apesar de n\00e3o ser mais r\00e1pido, sua l\00e2mina consegue cortar uma parte do tronco do animal.Ainda mais raivoso do que antes, ele parte pra cima novamente.', 'Matar', 23, 'Nocautear', 24, '0', 0, '0'),
(23, U&'Sabendo de suas capacidades e temendo que ele n\00e3o desista at\00e9 que voc\00ea morra, voc\00ea decide mat\00e1-lo.O lobo ataca ferozmente, voc\00ea defende a mordida com sua espada e num movimento r\00e1pido, corta a cabe\00e7a do animal.Voc\00ea derrotou Lobo Faminto!', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(24, U&'N\00e3o sabendo nada sobre o animal, por\00e9m confiante de que pode vencer, voc\00ea decide apenas deix\00e1-lo inconsciente.O lobo ataca, voc\00ea defende a mordida com sua espada e aproveita o movimento para jog\00e1-lo em dire\00e7\00e3o \00e0 parede com for\00e7a.O baque \00e9 forte, e ap\00f3s alguns segundos, voc\00ea percebe que ele n\00e3o est\00e1 mais se movimentando, ainda assim sua respira\00e7\00e3o est\00e1 est\00e1vel.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(25, U&'Surpreso, por\00e9m n\00e3o acuado pelo ser lupino voc\00ea decide partir para cima primeiro, o lobo n\00e3o recua, e faz um avan\00e7o r\00e1pido, tentando morder seu bra\00e7o.Voc\00ea consegue desviar por pouco, por\00e9m percebe que n\00e3o vai conseguir ganhar apenas na for\00e7a bruta.', 'Matar', 23, 'Nocautear', 24, '0', 0, '0'),
(26, U&'Voc\00ea espera o Ataque.O lobo faminto vem em sua dire\00e7\00e3o, mirando sua perna.Voc\00ea percebe as inten\00e7\00f5es dele e consegue se jogar para fora do ataque, se levantando logo em seguida e mantendo o preparo.', 'Contra-Ataque', 27, 'Mochila', 30, 'Fugir', 31, '0'),
(27, U&'Voc\00ea se prepara, e o lobo avan\00e7a novamente, buscando rasgar seu pesco\00e7o...Por\00e9m, j\00e1 sabendo seu curso de a\00e7\00e3o, voc\00ea consegue se esquivar e se posicionar em cima do lobo, usando seu peso para mant\00ea-lo no ch\00e3o.', 'Matar', 28, 'Nocautear', 29, '0', 0, '0'),
(28, U&'Voc\00ea ent\00e3o usa toda sua for\00e7a em um golpe certeiro na cabe\00e7a do animal, diversas vezes, ele at\00e9 tenta se defender e te arranhar, mas estava enfraquecido devido \00e0 fome, e voc\00ea consegue finaliz\00e1-lo.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(29, U&'Aproveitando da exaust\00e3o e fraqueza do animal, voc\00ea facilmente consegue nocaute\00e1-lo sem sofrer danos.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(30, U&'Voc\00ea decide abrir sua mochila e tira um punhado de roupas e sua faca, enrolando as roupas em seu bra\00e7o pensando em amortecer um poss\00edvel dano.Voc\00ea equipou: Defesa improvisada e faca!O lobo ent\00e3o avan\00e7a novamente, buscando atacar seu pesco\00e7o!Voc\00ea ent\00e3o defende com seu bra\00e7o ''fortificado'', aguentando um bom dano.Aproveitando que o lobo estava mordendo suas roupas, voc\00ea esfaqueia o lobo com a m\00e3o livre, jorrando sangue na sala.Ele afrouxa a mordida, e voc\00ea o acerta novamente, logo voc\00ea percebe que ele n\00e3o \00e9 mais um problema.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(31, U&'Com um desespero imenso, voc\00ea tenta correr at\00e9 a pr\00f3xima porta...', 'RANDOM1', 32, 'RANDOM2', 33, '0', 0, '0');    
INSERT INTO "PUBLIC"."TEXTOS" VALUES
(32, 'E consegue fugir.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(33, U&'Por\00e9m o lobo morde sua perna no meio do caminhoVoc\00ea v\00ea a po\00e7a de sangue se formando antes dele arrancar sua cabe\00e7a.....', 'Morte', 3, '0', 0, '0', 0, '0'),
(34, U&'Ao entrar no novo c\00f4modo, ele se assemelha a um \00f3asis, tem diversas \00e1rvores com frutos chamativos e suculentos, um pequeno riacho cristalino, e uma sensa\00e7\00e3o de paz toma conta do seu corpo.', 'Descansar', 35, 'Sair', 37, 'Explorar', 39, '0'),
(35, U&'Cansado de suas aventuras anteriores, e com um ambiente t\00e3o convidativo, voc\00ea decide descansar um pouco.Voc\00ea se deita na costa de uma \00e1rvore, e tenta pegar no sono... lentamente tudo se escurece...', 'Next', 36, '0', 0, '0', 0, '0'),
(36, U&'De repente, voc\00ea acorda num susto! Voc\00ea n\00e3o consegue mais sentir seu corpo direito, todas as paredes se tornaram pretas com inscri\00e7\00f5es vermelhas, voc\00ea n\00e3o consegue ler absolutamente nada, mas o c\00edrculo com s\00edmbolos em volta n\00e3o tem erro... \00c9 um ritual.Sem conseguir mexer seu corpo, uma faca \00e9 fincada em seu peito, sua respira\00e7\00e3o come\00e7a a fica descompassada, e voc\00ea sente o sangue saindo de seu corpo.''Mais um sacrif\00edcio em nome do nosso Senhor!''', 'Morte', 3, '0', 0, '0', 0, '0'),
(37, U&'Focado em seu objetivo, voc\00ea tenta sair da sala, mas n\00e3o acha nenhuma porta ou sa\00edda aparente como na sala anterior.Voc\00ea caminha por horas,por\00e9m sem muitos resultados.', 'Descansar', 35, 'Explorar', 38, '0', 0, '0'),
(38, U&'Voc\00ea decide explorar a sala, e com um pouco de esfor\00e7o consegue achar uma porta camuflada no meio de folhas e \00e1rvores, e decide sair da sala.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(39, U&'Explorando mais a fundo o lugar, voc\00ea percebe algumas coisas...A sala \00e9 muito maior do que a outra que voc\00ea j\00e1 passou,O sol est\00e1 radiante, mesmo que o lugar seja fechado.Ent\00e3o logo voc\00ea tem a sensa\00e7\00e3o que tudo aquilo \00e9 apenas sua mente lhe pregando pe\00e7as...', 'NEXT', 40, '0', 0, '0', 0, '0'),
(40, U&'Enquanto voc\00ea est\00e1 pensando, voc\00ea escuta algo se aproximando... Olhando melhor, \00e9 uma MulherSeu rosto est\00e1 levemente sujo, seus olhos sem vida e \00e9 poss\00edvel notar diversas manchas de sangue nas roupas, m\00e3os e rosto dela.Ela nota que voc\00ea est\00e1 a observando e entra em choque, Voc\00ea nota o oasis se distorcendo um pouco.', 'Matar- Espada', 41, 'Matar - Faca', 42, 'Poupar', 43, '0'),
(41, U&'Com sua espada em m\00e3os voc\00ea decide lutar contra a feiticeira, ela n\00e3o parece forte, por\00e9m voc\00ea n\00e3o sabe os truques que ela guardaEnquanto ela corre, voc\00ea a persegue com facilidade e acerta um corte em sua perna, derrubando-a e saindo da ilus\00e3o, a porta est\00e1 logo \00e0 sua frente.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(42, U&'Voc\00ea pega a faca que estava em sua mochila e atira na ilusionista, derrubando-a no ch\00e3o.Com um corte limpo, voc\00ea mata a feiticeira.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(43, U&'Vendo o rosto aterrorizado da mulher, voc\00ea decide n\00e3o matar ela, e sai em dire\00e7\00e3o \00e0 pr\00f3xima sala.', 'Sucesso', 44, '0', 0, '0', 0, '0'),
(44, U&'Ao entrar no novo c\00f4modo, o ambiente est\00e1 mais sereno, voc\00ea n\00e3o v\00ea inimigos, no centro \00e9 poss\00edvel ver algo como uma tela de computador com uma mensagem:', 'RANDOM1', 45, 'RANDOM2', 46, 'RANDOM3', 47, '0'),
(45, U&'[&#120436;&#120478; &#120473;&#120472;&#120476;&#120476;&#120472; &#120476;&#120462;&#120475; &#120472; &#120450;&#120472;&#120469;, &#120462;&#120478; &#120473;&#120472;&#120476;&#120476;&#120472; &#120476;&#120462;&#120475; &#120458;&#120475;&#120462;&#120466;&#120458;, &#120462;&#120478; &#120473;&#120472;&#120476;&#120476;&#120472; &#120476;&#120462;&#120475; &#120478;&#120470; &#120473;\00e1&#120476;&#120476;&#120458;&#120475;&#120472;, &#120472; &#120474;&#120478;&#120462; &#120462;&#120478; &#120476;&#120472;&#120478;?]', 'Relogio', 48, 'Fenix', 49, 'Praia', 49, '0');       
INSERT INTO "PUBLIC"."TEXTOS" VALUES
(46, '[&#120436;&#120478; &#120473;&#120472;&#120476;&#120476;&#120472; &#120476;&#120462;&#120475; &#120478;&#120470; &#120435;&#120462;&#120478;&#120476;, &#120478;&#120470; &#120473;&#120469;&#120458;&#120471;&#120462;&#120477;&#120458;, &#120462; &#120470;&#120462;&#120461;&#120466;&#120475; &#120472; &#120460;&#120458;&#120469;&#120472;&#120475;. &#120446; &#120474;&#120478;&#120462; &#120462;&#120478; &#120476;&#120472;&#120478;?]', 'Jupiter', 49, 'Apolo', 49, 'Mercurio', 48, '0'),
(48, 'O estranho mecanismo recebe sua resposta e analisa por alguns segundos...', 'ACERTO', 51, 'ERRO', 49, '0', 0, '0'),
(49, '[Resposta INCORRETA]', 'NEXT', 50, '0', 0, '0', 0, '0'),
(50, U&'Ent\00e3o de todas as paredes e do teto, voc\00ea pode ver l\00e2minas se formando magicamente como espinhos. Voc\00ea n\00e3o tem como desviarSem tempo para reagir, as l\00e2minas s\00e3o lan\00e7adas a uma velocidade absurda em voc\00ea.', '0', 0, '0', 0, '0', 0, '0'),
(51, U&'[Resposta CORRETA]A tela pisca em verde e voc\00ea pode ver uma das paredes descendo lentamente, revelando uma nova passagem.', 'NEXT', 52, '0', 0, '0', 0, '0'),
(52, U&'Voc\00ea passou da sala do enigma!', '1', 0, '0', 0, '0', 0, '0'); 