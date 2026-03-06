Algoritmo "ControleDeEstoque"


Var

n: inteiro
i: inteiro
s: inteiro
ma: inteiro

Inicio

ma <- 0
s <- 0
para i de 1 ate 30 faca
     s <- s + n
     escreval("Digite o quanto vendeu no", i, "º dia: ")
     leia(n)
     se n < 5 entao
        escreval ("Alerta de estoque baixo!!")
     senao
          se n > ma entao
             ma <- i
fimse
fimse
fimpara
escreva ("Foram vendidas ao total, ", s, " Itens do estoque")
escreval ("O dia que ouve mais vendas foi o ", ma, "° dia")

Fimalgoritmo