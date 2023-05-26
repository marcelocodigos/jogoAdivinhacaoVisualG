Algoritmo "Adivinha Numeros"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Marcelo Ferreira 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Marcelo Ferreira  youtube.com/webprogramadores
// Data atual  : 26/05/2023
//chave pix : (aleatoria) : 595cf622-d87b-446b-a410-bbdb88e760cb
Var
   //varivael que seleciona o nivel do jogo
   nivel:inteiro

   //finaliza o programa
   procedimento finaliza()
     var
     inicio
   fimprocedimento
   
   //procedimento escolhe o nivel
   //com base em opcao digitada pelo usuario
    procedimento nivelIntevalo(nivel:inteiro):inteiro
      var
        limite,chances:inteiro
      inicio
       limite<-0
       chances<-0

       //altera os valores de nivel e intervalor de acordo com valor de nivel
       escolha nivel
       caso 1
        limite<-10
        chances<-5
        geraAleatorio(limite,chances) //chama o procedimento para gerar a aleatorio
       caso 2
        limite<-50
        chances<-7
        geraAleatorio(limite,chances) //chama o procedimento para gerar a aleatorio
       caso 3
        limite<-100
        chances<-9
        geraAleatorio(limite,chances) //chama o procedimento para gerar a aleatorio
       caso 4
        Fimalgoritmo //finaliza o jogo imediantamente
       fimescolha
    fimprocedimento

    //procedimento gera aleatorio de acordo com o nivel
    procedimento geraAleatorio(limiteMaximo,tentativas:inteiro):inteiro
      var
       numeroAleatorio:inteiro
      inicio
      numeroAleatorio<-0 //inicializa a variavel para evitar problemas de mem
       se(limiteMaximo=10)entao
          aleatorio on
          aleatorio 1,10
          leia(numeroAleatorio)
          limpatela
          aleatorio off

          jogo(numeroAleatorio,tentativas,limiteMaximo)
          senao
           se(limiteMaximo=50)entao
             aleatorio on
             aleatorio 1,50
             leia(numeroAleatorio)
             limpatela
             aleatorio off
             jogo(numeroAleatorio,tentativas,limiteMaximo)
             escreval("Numero gerado entre 1 e ",limiteMaximo)
           senao
             se(limiteMaximo=100)entao
             aleatorio on
             aleatorio 1,100
             leia(numeroAleatorio)
             limpatela
             aleatorio off
              jogo(numeroAleatorio,tentativas,limiteMaximo)

             fimse
          fimse
       fimse
       
    fimprocedimento
    //procedimento jogo real acontecendo papai :)
    procedimento jogo(numeroAleatorio,tentativas,limite:inteiro):inteiro
      var
        palpite,limiteMaximo:inteiro
        opcao:caracter
      inicio
        palpite<-0
        limiteMaximo<-0
        repita
           limiteMaximo<-limiteMaximo+1
           escreval("Tentativa ", limiteMaximo," de ", tentativas)
           escreva("Entre com um numero entre 1 e ",limite,"..:")
           leia(palpite)
           //dica 1 - numero Palpitado  maior
           se(palpite>numeroAleatorio)entao
             escreval("Dica ! - O numero é menor que ",palpite)
             escreval(" ")
             senao
               se(palpite<numeroAleatorio)entao //se for menor
                escreval("Dica ! - O numero é maior  que ",palpite)
                escreval(" ")
                senao
                  se(numeroAleatorio=Palpite) entao
                    escreva("Eureca !! Acertou Mizeravi !!")
                    escreva(" o numero é :",numeroAleatorio)
                    escreval(" ")
                  fimse
              fimse
           fimse
        ate((palpite=numeroAleatorio)ou (limiteMaximo=tentativas))
        //game over
        
        se(limiteMaximo>=tentativas)entao
             limpatela
             escreva("Game over !, o numero que eu pensei era: ")
            escreval(" ",numeroAleatorio)
            escreval("Deseja continuar ? ")
            escreva("Digite 'S' para sim ou qualquer tecla para sair..:")
            leia(opcao)
            segundaChance(opcao)
            limpatela
         fimse
                    
    fimprocedimento

    //prcedimento segunda chance
    procedimento segundaChance(opcao:caracter):caracter
      var
       nivel:inteiro
      inicio
      se((opcao="S") ou (opcao="s"))entao
        repita
       //lista algumas opções para que o usuário escolha o nivel do jogo
       escreval("+++++jogo de adivinhação +++++++")
       escreval("1- Nivel Básico   -- 5 Chances -- Intervalo de 1 a 10.")
       escreval("2- Nivel Médio    -- 7 Chances -- Intervalo de 1 a 50.")
       escreval("3- Nivel Avançado -- 9 Chances -- Intervalo de 1 a 100.")
       escreva("Por favor, escolha um nível (1,2 ou 3) ou 4 para sair ...:")
       leia(nivel)
       limpatela
       //se o valor de nivel for = 4 4 o programa finaliza
       ate((nivel=1) ou (nivel=2) ou (nivel=3) ou (nivel=4))

        //joga o valor de nivel dentro do procedimento nivelIntervalo
       nivelIntevalo(nivel)
       senao
         se((opcao<>"S") ou (opcao<>"s"))entao
            //vai direto para o fim
         fimse
      fimse
    fimprocedimento
//programa principal
Inicio
     repita
       //lista algumas opções para que o usuário escolha o nivel do jogo
       escreval("+++++jogo de adivinhação +++++++")
       escreval("1- Nivel Básico   -- 5 Chances -- Intervalo de 1 a 10.")
       escreval("2- Nivel Médio    -- 7 Chances -- Intervalo de 1 a 50.")
       escreval("3- Nivel Avançado -- 9 Chances -- Intervalo de 1 a 100.")
       escreva("Por favor, escolha um nível (1,2 ou 3) ou 4 para sair ...:")
       leia(nivel)
       limpatela
     //se o valor de nivel for = 4 4 o programa finaliza
     ate((nivel=1) ou (nivel=2) ou (nivel=3) ou (nivel=4))
     
     //joga o valor de nivel dentro do procedimento nivelIntervalo
     nivelIntevalo(nivel)

Fimalgoritmo