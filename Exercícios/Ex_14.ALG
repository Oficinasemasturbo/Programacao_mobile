Algoritmo "Desconto em compra"

Var

n1: real
d: real

Inicio

escreva ("Qual o valor da compra? ")
leia(n1)
se n1 > 100 entao
   d <- 100 * 0.9
   escreva("O desconto de 10% foi aplicado, preço novo: ", d)
senao
     escreva("Sem desconto, o valor continua o mesmo")
fimse
Fimalgoritmo