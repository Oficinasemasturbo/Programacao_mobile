Algoritmo "AnaliseDeIdades"

Var

n: inteiro
s: inteiro
m: real
ma: inteiro
me: inteiro
p: real
c: inteiro

Inicio

c <- 0
s <- 0
ma <- 0
me <- 0
escreva("Qual a idade? ")
leia(n)
enquanto (n <> 0) faca
      c <- c + 1
      s <- s + n
      se n > 18 entao
         ma <- ma + 1
      senao
         me <- me + 1
      fimse
      escreva("Escreva outra idade: ")
      leia(n)
fimenquanto
m <- s / c
p <- (me * 100) / c
escreva("A quantidade de maiores de idade é: ", ma)
escreva(" O percentual de menores de idade é: ", p, "%")
escreva(" A média das idades é: ", m)

Fimalgoritmo