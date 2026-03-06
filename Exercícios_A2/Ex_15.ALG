Algoritmo "SequenciaDeFibonacci"

Var

n: inteiro
i: inteiro
a: inteiro
b: inteiro
c: inteiro
co: inteiro

Inicio

escreva("Quantos termos deseja? ")
leia(n)
a <- 0
b <- 1
co <- 0
para i de 1 ate n faca
     escreval(a)
     se a mod 2 = 0 entao
        co <- co + 1
fimse
     c <- a + b
     a <- b
     b <- c
fimpara
escreval("Quantidade de números pares: ", co)

Fimalgoritmo