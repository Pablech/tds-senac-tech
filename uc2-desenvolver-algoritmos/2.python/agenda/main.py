import funcoes
import mensagens

while True:
    mensagens.boas_vindas()
    mensagens.menu()
    opcao = input("\n >>> ")

    if opcao == '0':
        mensagens.tchau_tchau()
        break
    elif opcao == '1':
        funcoes.adiciona_contato()
    elif opcao == '2':
        funcoes.busca_contato()
    elif opcao == '3':
        funcoes.alterar_contato()
    elif opcao == '4':
        funcoes.apaga_contato()
    else:
        print('opcao incorreta')
    input()
