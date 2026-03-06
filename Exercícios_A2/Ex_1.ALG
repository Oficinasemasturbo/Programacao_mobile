Algoritmo "SomaDosPares"



Var

n: inteiro
i: inteiro
s: inteiro
im: inteiro

Inicio

s <- 0
para i de 1 ate 20 faca
     escreva("Digite o ", i, "º número: ")
     leia(n)
     se n mod 2 = 0 entao
        s <- s + n
     senao
          im <- im + 1
fimse
fimpara
escreva("Quantidade de números ímpares digitados: ", im)
escreva(" Soma total dos Pares: ", s)

Fimalgoritmo