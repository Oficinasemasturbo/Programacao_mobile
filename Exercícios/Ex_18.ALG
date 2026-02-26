Algoritmo "EmprestimoBancario"

var

s, vp, v: real

inicio

escreval("Qual o seu salario? ")
leia(s)
escreval("Qual o valor da parcela? ")
leia(vp)
v <- s * 0.3
se vp <= v entao
   escreval("Aprovado")
senao
   escreval("Negado")
fimse

fimalgoritmo