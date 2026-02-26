Algoritmo "ContadorAtéZero"

Var

n: inteiro
c: inteiro
s: inteiro

Inicio

c <- 0
s <- 0
escreva("Digite um valor: ")
leia(n)
enquanto (n <> 0) faca
         c <- c + 1
         s <- s + n
         escreva("Digite outro número: ")
         leia(n)
fimenquanto
escreva("Quantidade de números digitados: ", c)
escreva(" Soma total: ", s)

Fimalgoritmo