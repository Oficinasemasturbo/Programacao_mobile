Algoritmo "Acesso ao Sistema"

Var

ur: caractere
s: inteiro

Inicio

escreva ("Qual o seu nível de Acesso? ")
leia(ur)
escreva ("Qual a Senha? ")
leia(s)
se (ur = "admin") e (s = 1234) entao
   escreva ("Acesso Permitido")
senao
     escreva ("Acesso Negado")
fimse

Fimalgoritmo