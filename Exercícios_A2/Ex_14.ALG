Algoritmo "ControleDeEstoque"


Var

n: inteiro
c: inteiro
c2: inteiro
c3: inteiro
ma: inteiro
p: real
p2: real
p3: real

Inicio

c <- 0
c2 <- 0
c3 <- 0
escreva("Número dos candidatos: 22, 35 e 44")
escreval ("(Digite o número do candidato)")
escreval  ("Em qual você vota? ")
leia(n)
enquanto (n <> 0) faca
      se (n = 22) entao
         c <- c + 1
      senao
         se (n = 35) entao
            c2 <- c2 + 1
      senao
           se (n = 44) entao
              c3 <- c3 + 1
      fimse
      fimse
      fimse
      escreval("(Digite o número do candidato)")
      escreval ("Em qual você vota? ")
      leia(n)
fimenquanto
se c > c2 entao
   ma <- 22
senao
     se c < c2 entao
     ma <- 35
senao
     se c > c3 entao
     ma <- 22
senao
     se c < c3 entao
     ma <- 44
senao
     se c2 > c3 entao
     ma <- 35
senao
     se c2 < c3 entao
     ma <- 44
fimse
fimse
fimse
fimse
fimse
fimse
p <- (22 * 100) / c
p2 <- (35 * 100) / c2
p3 <- (44 * 100) / c3
escreval ("O vencedor da eleição é: ", ma)
escreval ("O total de votos do 1° candidato é: ", c)
escreval ("O total de votos do 2° candidato é: ", c2)
escreval ("O total de votos do 3° candidato é: ", c3)
escreval ("O percentual do 1° candidato é: ", p)
escreval ("O percentual do 2° candidato é: ", p2)
escreval ("O percentual do 3° candidato é: ", p3)

Fimalgoritmo