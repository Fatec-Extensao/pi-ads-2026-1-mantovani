Algoritmo "Viagem"

Var
   codigo, totalvend,cont1, cont2, cont3, cont4: inteiro
   nome, cidade, resp: caractere
   maiorval, porcvend1,valsoma, valmed, val1, val2,val3, val4: real

Inicio
   cont1 <-0
   cont2 <-0
   cont3 <-0
   cont4 <-0
   resp <- "S"
   maiorval <- 0
   valsoma <- 0
   Enquanto (resp ="S")ou (resp = "s")Faça
      Escreval("Digite o código da viagem:")
      Escreval("1- Nacional Nordeste")
      Escreval("2- Nacional Sul")
      Escreval("3- Internacional Disney")
      Escreval("4- Internacional Europa")
      Leia(codigo)
      Se(codigo < 1) ou (codigo > 4) Entao
         Escreval("Codigo invalido")
      Senao
         Escreval("Digite o nome do passageiro:")
         Leia (nome)
         Escreval("Digite a cidade destino:")
         Leia(cidade)
         Se (codigo=1) Entao
            cont1 <- cont1 + 1
            Escreval("Digite o valor da Viagem")
            Leia(val1)
            Se(val1 > maiorval)Entao
               maiorval<-val1
            fimse
         Senao
            Se (codigo=2) Entao
               cont2 <- cont2 + 1
               Escreval("Digite o valor da Viagem")
               Leia(val2)
               Se(val2 > maiorval)Entao
                  maiorval<-val2
               fimse
            Senao
               Se (codigo=3) Entao
                  cont3 <- cont3 + 1
                  Escreval("Digite o valor da Viagem")
                  Leia(val3)
                  valsoma <- valsoma + val3
                  Se(val3 > maiorval)Entao
                     maiorval<-val3
                  fimse
               Senao
                  Se (codigo=4) Entao
                     cont4 <- cont4 + 1
                     Escreval("Digite o valor da Viagem")
                     Leia(val4)
                     Se(val4 > maiorval)Entao
                        maiorval<-val4
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      Escreval("Deseja continuar a digitação ? S/N:")
      Leia(Resp)
   Fimenquanto
   totalvend <- cont1 + cont2 + cont3 +cont4
   Escreval("A quantidade total de passagens vendidas é:", totalvend)
   Escreval("A quanrtidade total de passagens vendidas do tipo 1 é:", cont1)
   Escreval("A quanrtidade total de passagens vendidas do tipo 2 é:", cont2)
   Escreval("A quanrtidade total de passagens vendidas do tipo 3 é:", cont3)
   Escreval("A quanrtidade total de passagens vendidas do tipo 4 é:", cont4)
   Se(totalvend > 0) Entao
      porcvend1 <- (cont1/totalvend)*100
      Escreval("A % de viagens vendidas do tipo 1 é:", porcvend1)
   Fimse
   Escreval ("O maior valor das passagens é:", maiorval)
   Se(cont3 > 0) Entao
      valmed <- valsoma/cont3
      Escreval("O valor médio da viagem tipo 3 é:", valmed)
   Fimse
Fimalgoritmo