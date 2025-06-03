/*
Etapa 4
- Ler apenas valores maiores que zero.
- Exibir o CPF formatado a partir dos valores lidos.
*/
programa
{
  funcao inicio()
  {
    inteiro cpf1, cpf2, cpf3, cpf4
    faca{
      escreva("digite a primeira parte do CPF : ")
      leia(cpf1)
    }enquanto(cpf1 < 1)

    faca{
      escreva("digite a segunda parte do CPF : ")
      leia(cpf2)
    }enquanto(cpf2 < 1)

    faca{
      escreva("digite a terceira parte do CPF : ")
      leia(cpf3)
    }enquanto(cpf3 < 1)

    faca{
      escreva("digite a ultima parte do CPF : ")
      leia(cpf4)
    }enquanto(cpf4 < 1)

    escreva(cpf1,".",cpf2,".",cpf3,"-",cpf4)
  }
}

