Algoritmo "ContagemPorIntervalo"



Var

n: inteiro
i: inteiro
l1: inteiro
l2: inteiro
l3: inteiro

Inicio

para i de 1 ate 30 faca
     escreva("Digite o ", i, "º número: ")
     leia(n)
      se (n = 0) ou (n <= 25) entao
         l1 <- n
      senao
         se (n <= 50) entao
            l2 <- n
         fimse

         se (n > 50) entao
            l3 <- n
         fimse
      fimse
   fimpara

escreval(l1, " Está entre 0 e 25")
escreval(l2, " Está entre 26 e 50")
escreval(l3, " É maior que 50")

Fimalgoritmo