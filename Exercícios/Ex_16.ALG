Algoritmo "Triângulo Válido"

Var

n1: real
n2: real
n3: real
s: real

Inicio

escreva ("Qual o valor do primeiro lado? ")
leia(n1)
escreva ("Qual o valor do segundo lado? ")
leia(n2)
escreva ("Qual o valor do terceiro lado? ")
leia(n3)
s <- n1 + n2
se s > n3 entao
   escreva("É um triângulo")
senao
     escreva("Não forma um triângulo")
fimse
Fimalgoritmo