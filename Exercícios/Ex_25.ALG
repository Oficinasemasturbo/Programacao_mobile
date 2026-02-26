Algoritmo "MaioreMenorValor"

var

n, ma, me: real
i: inteiro

inicio

para i de 1 ate 10 faca
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

fimalgoritmo