Algoritmo "ValidaçãoDeSenha"

Var

n: inteiro
c: inteiro

Inicio

c <- 0
escreval ("Digite a senha: ")
leia(n)
enquanto n <> 1234 faca
   c <- c + 1
   escreval ("Senha Incorreta!!!!")
   escreval ("Escreva a senha: ")
   leia(n)
   se n = 1234 entao
      escreva ("Você tentou cerca de: ", c, " Vezes")
fimse
fimenquanto

Fimalgoritmo