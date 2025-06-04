import json
import os
import mensagens as m

def limpa():
    os.system('clear')
    # para Windows
    # os.system('cls')

def adiciona_contato():
    limpa()
    m.novo_contato()
    contato = {}
    print("Digite o nome da pessoa", end="")
    contato['nome'] = input(" : ")
    print("Digite a idade da pessoa", end="")
    contato['idade'] = input(" : ")
    print("Digite o telefone da pessoa", end="")
    contato['telefone'] = input(" : ")
    print("Digite o e-mail da pessoa", end="")
    contato['email'] = input(" : ")

    contatos = carrega_contatos()
    contatos['contatos'].append(contato)

    salva_contatos(contatos)
    print("contato salvo")

def busca_contato():
    limpa()
    m.busca_contato()
    nome_consulta = input(" >>> ")

    contatos = carrega_contatos()
    for item in contatos['contatos']:
        if nome_consulta == item['nome']:
            print(f"{item = }")
            break
    else:
        print("contato nao encontrado")

def alterar_contato():
    limpa()
    m.altera_contato()
    nome_consulta = input(" >>> ")

    contatos = carrega_contatos()
    for indice, item in enumerate(contatos['contatos']):
        if nome_consulta == item['nome']:
            print(f'{item = }')
            novo_nome = input("digite o novo nome : ")
            novo_idade = input("digite a nova idade : ")
            novo_telefone = input("digite o novo telefone : ")
            novo_email = input("digite o novo e-mail : ")

            novo_dado = {'nome':novo_nome, 'idade':novo_idade,'telefone':novo_telefone,'email':novo_email}
            contatos['contatos'][indice] = novo_dado
            # contatos['contatos'].remove(item)
            salva_contatos(contatos)
            break
    else:
        print("contato nao encontrado")

def apaga_contato():
    limpa()
    m.apaga_contato()
    nome_consulta = input(" >>> ")

    contatos = carrega_contatos()
    for indice, item in enumerate(contatos['contatos']):
        if nome_consulta == item['nome']:
            print(f"{item = }")
            contatos['contatos'].pop(indice)
            # contatos['contatos'].remove(item)
            salva_contatos(contatos)
            break
    else:
        print("contato nao encontrado")

def carrega_contatos():
    try:
        with open('contatos.json', 'r', encoding='utf-8') as arq:
            contatos = json.load(arq)
    except FileNotFoundError as erro:
        contatos = {'contatos':[]}
    return contatos

def salva_contatos(contatos):
    with open('contatos.json', 'w') as arq:
        json.dump(contatos, arq, indent=2)

