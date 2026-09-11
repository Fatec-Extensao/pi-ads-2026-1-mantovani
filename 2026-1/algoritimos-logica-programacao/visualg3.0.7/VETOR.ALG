Algoritmo "Vetor"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/06/2026
Var
   vet: Vetor[1..10] de Inteiro
   num, i: Inteiro

Inicio

   Para i de 1 ate 10 Faca
      Escreval("Digite o ", i , "º número")
      Leia (vet[I])
   Fimpara
   Escreval("Digite o número a ser pesquisado")
   Leia(num)
   Para I de 1 ate 10 Faca
      Se(num = vet [i])Entao
         Escreval("A posição de", num, " é: ", i)
      fimse
   fimpara

Fimalgoritmo