/*
Etapa 3
- Ler valores digitados para quatro variáveis inteiras.
- Exibir o CPF formatado a partir dos valores lidos.
*/
programa
{
  funcao inicio()
  {
    inteiro cpf1, cpf2, cpf3, cpf4
    escreva("digite a primeira parte do CPF : ")
    leia(cpf1)
    escreva("digite a segunda parte do CPF : ")
    leia(cpf2)
    escreva("digite a terceira parte do CPF : ")
    leia(cpf3)
    escreva("digite a ultima parte do CPF : ")
    leia(cpf4)
    escreva(cpf1,".",cpf2,".",cpf3,"-",cpf4)
  }
}


