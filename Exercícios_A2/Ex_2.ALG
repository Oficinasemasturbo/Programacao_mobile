Algoritmo "MédiaComValidação"



Var

n1, n2, n3, n4, n5: real
m: real

Inicio

escreva ("Qual a primeira nota? ")
leia(n1)
se (n1 < 0) ou (n1 > 10) entao
   escreva ("Qual a primeira nota? ")
        leia(n1)
fimse
enquanto (n1 < 0) ou (n1 > 10) faca
         escreva ("Qual a primeira nota? ")
        leia(n1)
fimenquanto
escreva ("Qual a segunda nota? ")
leia(n2)
se (n2 < 0) ou (n2 > 10) entao
         escreva ("Qual a segunda nota? ")
         leia(n2)
fimse
enquanto (n2 < 0) ou (n2 > 10) faca
         escreva ("Qual a segunda nota? ")
        leia(n2)
fimenquanto
escreva ("Qual a terceira nota? ")
leia(n3)
se (n3 < 0) ou (n3 > 10) entao
         escreva ("Qual a terceira nota? ")
         leia(n3)
fimse
enquanto (n3 < 0) ou (n3 > 10) faca
         escreva ("Qual a terceira nota? ")
        leia(n3)
fimenquanto
escreva ("Qual a quarta nota? ")
leia(n4)
se (n4 < 0) ou (n4 > 10) entao
         escreva ("Qual a quarta nota? ")
         leia(n4)
fimse
enquanto (n4 < 0) ou (n4 > 10) faca
         escreva ("Qual a quarta nota? ")
        leia(n4)
fimenquanto
escreva ("Qual a quinta nota? ")
leia(n5)
se (n5 < 0) ou (n5 > 10) entao
         escreva ("Qual a quinta nota? ")
         leia(n5)
fimse
enquanto (n5 < 0) ou (n5 > 10) faca
         escreva ("Qual a quinta nota? ")
        leia(n5)
fimenquanto
m <- (n1 + n2 + n3 + n4 + n5)/5
escreva ("A média é: ",m)

Fimalgoritmo