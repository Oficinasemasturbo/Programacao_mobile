Algoritmo "SimulaçãoDeEmpréstimo"

Var

n: inteiro
v: real
t: inteiro
p: real
vf: inteiro
td: real
vj: real
sj: real
vjc: real
jp: real

Inicio

escreva("Qual o valor do empréstimo? ")
leia(v)
escreva (" Qual a taxa de juros mensal? ")
leia(t)
escreva ("Qual o número de parcelas? ")
leia(n)
td <- t / 100
p <- v / n
vj <- p * td
sj <- p + vj
vjc <- sj * n
jp <- vj * n
escreva ("O valor final com juros: ", vjc)
escreva (" O total de juros pago foi: ", jp)

Fimalgoritmo