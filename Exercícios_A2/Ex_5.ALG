Algoritmo "FatorialComValidacao"

Var
n: inteiro
fa: inteiro

Inicio

escreva("Qual o número? ")
leia(n)
enquanto (n < 0) faca
      escreva("Número inválido! Digite novamente: ")
      leia(n)
fimenquanto
fa <- 1
enquanto (n > 0) faca
      fa <- fa * n
      n <- n - 1
fimenquanto
escreva("O fatorial é: ", fa)

Fimalgoritmo