/*
## Etapa 7

- [ ] Receba um CPF válido do usuário (formatos suportados XXX.XXX.XXX-YY ou XXXXXXXXXYY).
- [ ] Se o formato não for válido, encerre o programa.
- [ ] Calcule o Primeiro Dígito Verificador conforme especificado.
- Ao final, mostre :
    - [ ] O CPF conforme foi digitado;
    - [ ] O Primeiro Dígito Verificador encontrado;
    - [ ] O resultado da comparação do PDV encontrado com o PDV do CPF digitado;
*/
programa
{
  inclua biblioteca Texto
  inclua biblioteca Tipos

  funcao cadeia limpa_cpf(cadeia cpf)
  {
    cadeia cpf_limpo = ""
    inteiro tamanho = Texto.numero_caracteres(cpf)
    caracter letra

    para(inteiro i = 0; i < tamanho; i++)
    {
      letra = Texto.obter_caracter(cpf, i)

      // pula os pontos e traços
      se(letra == '.'){}
      senao se(letra == '-'){}
      // concatena apenas o número no CPF
      senao{
        cpf_limpo += letra
      }
    }
    retorne cpf_limpo
  }

  funcao logico valida_cpf(cadeia cpf)
  {
    logico eh_valido = falso
    inteiro tamanho
    caracter letra

    // testa o CPF no formato XXXXXXXXXYY e tamanho de 11 caracteres
    se(Texto.numero_caracteres(cpf) == 11 e Tipos.cadeia_e_inteiro(cpf, 10)){
      eh_valido = verdadeiro
    }
    // testa o CPF para o tamanho de 14 caracteres
    senao se(Texto.numero_caracteres(cpf) == 14)
    {
      eh_valido = verdadeiro
      tamanho = Texto.numero_caracteres(cpf)

      para(inteiro i = 0; i < tamanho; i++){
        letra = Texto.obter_caracter(cpf, i)

        // valida o ponto
        se(letra == '.' e (i == 3 ou i == 7)){}
        // valida o traço
        senao se(letra == '-' e i == 11){}
        // valida para número
        senao se(Tipos.caracter_e_inteiro(letra)){}
        // se qualquer situação acima der errado, então o CPF é inválido
        senao{
          eh_valido = falso
          pare
        }
      }
    }
    retorne eh_valido
  }

  funcao inteiro encontra_pdv(cpf)
  {
    inteiro soma = 0
    inteiro numero = 0
    inteiro multiplicador
    inteiro tamanho = Texto.numero_caracteres(cpf)

    para(inteiro i = 0; i < tamanho - 2; i++)
    {
      multiplicador = 10 - i

    }
  }

  funcao inicio()
  {
    cadeia cpf

    escreva("digite o CPF : ")
    leia(cpf)

    // calcula o digito apenas se o CPF for válido
    se(valida_cpf(cpf)){
      escreva(limpa_cpf(cpf))
    }
    senao{
      escreva("CPF inválido")
    }
  }
}

