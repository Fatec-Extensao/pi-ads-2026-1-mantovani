Algoritmo "vetor2"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/06/2026
Var
vet1: vetor[1..10] de inteiro
vet2: vetor [1..10] de inteiro
vet3: vetor [1..10] de inteiro
posicao: inteiro

Inicio
vet1[1] <- 23
vet1[2] <- 37
vet1[3] <- 30
vet1[9] <- 45
vet1[10] <- 35

vet2[1] <- 30
vet2[2] <- 32
vet2[3] <- 46
vet2[9] <- 33
vet2[10] <- 42

vet3[1] <- vet1[1] + vet2[1]
vet3[2] <- vet1[2] + vet2[2]
vet3[3] <- vet1[3] + vet2[3]
vet3[9] <- vet1[9] + vet2[9]
vet3[10] <- vet1[10] + vet2[10]
Escreval("O valor da posição 1 do vetor 3 é:", vet3[1])
Escreval("O valor da posição 2 do vetor 3 é:", vet3[2])
Escreval("O valor da posição 3 do vetor 3 é:", vet3[3])
Escreval("O valor da posição 9 do vetor 3 é:", vet3[9])
Escreval("O valor da posição 10 do vetor 3 é:", vet3[10])








Fimalgoritmo