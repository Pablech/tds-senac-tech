Índice

1. [manipulando a lista](#manipulando-a-lista)
1. [métodos da lista](#métodos-da-lista)
    1. [list.append()](#listappend)
    1. [list.insert()](#listinsert)
    1. [list.remove()](#listremove)
    1. [list.pop()](#listpop)
1. [string e list](#string-e-list)
1. [exercícios lista](#exercícios-lista)

# `list`

Uma lista é uma coleção de itens ordenados e mutáveis. Isso significa que podemos adicionar, remover ou alterar os itens de uma lista após a sua criação. No Python, uma lista é representada por colchetes `[]` e os itens dentro dela são separados por vírgulas. O tipo lista é representado por `list`.

## manipulando a lista

A mainpulação da lista pode ser feita sem usar seus métodos. Veja abaixo algumas formas :

### criando uma lista

Você pode criar uma lista simplesmente colocando uma série de valores entre colchetes.

Veja alguns exemplos de criação de lista :

```python
# criando uma lista de números inteiros
numeros = [1, 2, 3, 4, 5]

# criando uma lista de floats
mais_numeros = [3.14, 2.77, 1.00001]

# criando uma lista de strings
planetas = ["Mercúrio", "Vênus", "Terra", "Marte"]

# criando uma lista mista
misto = [42, 3.14, 'uma string', False, "outra string"]

# criando uma lista com outra variáveis dentro
nome = "Arnold"
valor = 42
lista_mista = [42, nome, 'Schwarzenegger', True, "olá", valor]
```

### acessando itens da lista

Cada item de uma lista tem uma posição (ou índice). No Python, os índices começam em 0. Isso significa que o primeiro item tem índice 0, o segundo item tem índice 1, e assim por diante.

Veja abaixo como fica o acesso :

```python
print('Planeta no índice 0 :', planetas[0])  # saída : Mercúrio
print('Planeta no índice 2 :', planetas[2])  # saída : Terra
print('Número no índice 1 :', numeros[1])  # saída : 2
```

### modificando itens da lista

Como as listas são mutáveis, você pode alterar qualquer item da lista usando o índice:

```python
planetas[2] = 'Saturno'
print(planetas)  # saída : ['Mercúrio', 'Vênus', 'Saturno', 'Marte']
```

## métodos da lista

### `list.append()`

Adiciona um item ao **final** da lista.

```python
planetas.append("Plutão")
print(planetas)  # saída : ['Mercúrio', 'Vênus', 'Saturno', 'Marte', 'Plutão']
```

### `list.insert()`

Adiciona um item em uma posição específica.

```python
# insere a string "Júpiter" no índice 1 da lista
planetas.insert(1, "Júpiter")
print(planetas)  # saída : ['Mercúrio', 'Júpiter', 'Vênus', 'Saturno', 'Marte', 'Plutão']
```

Se for usado um índice maior que o tamanho da lista, então ele será adicionado ao final dela.

```python
planetas.insert(100, "Terra")
print(planetas)  # saída : ['Mercúrio', 'Júpiter', 'Vênus', 'Saturno', 'Marte', 'Plutão', 'Terra']
```

### `list.remove()`

Remove a primeira ocorrência de um item específico.

```python
planetas.remove("Plutão")
print(planetas)  # saída : ['Mercúrio', 'Júpiter', 'Vênus', 'Saturno', 'Marte', 'Terra']
```

Se o item removido não estiver na lista, então irá levantar um erro.

### `list.pop()`

Remove um item pela sua posição (índice) e retorna esse item. Se nenhum índice for fornecido, ele remove o último item.

```python
ultimo = planetas.pop()
print(ultimo)  # saída : "Terra"
print(planetas)  # saída : ['Mercúrio', 'Júpiter', 'Vênus', 'Saturno', 'Marte']

especifico = planetas.pop(2)
print(especifico)  # saída : "Vênus"
print(planetas)  # saída : ['Mercúrio', 'Júpiter', 'Saturno', 'Marte']
```

Se o índice passado não existir, então irá ocorrer um erro.

## string e list

Strings e listas tem algumas características em comum, como ambas serem compostas de mais de um item. Uma string é composta por um ou mais caracteres, tão somente. Enquanto que uma lista é composta por diferentes tipos.

Por conta disso, elas possuem alguns comportamentos em comum.

### juntando e multiplicando listas

Assim como nas strings, o operador `+` é usado para juntar (concatenar) duas listas e o operador `*` é usado para multiplicar o conteúdo de uma lista :

```python
lista1 = [1, 2, 3]
lista2 = [4, 5, 6]
junta = lista1 + lista2
print(junta)  # saída : [1, 2, 3, 4, 5, 6]

multiplica = lista1 * 2
print(multiplica)  # saída : [1, 2, 3, 1, 2, 3]
```

### fatiamento

O fatiamento das listas funcionam exatamente como o fatiamento das strings :

```python
print(planetas[::2])  # saída : ['Mercúrio', 'Terra']
print(planetas[1:])  # saída : ['Vênus', 'Terra', 'Marte']
print(planetas[2:4])  # saída : ['Terra', 'Marte']
print(planetas[:3])  # saída : ['Mercúrio', 'Vênus', 'Terra']
```

## cast de listas

Assim como os outros tipos vistos até agora, o tipo lista também possui uma função capaz de converter outros tipos para lista, embora haja algumas particularidades. Para converter, usa-se a função `list()`.

### `list()`
A função `list()` é o principal built-in usado para converter (ou "castar") outros tipos de dados em listas. Ela aceita qualquer **iterável** como argumento e retorna uma nova lista contendo os elementos desse iterável.

Quando você converte uma string em uma lista, cada caractere da string se torna um elemento separado na lista.

```python
sobrenome = 'Schwarzenegger'
lista = list(sobrenome)
print(lista)  # saída : ['S', 'c', 'h', 'w', 'a', 'r', 'z', 'e', 'n', 'e', 'g', 'g', 'e', 'r']
```

Como os tipos `int`, `float`, `bool` não são iteráveis, não é possível converter para uma lista um objeto sozinho desses tipos.

## exercícios lista

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios Simples
    1. Crie uma lista com três números inteiros e exiba o primeiro elemento.
    1. Crie uma lista com três strings e exiba o último elemento.
    1. Crie uma lista com cinco números decimais e exiba o terceiro elemento.
    1. Crie uma lista com quatro valores booleanos e exiba o segundo elemento.
    1. Crie uma lista com três strings e altere o primeiro elemento para "Python".
1. Exercícios Simples com if-elif-else
    1. Crie uma lista com três números inteiros. Se o primeiro elemento for maior que 10, altere o segundo elemento para 20. Caso contrário, altere o segundo elemento para 5.
    1. Crie uma lista com três strings. Se a lista contiver a string "Python", exiba "Encontrado". Caso contrário, exiba "Não encontrado".
    1. Crie uma lista com cinco números decimais. Se o terceiro elemento for maior que 2.5, altere o último elemento para 0. Caso contrário, altere o primeiro elemento para 1.
    1. Crie uma lista com quatro valores booleanos. Se o primeiro elemento for True, altere o segundo elemento para False. Caso contrário, altere o terceiro elemento para True.
    1. Crie uma lista com três strings. Se a lista não contiver a string "Hello", adicione "Hello" no final da lista. Caso contrário, remova o último elemento.
1. Exercícios Intermediários
    1. Crie uma lista com seis números inteiros e exiba a quantidade de elementos na lista.
    1. Crie uma lista com cinco strings e exiba a string no índice 2.
    1. Crie uma lista com sete números decimais e insira o número 3.14 no índice 4.
    1. Crie uma lista com quatro valores booleanos e remova o terceiro elemento.
    1. Crie uma lista com três números inteiros e adicione o número 7 no final da lista.
1. Exercícios Intermediários com if-elif-else
    1. Crie uma lista com seis números inteiros. Se o comprimento da lista for maior que 5, exiba o primeiro e o último elemento. Caso contrário, exiba "Lista pequena".
    1. Crie uma lista com cinco strings. Se a lista contiver a string "Python", altere o último elemento para "Coding". Caso contrário, adicione "Learning" no final da lista.
    1. Crie uma lista com sete números decimais. Se o quarto elemento for maior que 1.5, remova o primeiro elemento. Caso contrário, insira o número 0 no início da lista.
    1. Crie uma lista com quatro valores booleanos. Se a lista contiver o valor True, exiba "True encontrado". Caso contrário, exiba "Nenhum True".
    1. Crie uma lista com três números inteiros. Se a soma dos elementos for maior que 20, adicione o número 5 no final da lista. Caso contrário, remova o último elemento.
1. Exercícios Avançados
    1. Crie uma lista com cinco números inteiros e troque o primeiro e o último elemento de lugar.
    1. Crie uma lista com quatro strings e adicione uma nova string na segunda posição.
    1. Crie uma lista com seis números decimais e remova o número no índice 3.
    1. Crie uma lista com três valores booleanos e adicione o valor True no início da lista.
    1. Crie uma lista com cinco números inteiros e insira o número 10 na penúltima posição.
1. Exercícios Avançados com if-elif-else
    1. Crie uma lista com cinco números inteiros. Se a lista contiver o número 5, remova-o. Caso contrário, adicione o número 5 no final da lista.
    1. Crie uma lista com quatro strings. Se o segundo elemento for "Python", altere o terceiro elemento para "Programação". Caso contrário, insira "Estudo" na terceira posição.
    1. Crie uma lista com seis números decimais. Se a soma dos elementos for maior que 10, remova o último elemento. Caso contrário, adicione o número 1.1 no início da lista.
    1. Crie uma lista com três valores booleanos. Se a lista contiver dois valores True, altere o último elemento para False. Caso contrário, adicione True no final da lista.
    1. Crie uma lista com quatro números inteiros. Se o comprimento da lista for igual a 4, exiba o segundo e o terceiro elemento. Caso contrário, exiba "Lista incorreta".
1. Exercícios Complexos
    1. Crie uma lista com cinco números inteiros e substitua todos os números pares por zero.
        ```python
        num_inteiros = list(range(5, 100))
        contador = 0

        print("lista antes :", num_inteiros)

        while contador < len(num_inteiros):
            if num_inteiros[contador] % 2 == 0:
                num_inteiros[contador] = 0
            contador += 1

        print("lista depois :", num_inteiros)
        print('fim do programa')
        ```
    1. Crie uma lista com quatro strings e converta todas as strings para maiúsculas.
    1. Crie uma lista com seis números decimais e insira o número 2.5 após cada número maior que 2.
    1. Crie uma lista com três valores booleanos e adicione um valor booleano alternado após cada elemento.
    1. Crie uma lista com cinco números inteiros e remova todos os números ímpares.
        ```python
        num_inteiros = list(range(0, 10))
        contador = 0
        num_pares = []

        while contador < len(num_inteiros):
            if num_inteiros[contador] % 2 == 0:
                num_pares = num_pares + [num_inteiros[contador]]
            print("numeros pares soh :", num_pares)
            print("num_inteiros[contador] :", num_inteiros[contador])
            contador += 1

        print("fim do programa")
        print("numeros pares soh :", num_pares)
        ```
1. Exercícios Complexos com if-elif-else
    1. Crie uma lista com cinco números inteiros. Se todos os números forem positivos, substitua o último número por -1. Caso contrário, adicione -1 no final da lista.
    1. Crie uma lista com quatro strings. Se a lista contiver a string "Python", altere todas as strings para "Code". Caso contrário, adicione "Python" no final da lista.
    1. Crie uma lista com seis números decimais. Se a média dos números for maior que 3, remova o primeiro e o último elemento. Caso contrário, adicione 0.5 no início e no final da lista.
    1. Crie uma lista com três valores booleanos. Se a lista contiver dois valores False, altere o primeiro elemento para True. Caso contrário, insira False no início da lista.
    1. Crie uma lista com quatro números inteiros. Se a soma dos elementos for maior que 15, remova o número no índice 2. Caso contrário, insira o número 7 na posição 1.
1. Exercícios Muito Complexos
    1. Crie uma lista com cinco números inteiros e inverta a ordem dos elementos.
    1. Crie uma lista com quatro strings e remova todas as strings que contêm a letra "a".
    1. Crie uma lista com seis números decimais e insira um número aleatório após cada elemento.
    1. Crie uma lista com três valores booleanos e remova todos os valores False.
    1. Crie uma lista com cinco números inteiros e substitua cada elemento pelo seu quadrado.
1. Exercícios Muito Complexos com if-elif-else
    1. Crie uma lista com cinco números inteiros. Se a lista contiver números negativos, remova todos eles. Caso contrário, adicione -1 no início e no final da lista.
    1. Crie uma lista com quatro strings. Se a lista tiver mais de uma string com a letra "e", remova todas essas strings. Caso contrário, adicione "No e" no final da lista.
    1. Crie uma lista com seis números decimais. Se a soma dos números for menor que 10, insira o número 5.5 no meio da lista. Caso contrário, remova o número no meio da lista.
    1. Crie uma lista com três valores booleanos. Se todos os valores forem True, altere o segundo elemento para False. Caso contrário, adicione True no final da lista.
    1. Crie uma lista com quatro números inteiros. Se a soma dos elementos for maior que 20, remova todos os números pares. Caso contrário, adicione 2 após cada número ímpar.

</details>
