Algoritmo "Senha"

Var
   categ, senha,resp, iniciosenha: caractere
   vet: vetor[1..10] de  caracter
   i, s: Inteiro
   tamanho, sorteio: inteiro
   caracterpermi: caractere

Inicio
   resp <- "S"
   caracterpermi <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@!#"
   tamanho <- compr(caracterpermi)
   Enquanto (resp = "S") ou (resp = "s") Faça
      Escreval("Digite sua categoria:")
      Escreval (" A - Aluno")
      Escreval (" P - Professor ")
      Escreval (" F - Funcionário")
      Leia(categ)
      Enquanto (categ <> "A") e (categ <> "P") e (categ <> "F") Faca
         Escreval ("Categoria Inválida")
         Escreval("Digite sua categoria:")
         Escreval (" A - Aluno")
         Escreval (" P - Professor")
         Escreval (" F - Funcionário")
         Leia(categ)
      Fimenquanto

      Para i de 1 ate 10 faça
         Escolha categ
         Caso "A"
            iniciosenha <- "A"
            senha <- iniciosenha
         Caso "P"
            iniciosenha <- "P"
            senha <- iniciosenha
         Caso "F"
            iniciosenha <- "F"
            senha <- iniciosenha
         Fimescolha

         Para s de 1 ate 7 faça
            sorteio <- randi(tamanho) + 1
            copia(caracterpermi, sorteio, 1)
            senha <- senha + copia(caracterpermi, sorteio, 1)
         FimPara
         vet[i] <- senha

         Escreval("Senha", i , ": ", senha)
      Fimpara
      Escreval(" ")
      Escreval("Todas as senhas geradas:")
      Escreval (" ")
      Para i de 1 ate 10 faca
         Escreval(vet[i])
      FimPara
      Escreval("Deseja continuar a digitação ? S/N")
      Leia(resp)
   Fimenquanto


Fimalgoritmo