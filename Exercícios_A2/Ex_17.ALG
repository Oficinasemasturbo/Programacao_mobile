Algoritmo "ClassificaçãoDeTurma"

Var

i: inteiro
n: inteiro
p: real
p2: real
p3: real
c: inteiro
c2: inteiro
c3: inteiro

Inicio

c <- 0
c2 <- 0
c2 <- 0
para i de 1 ate 20 faca
     escreval("Digite a ", i, "º média: ")
     leia(n)
     se n >= 7 entao
        escreval ("Aprovado!")
        c <- c + 1
     senao
          se n >= 5 entao
             escreval ("Recuperação!")
             c2 <- c2 +1
     senao
          se n < 5 entao
          escreval ("Reprovado!!")
          c3 <- c3 + 1
fimse
fimse
fimse
fimpara
p <- (7 * 100) / c
p2 <- (5 * 100) / c2
p3 <- (4 * 100) / c3
escreval ("O percentual dos Aprovados é: ", p)
escreval ("O percentual dos de recuperação é: ", p2)
escreval ("O percentual dos reprovados é: ", p3)

Fimalgoritmo