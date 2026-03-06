Algoritmo "AnaliseNumerosDivisiveis"

Var

n: inteiro
i: inteiro
c: inteiro
c2: inteiro
c3: inteiro

Inicio

c <- 0
c2 <- 0
c3 <- 0
para i de 1 ate 25 faca
     escreva ("Digite o ", i, "° número: ")
     leia(n)
     se (n % 3 = 0) entao
        c <- c + 1
     se (n % 5 = 0) entao
        c2 <- c2 + 1
     se (n % 3 = 0) e (n % 5 = 0) entao
        c3 <- c3 + 1
fimse
fimse
fimse
fimpara
escreval("Divisíveis por 3: ", c)
escreval("Divisíveis por 5: ", c2)
escreval("Divisíveis por 3 e 5: ", c3)

Fimalgoritmo