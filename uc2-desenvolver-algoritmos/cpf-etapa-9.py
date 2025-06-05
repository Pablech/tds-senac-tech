def valida_cpf(cpf):
    """ retorna um booleano informando se o CPF
    eh valido ou nao """
    if len(cpf) != 11 and len(cpf) != 14:
        print('CPF com tamanho incompativel')
        return False

    if len(cpf) == 11:
        try:
            int(cpf)
        except ValueError:
            print('o CPF so pode ter numeros')
            return False

    if len(cpf) == 14:
        # testa as posicoes dos pontos 3 e 7
        if '.' != cpf[3] or '.' != cpf[7] or '-' != cpf[11]:
            print('CPF em formato incorreto')
            return False

        # impede que letras sejam enviadas
        for caracter in cpf:
            if caracter in ['.', '-']:
                continue
            try:
                int(caracter)
            except ValueError:
                print('o CPF nao pode ter letras')
                return False

    return True

def encontra_pdv(cpf):
    soma = 0
    mult = 10
    for num in cpf:
        soma += int(num) * mult
        mult -= 1
        if mult == 1:
            break

    resto = soma % 11

    if resto < 2:
        return 0
    else:
        return 11 - resto

def encontra_sdv(cpf, pdv):
    soma = 0
    mult = 11
    i = 0

    while mult > 2:
        soma += int(cpf[i]) * mult
        mult -= 1
        i += 1
    # realiza o calculo o digito verificador encontado
    # anteriormente
    soma += pdv * mult

    resto = soma % 11
    return 0 if resto < 2 else 11 - resto

def encontra_digito(cpf, mult, pdv=None):
    soma = 0
    for num in cpf:
        soma += int(num) * mult
        mult -= 1
        if mult == 2 and pdv is not None:
            break
        if mult == 1:
            break
    if pdv:
        soma += pdv * 2

    resto = soma % 11
    return 0 if resto < 2 else 11 - resto

def compara_tudo(cpf, pdv, sdv):
    print(f"O Primeiro Digito Verificador calculado eh : {pdv}")
    print(f"O Primeiro Digito Verificador digitado eh : {cpf[-2]}")

    print(f"O Segundo Digito Verificador calculado eh : {sdv}")
    print(f"O Segundo Digito Verificador digitado eh : {cpf[-1]}")

    if str(pdv) == cpf[-2]:
        print("Os Primeiros Digitos sao iguais!")
    else:
        print("Os Primeiros Digitos sao diferentes!")

    if str(sdv) == cpf[-1]:
        print("Os Segundos Digitos sao iguais!")
    else:
        print("Os Segundos Digitos sao diferentes!")

    if str(pdv) == cpf[-2] and str(sdv) == cpf[-1]:
        print("O CPF eh valido")
    else:
        print("o CPF eh invalido")

if __name__ == "__main__":
    # comeca pegando o CPF
    cpf = input("digite o CPF : ")

    if valida_cpf(cpf):
        print("CPF em formato valido")
        cpf_limpo = cpf.replace('.','')
        cpf_limpo = cpf_limpo.replace('-', '')

        pdv = encontra_pdv(cpf_limpo)
        sdv = encontra_sdv(cpf_limpo, pdv)
        pdv = encontra_digito(cpf, 10)
        sdv = encontra_digito(cpf, 11, pdv)

        print(f'O CPF digitado foi {cpf}.')
        compara_tudo(cpf_limpo, pdv, sdv)
