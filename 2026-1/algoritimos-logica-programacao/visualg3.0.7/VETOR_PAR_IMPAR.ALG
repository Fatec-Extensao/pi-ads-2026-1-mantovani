Algoritmo "Vetor_PAR_IMPAR"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/06/2026
Var
   vet: vetor[1..20] de inteiro
   vetb: vetor [1..10] de inteiro
   vetc: vetor [1..10] de inteiro
   i, par, impar: inteiro

Inicio
   Para i de 1 ate 20 faça
      Escreval("Digite o", i , "º número")
      Leia(vet[i])
   Fimpara
   Para i de 1 ate 10 faça
      Se (i mod 2 = 0) Entao
         vetb[i] <- vet[i]
      Senao
         Se (i mod <> 0) Entao
            vetc[i] <- vet[i]
         Fimse
      Fimse
   Fimpara
   Para i de 10 ate 20 faça
      Se (i mod 2 = 0) Entao
         vetb [i] <- vet[i]
      Senao
         Se (i mod <> 0) Entao
            vetc[i] <- vet[i]
         Fimse
      Fimse
   Fimpara






Fimalgoritmo