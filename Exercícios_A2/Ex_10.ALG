Algoritmo "CrescimentoPopulacional"

Var

n: real
n2: real
a: inteiro

Inicio

escreva("Qual a população da cidade A? ")
leia(n)
escreva("Qual a população da cidade B? ")
leia(n2)
se (n > n2) entao
      escreva("A população da cidade A já é maior que a B.")
   senao
      se (n = n2) entao
         escreva("As populações são iguais no momento.")
      senao
a <- 0
enquanto (n <= n2) faca
            n <- n + (n * 0.03)
            n2 <- n2 + (n2 * 0.015)
            a <- a + 1
fimenquanto
         escreva("A cidade A ultrapassará a cidade B em ", a, " anos.")
fimse
fimse

Fimalgoritmo