Algoritmo "ClassificaçãodeIMC"

var

a: real
p: real
i: real

inicio

escreva ("Qual a altura? ")
leia(a)
escreva ("Qual o peso? ")
leia(p)
i <- (p / a) ^ 2
se i < 18.5 entao
   escreva("Baixo Peso - Risco de Desnutrição")
senao
     se (i < 24.9) e (i > 18.5) entao
        escreva("Peso Normal")
senao
     se (i > 24.9) e (i < 29.9) entao
        escreva("SobrePeso")
senao
     se (i < 34.9) e (i > 29.9) entao
        escreva("Obesidade Grau 1")
senao
     se (i < 39.9) e (i > 35.0) entao
        escreva("Obesidade Grau 2")
senao
     se i > 40.0 entao
        escreva("Obesidade Grau 3")
fimse
fimse
fimse
fimse
fimse
fimse

fimalgoritmo