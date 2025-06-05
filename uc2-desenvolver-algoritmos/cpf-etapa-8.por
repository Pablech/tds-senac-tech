/*
Etapa 8: Dígito 2

- Receba um CPF válido do usuário (formatos suportados XXX.XXX.XXX-YY ou XXXXXXXXXYY).
- Se o formato não for válido, encerre o programa.
- Calcule o Primeiro Dígito Verificador conforme especificado.
- Calcule o Segundo Dígito Verificador conforme especificado.
- Ao final, mostre :
    - O CPF conforme foi digitado;
    - O Primeiro Dígito Verificador encontrado;
    - O Segundo Dígito Verificador encontrado;
    - O resultado da comparação do PDV encontrado com o PDV do CPF digitado;
    - O resultado da comparação do SDV encontrado com o SDV do CPF digitado;
    - Uma mensagem informando se o CPF é válido ou não;
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

  funcao inteiro encontra_pdv(cadeia cpf)
  {
    inteiro soma = 0
    inteiro numero = 0
    inteiro digito = 0
    inteiro resto = 0
    inteiro multiplicador = 0
    inteiro tamanho = Texto.numero_caracteres(cpf)
    caracter letra

    para(inteiro i = 0; i < tamanho - 2; i++)
    {
      multiplicador = 10 - i
      letra = Texto.obter_caracter(cpf, i)
      numero = Tipos.caracter_para_inteiro(letra)
      soma += numero * multiplicador
    }

    resto = soma % 11

    se(resto < 2){
      digito = 0
    }
    senao{
      digito = 11 - resto
    }

    retorne digito
  }

  funcao inteiro encontra_sdv(cadeia cpf, inteiro pdv)
  {
    inteiro soma = 0
    inteiro numero = 0
    inteiro digito = 0
    inteiro resto = 0
    inteiro multiplicador = 0
    inteiro tamanho = Texto.numero_caracteres(cpf)
    caracter letra

    para(inteiro i = 0; i < tamanho - 2; i++)
    {
      multiplicador = 11 - i
      letra = Texto.obter_caracter(cpf, i)
      numero = Tipos.caracter_para_inteiro(letra)
      soma += numero * multiplicador
    }
    soma += pdv * (multiplicador - 1)

    resto = soma % 11

    se(resto < 2){
      digito = 0
    }
    senao{
      digito = 11 - resto
    }

    retorne digito
  }

  funcao vazio compara_digitos(cadeia cpf, inteiro pdv_calc, inteiro sdv_calc)
  {
    inteiro tamanho = Texto.numero_caracteres(cpf)
    // índice do pdv no cpf
    caracter letra = Texto.obter_caracter(cpf, tamanho - 2)
    inteiro pdv_cpf = Tipos.caracter_para_inteiro(letra)
    // índice do sdv no cpf
    caracter letra = Texto.obter_caracter(cpf, tamanho - 1)
    inteiro sdv_cpf = Tipos.caracter_para_inteiro(letra)

    escreva("\no PDV digitado foi : ", pdv_cpf)
    escreva("\no PDV calculado foi : ", pdv_calc)

    escreva("\no SDV digitado foi : ", pdv_cpf)
    escreva("\no SDV calculado foi : ", pdv_calc, "\n")

    se(pdv_cpf == pdv_calc)
      escreva("\no PDV encontrado é igual ao calculado")
    senao
      escreva("\no PDV encontrado é diferente ao calculado")

    se(sdv_cpf == sdv_calc)
      escreva("\no SDV encontrado é igual ao calculado")
    senao
      escreva("\no SDV encontrado é diferente ao calculado")

    se(pdv_cpf == pdv_calc e sdv_cpf == sdv_calc)
    {
      escreva("\nO CPF é válido")
    }
    senao
    {
      escreva("\nO CPF é inválido")
    }
  }

  funcao inicio()
  {
    cadeia cpf
    cadeia cpf_limpo // cpf sem pontos e traço
    inteiro pdv // primeiro digito verificador
    inteiro sdv // segundo digito verificador

    escreva("digite o CPF : ")
    leia(cpf)

    // calcula o digito apenas se o CPF for válido
    se(valida_cpf(cpf)){
      cpf_limpo = limpa_cpf(cpf)
      pdv = encontra_pdv(cpf_limpo)
      sdv = encontra_sdv(cpf_limpo, pdv)

      escreva("\no CPF digitado foi : ", cpf, "\n")
      compara_digitos(cpf, pdv, sdv)
    }
    senao{
      escreva("CPF inválido")
    }
  }
}
