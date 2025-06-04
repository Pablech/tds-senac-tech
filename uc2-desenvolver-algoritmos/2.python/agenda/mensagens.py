import funcoes as f

def boas_vindas():
    f.limpa()
    print("Bem-vindo à Agenda Eletrônica dos Anos 90")

def tchau_tchau():
    f.limpa()
    print('\n\n\tObrigado')

def menu():
    print('\n')
    print('\t1. Adicionar Contato')
    print('\t2. Buscar Contato')
    print('\t3. Alterar Contato')
    print('\t4. Apagar Contato')
    print('\t0. Sair')

def novo_contato():
    print('\n')
    print('\tAdicionando um novo contato\n')

def busca_contato():
    print('\n')
    print('\tBuscando um contato\n')
    print("Digite um nome para buscar")

def apaga_contato():
    print('\n')
    print('\tApagando um contato\n')
    print("Digite um nome para buscar")

def altera_contato():
    print('\n')
    print('\tAlterando um contato\n')
    print("Digite um nome para buscar")

if __name__ == '__main__':
    boas_vindas()
    menu()

