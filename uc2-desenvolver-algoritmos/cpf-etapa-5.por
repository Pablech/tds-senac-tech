/*
Etapa 5
- Leia um CPF completo do usuário (XXX.XXX.XXX-YY).
- Separe os 9 números do CPF dos 2 Dígitos Verificadores em duas variáveis.
- Exiba as duas variáveis separadamente.
*/
programa
{
  inclua biblioteca Texto
  funcao inicio()
  {
    cadeia cpf, cpf_numeros = "", cpf_digitos = ""
    inteiro tamanho_cpf

    escreva("digite o CPF : ")
    leia(cpf)

    tamanho_cpf = Texto.numero_caracteres(cpf)

    // percorre o CPF até achar o traço
    para(inteiro i = 0; i < tamanho_cpf; i++){
      // interrompe o loop se achar o traço
      se(Texto.obter_caracter(cpf, i) == '-'){
        pare
      }
      cpf_numeros += Texto.obter_caracter(cpf, i)
    }

    // percorre o CPF de trás para frente até achar o traço
    para(inteiro i = tamanho_cpf - 1; i > -1; i--){
      // interrompe o loop se achar o traço
      se(Texto.obter_caracter(cpf, i) == '-'){
        pare
      }
      cpf_digitos = Texto.obter_caracter(cpf,i) + cpf_digitos
    }

    escreva("numeros do CPF : ",cpf_numeros)
    escreva("\ndígitos do CPF : ",cpf_digitos)
  }
}

