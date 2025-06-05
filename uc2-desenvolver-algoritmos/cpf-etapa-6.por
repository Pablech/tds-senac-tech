/*
Etapa 6: Validando Entrada

- Leia um CPF completo do usuário.
- Valide para que o CPF esteja nos formatos XXX.XXX.XXX-YY ou XXXXXXXXXYY.
*/
programa
{
  inclua biblioteca Texto
  inclua biblioteca Tipos
  funcao inicio()
  {
    cadeia cpf
    logico eh_valido = falso
    inteiro tamanho
    caracter letra

    escreva("digite o CPF : ")
    leia(cpf)

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

    se(eh_valido){
      escreva("CPF válido digitado : ", cpf)
    }
    senao{
      escreva("CPF inválido")
    }
  }
}
