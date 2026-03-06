Algoritmo "MaiorEMenorComCondição"



Var

n: inteiro
i: inteiro
ma: inteiro
me: inteiro

Inicio

para i de 1 ate 15 faca
     escreva("Digite o ", i, "º número: ")
     leia(n)
      se i = 1 entao
         ma <- n
         me <- n
      senao
         se n > ma entao
            ma <- n
         fimse

         se n < me entao
            me <- n
         fimse
      fimse
   fimpara

   escreval("Maior valor digitado: ", ma)
   escreval("Menor valor digitado: ", me)

Fimalgoritmo