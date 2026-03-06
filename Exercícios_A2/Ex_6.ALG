Algoritmo "SequenciaAteCondicao"

Var

n: inteiro
s: inteiro
c: inteiro
m: real

Inicio

s <- 0
c <- 0
escreva("Qual o número? ")
leia(n)
enquanto (n > 0) faca
      s <- s + n
      c <- c + 1
      escreva("Qual o número? ")
      leia(n)
fimenquanto
se (c > 0) entao
      m <- s / c
      escreva("Soma dos positivos: ", s)
      escreva(" Média: ", m)
senao
      escreva("Nenhum número positivo foi digitado.")
fimse

Fimalgoritmo