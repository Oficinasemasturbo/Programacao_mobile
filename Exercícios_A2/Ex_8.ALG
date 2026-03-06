Algoritmo "ControleDeVendas"

Var

n: real
b: real
tb: real
mv: real
i: inteiro

Inicio

tb <- 0
mv <- 0
para i de 1 ate 10 faca
      escreva("Qual o valor da venda? ")
      leia(n)
      se (n >= 5000) entao
         b <- n * 0.10
      senao
         b <- n * 0.05
fimse
      tb <- tb + b
      se (n > mv) entao
         mv <- n
fimse
fimpara
escreva("Total pago em bônus: ", tb)
escreva(" Maior venda realizada: ", mv)

Fimalgoritmo