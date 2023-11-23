package br.com.rpg.servlet;

import br.com.rpg.dao.TextsDao;
import br.com.rpg.model.Texts;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/CreateTexts")
public class CreateTextsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] hold = getFullArray();
        TextsDao textsDao = new TextsDao();
        textsDao.createTable();
        System.out.println(hold.length);
        for(int i=0;i<hold.length;i++) {
            Texts a = new Texts(hold[i]);
            textsDao.createTexts(a,hold.length);

        }
        resp.sendRedirect("/getTexts");

    }

    protected String[] getFullArray() {
        String[] hold = new String[52];
        hold[0] = "Você entra em uma sala escura... À sua frente é possível ouvir um 'SSSSSsssss' com um breve som de chocalhos. Logo você reconhece que se trata de uma cobra";
        hold[1] = "Você tenta lutar contra a cobra com suas mãos nuas, a falta de informação sobre o animal te leva a fazer movimentos imprudentes e você é mordido e envenenado." +
                    "Aos poucos o veneno começa a fazer efeito e você sente suas forças se esvaindo, você então pode sentir o abraço da morte.";
        hold[2] = "Você morreu! Fim de jogo!";
        hold[3] = "Com medo do que o animal seja peçonhento ou mortal, você decide sair da sala, evitando ao máximo chamar a atenção da cobra.";
        hold[4] = "Você consegue escapar da sala.";
        hold[5] = "Você não consegue ser silencioso o bastante e chama a atenção da cobra.Surpreso e em choque ao ver ela se movendo em sua direção, você não consegue reagir rápido o suficiente e é mordido e envenenado até a morte."; // FIM DE JOGO
        hold[6] = "Abrindo sua mochila e vasculhando por possíveis materiais, você encontra uma faca pequena.";
        hold[7] = "Você equipou a faca";
        hold[8] = "Você guardou a faca";
        hold[9] = "Atiçada pelos sons de você mexendo em suas coisas, o animal se aproxima ferozmente."+
                    "Já esperando por isso, você se prepara para o bote."+
                    "Ela avança, e você acerta uma estocada certeira em sua cabeça, finalizando-a."+
                    "Orgulhoso de seu sucesso, você recupera sua faca e abre a próxima porta.";
        hold[10] = "Desajeitado enquanto tenta guardar suas coisas novamente, você não consegue reagir ao ataque e sente uma mordida na sua perna."+
                    "Assustado, você cai no chão. A cobra continua te atacando e você sente sua vida se esvaindo.....";//FIM DE JOGO
        hold[11] = "Você sai da sala";
        //Fim textos sala 1 cobra
        hold[12] = "O centro da sala está bem iluminado,com tamanho destaque no centro, o resto da sala está um completo breu, é possível ver um pequeno punhado de moedas de ouro.";
        hold[13] = "Feliz por encontrar um pouco de sorte finalmente, você caminha diretamente até elas.Um, dois, três, cinco passos, aos poucos você vai se aproximando. Quando chega até as moedas, você se agacha para pegá-las.Ao se abaixar, você sente uma coisa fria perfurando seu peito, sangue começa a subir até sua boca rapidamente. Tentando olhar para o local, você tem um leve vislumbre de uma faca em suas costas.Uma pequena risada é ouvida, e você cai no chão, sentindo a frieza de sua própria pele e uma poça vermelha crescendo.";//FIM DE JOGO
        hold[14] = "Estranhando a situação, você começa a analisar os arredores ainda melhor."+
                    "Aos poucos seus olhos se acostumam com a escuridão e você pode ver uma pequena silhueta a sua direita. Ainda está muito escuro, então você não consegue identificar o que exatamente pode ser.";
        hold[15] = "Você decide sair da sala, perto da porta é possível ouvir um som de passos rápidos."+
                    "Aproveitando que já estava perto da porta, você sai da sala.";
        //Fim textos sala 1 goblin
        hold[16] = "Ao entrar na sala você analisa seus arredores:"+
                    "Um ambiente quadrado com paredes claras,um pouco sujas devidas ao tempo, porém muito bonitas ainda assim"+
                    "O chão se mistura em um quadriculado preto e branco, e ao centro você vê uma espada fincada no chão.";
        hold[17] =  "Você se aproxima e repara melhor na arma, é uma lâmina muito bem forjada, seu fio em perfeito estado e com algumas marcações estranhas no cabo."+
                    "Você tenta tirar a espada, fascinado pela beleza dela, e com um pouco de esforço você consegue removê-la do chão."+
                    "Você adquiriu: Espada leve"+
                    "Sentindo confiante com sua lâmina, você segue para a próxima sala.";
        hold[18] =  "Com receio do que essas escrituras possam ser, você decide recuar e não tocar na espada."+
                    "Você saiu da sala";
        hold[19] =  "Com uma estranha sensação de 'algo está errado', você decide analisar melhor o quarto, passa pelas paredes cautelosamente, procura no chão por algum tipo de armadilha, e então se aproxima da espada o suficiente para analisá-la..."+
                    "Mas nada acontece.";
        //Fim textos sala 1 espada
        //Fim textos sala 1
        //Inicio textos sala 2
        hold[20] = "Ao entrar no novo cômodo, você logo repara na falta de cor do ambiente, as paredes e chão emanam energias negativas."+
                    "Você escuta a porta atrás de você se trancando, logo em seguida você consegue escutar um rosnado furioso vindo do centro."+
                    "Um lobo faminto está barrando seu caminho.";
        //Texto espada lobo
        hold[21] =  "Você prepara sua arma e parte para cima do lobo, apesar de não ser mais rápido, sua lâmina consegue cortar uma parte do tronco do animal."+
                    "Ainda mais raivoso do que antes, ele parte pra cima novamente.";
        hold[22] =  "Sabendo de suas capacidades e temendo que ele não desista até que você morra, você decide matá-lo."+
                    "O lobo ataca ferozmente, você defende a mordida com sua espada e num movimento rápido, corta a cabeça do animal."+
                    "Você derrotou Lobo Faminto!";
        hold[23] =  "Não sabendo nada sobre o animal, porém confiante de que pode vencer, você decide apenas deixá-lo inconsciente."+
                    "O lobo ataca, você defende a mordida com sua espada e aproveita o movimento para jogá-lo em direção à parede com força."+
                    "O baque é forte, e após alguns segundos, você percebe que ele não está mais se movimentando, ainda assim sua respiração está estável.";
        //Fim textos espada lobo
        hold[24] = "Surpreso, porém não acuado pelo ser lupino você decide partir para cima primeiro, o lobo não recua, e faz um avanço rápido, tentando morder seu braço."+
                    "Você consegue desviar por pouco, porém percebe que não vai conseguir ganhar apenas na força bruta.";
        hold[25] = "Você espera o Ataque."+
                    "O lobo faminto vem em sua direção, mirando sua perna."+
                    "Você percebe as intenções dele e consegue se jogar para fora do ataque, se levantando logo em seguida e mantendo o preparo.";
        hold[26] =  "Você se prepara, e o lobo avança novamente, buscando rasgar seu pescoço..."+
                    "Porém, já sabendo seu curso de ação, você consegue se esquivar e se posicionar em cima do lobo, usando seu peso para mantê-lo no chão.";
        hold[27] = "Você então usa toda sua força em um golpe certeiro na cabeça do animal, diversas vezes, ele até tenta se defender e te arranhar, mas estava enfraquecido devido à fome, e você consegue finalizá-lo.";
        hold[28] = "Aproveitando da exaustão e fraqueza do animal, você facilmente consegue nocauteá-lo sem sofrer danos.";
        hold[29] = "Você decide abrir sua mochila e tira um punhado de roupas e sua faca, enrolando as roupas em seu braço pensando em amortecer um possível dano."+
                    "Você equipou: Defesa improvisada e faca!"+
                    "O lobo então avança novamente, buscando atacar seu pescoço!"+
                    "Você então defende com seu braço 'fortificado', aguentando um bom dano."+"Aproveitando que o lobo estava mordendo suas roupas, você esfaqueia o lobo com a mão livre, jorrando sangue na sala."+
                    "Ele afrouxa a mordida, e você o acerta novamente, logo você percebe que ele não é mais um problema.";
        hold[30] = "Com um desespero imenso, você tenta correr até a próxima porta...";
        hold[31] = "E consegue fugir.";
        hold[32] = "Porém o lobo morde sua perna no meio do caminho"+
                "Você vê a poça de sangue se formando antes dele arrancar sua cabeça.....";//FIM DE JOGO
        //Fim textos sala 2 lobo
        //Inicio textos sala oasis
        hold[33] = "Ao entrar no novo cômodo, ele se assemelha a um óasis, tem diversas árvores com frutos chamativos e suculentos, um pequeno riacho cristalino, e uma sensação de paz toma conta do seu corpo.";
        hold[34] = "Cansado de suas aventuras anteriores, e com um ambiente tão convidativo, você decide descansar um pouco.Você se deita na costa de uma árvore, e tenta pegar no sono... lentamente tudo se escurece...";
        hold[35] = "De repente, você acorda num susto! Você não consegue mais sentir seu corpo direito, todas as paredes se tornaram pretas com inscrições vermelhas, você não consegue ler absolutamente nada, mas o círculo com símbolos em volta não tem erro... É um ritual."+
                    "Sem conseguir mexer seu corpo, uma faca é fincada em seu peito, sua respiração começa a fica descompassada, e você sente o sangue saindo de seu corpo."+
                    "'Mais um sacrifício em nome do nosso Senhor!'"; //FIM DE JOGO
        hold[36] = "Focado em seu objetivo, você tenta sair da sala, mas não acha nenhuma porta ou saída aparente como na sala anterior."+
                    "Você caminha por horas,porém sem muitos resultados.";
        hold[37] = "Você decide explorar a sala, e com um pouco de esforço consegue achar uma porta camuflada no meio de folhas e árvores, e decide sair da sala.";
        hold[38] = "Explorando mais a fundo o lugar, você percebe algumas coisas..."+
                    "A sala é muito maior do que a outra que você já passou,O sol está radiante, mesmo que o lugar seja fechado."+
                    "Então logo você tem a sensação que tudo aquilo é apenas sua mente lhe pregando peças...";
        hold[39] = "Enquanto você está pensando, você escuta algo se aproximando... Olhando melhor, é uma Mulher"+
                    "Seu rosto está levemente sujo, seus olhos sem vida e é possível notar diversas manchas de sangue nas roupas, mãos e rosto dela."+
                    "Ela nota que você está a observando e entra em choque, Você nota o oasis se distorcendo um pouco.";
        hold[40] = "Com sua espada em mãos você decide lutar contra a feiticeira, ela não parece forte, porém você não sabe os truques que ela guarda"+
                    "Enquanto ela corre, você a persegue com facilidade e acerta um corte em sua perna, derrubando-a e saindo da ilusão, a porta está logo à sua frente.";//Espada
        hold[41] = "Você pega a faca que estava em sua mochila e atira na ilusionista, derrubando-a no chão."+
                    "Com um corte limpo, você mata a feiticeira.";//Finalizar
        hold[42] = "Vendo o rosto aterrorizado da mulher, você decide não matar ela, e sai em direção à próxima sala.";//Poupar
        //Fim textos sala 2
        //Inicio textos sala 3
        hold[43] = "Ao entrar no novo cômodo, o ambiente está mais sereno, você não vê inimigos, no centro é possível ver algo como uma tela de computador com uma mensagem:";
        hold[44] = "[𝙴𝚞 𝚙𝚘𝚜𝚜𝚘 𝚜𝚎𝚛 𝚘 𝚂𝚘𝚕, 𝚎𝚞 𝚙𝚘𝚜𝚜𝚘 𝚜𝚎𝚛 𝚊𝚛𝚎𝚒𝚊, 𝚎𝚞 𝚙𝚘𝚜𝚜𝚘 𝚜𝚎𝚛 𝚞𝚖 𝚙á𝚜𝚜𝚊𝚛𝚘, 𝚘 𝚚𝚞𝚎 𝚎𝚞 𝚜𝚘𝚞?]";
        hold[45] = "[𝙴𝚞 𝚙𝚘𝚜𝚜𝚘 𝚜𝚎𝚛 𝚞𝚖 𝙳𝚎𝚞𝚜, 𝚞𝚖 𝚙𝚕𝚊𝚗𝚎𝚝𝚊, 𝚎 𝚖𝚎𝚍𝚒𝚛 𝚘 𝚌𝚊𝚕𝚘𝚛. 𝙾 𝚚𝚞𝚎 𝚎𝚞 𝚜𝚘𝚞?]";
        hold[46] = "[𝙴𝚞 𝚝𝚎𝚗𝚑𝚘 𝚕𝚊𝚐𝚘𝚜 𝚜𝚎𝚖 á𝚐𝚞𝚊, 𝚖𝚘𝚗𝚝𝚊𝚗𝚑𝚊𝚜 𝚜𝚎𝚖 𝚙𝚎𝚍𝚛𝚊 𝚎 𝚌𝚒𝚍𝚊𝚍𝚎𝚜 s𝚎𝚖 𝚙𝚛é𝚍𝚒𝚘𝚜. 𝙾 𝚚𝚞𝚎 𝚎𝚞 𝚜𝚘𝚞?]";
        hold[47] = "O estranho mecanismo recebe sua resposta e analisa por alguns segundos...";
        hold[48] = "[Resposta INCORRETA]";
        hold[49] = "Então de todas as paredes e do teto, você pode ver lâminas se formando magicamente como espinhos. Você não tem como desviar"+
                 "Sem tempo para reagir, as lâminas são lançadas a uma velocidade absurda em você.";
        hold[50] = "[Resposta CORRETA]"+
                    "A tela pisca em verde e você pode ver uma das paredes descendo lentamente, revelando uma nova passagem.";
        hold[51] = "Você passou da sala do enigma!";
        //Fim sala 3
        //Inicio sala 4

        return hold;
    }
}

