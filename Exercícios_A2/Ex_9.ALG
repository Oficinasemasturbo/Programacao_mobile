Algoritmo "VerificacaoDeNumeroPrimo"

Var

n: inteiro
i: inteiro
p: logico

Inicio

escreva("Qual o número? ")
leia(n)
se (n <= 1) entao
      escreva("Número inválido! Digite um número maior que 1.")
senao
     p <- verdadeiro
     i <- 2
enquanto (i <= n-1) e (p = verdadeiro) faca
         se (n mod i = 0) entao
            p <- falso
         fimse
         i <- i + 1
fimenquanto
      se (p = verdadeiro) entao
         escreva("O número é primo.")
      senao
         escreva("O número não é primo.")
fimse
fimse

Fimalgoritmo