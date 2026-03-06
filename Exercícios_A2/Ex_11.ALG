Algoritmo "SistemaDeCaixa"

Var

n: real
s: real
d: real
s2: real

Inicio

s2 <- 0
s <- 0
escreva("Qual o número? ")
leia(n)
enquanto (n <> 0) faca
      s <- s + n
      escreva("Escreva o outro valor: ")
      leia(n)
      se n > 100 entao
         d <- n * 0.05
         s2 <- s2 + n
fimse
fimenquanto
escreva ("A soma dos valores é: ", s)
escreva ("O total de desconto aplicado é: ", s2)


Fimalgoritmo