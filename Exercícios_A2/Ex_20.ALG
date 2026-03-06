Algoritmo "SimulacaoCaixaEletronico"

Var

n: inteiro
c: inteiro
d: inteiro
u: inteiro

Inicio

escreva ("Digite o valor do saque: ")
leia(n)
enquanto n < 0 faca
   escreva ("Valor inválido!!")
   escreva ("Digite o valor do saque: ")
   leia(n)
fimenquanto
c <- n div 100
d <- (n mod 100) div 10
u <- n mod 10
escreval ("Você vai receber:")
escreval (c, " notas de 100")
escreval (d, " notas de 10")
escreval (u, " moedas de 1")

Fimalgoritmo