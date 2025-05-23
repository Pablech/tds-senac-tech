Índice

1. [características](#características)
1. [criando dicionários](#criando-dicionários)
1. [adicionando itens ao dicionário](#adicionando-itens-ao-dicionário)
1. [métodos](#métodos)
    1. [dict.keys()](#dictkeys)
    1. [dict.values()](#dictvalues)
    1. [dict.items()](#dictitems)
1. [exercícios](#exercícios)

# tipo dicionário

Um dicionário em Python é uma estrutura de dados que armazena pares de chave-valor, onde cada chave é única e mapeia para um valor. Essa estrutura é semelhante a um mapa ou tabela de associação, onde a chave atua como um identificador que permite acessar seu valor correspondente de forma rápida e eficiente.

## características

1. **pares chave-valor** : cada elemento em um dicionário é composto por uma chave e um valor associados. Por exemplo, em `{'nome': 'João', 'idade': 25}`, `'nome'` e `'idade'` são chaves, enquanto `'João'` e `25` são os valores associados a essas chaves;

2. **chaves únicas** : as chaves em um dicionário devem ser únicas. Se você tentar adicionar uma chave que já existe, o valor associado a essa chave será sobrescrito;

3. **ordem de inserção** : a partir do Python 3.7, os dicionários mantêm a ordem de inserção dos itens. Isso significa que ao iterar sobre um dicionário, os pares chave-valor aparecerão na ordem em que foram adicionados;

4. **mutabilidade** : os dicionários são mutáveis, ou seja, é possível adicionar, remover ou modificar pares chave-valor após a criação do dicionário;

5. **tipagem mista** : tanto as chaves quanto os valores em um dicionário podem ser de qualquer tipo de dado, desde que as chaves sejam de um tipo imutável (como strings, números ou tuplas). Os valores podem ser de qualquer tipo, incluindo listas, outros dicionários ou até mesmo funções;

## criando dicionários

### criação de um dicionário simples
```python
# criando um dicionário simples
aluno = {
    'nome': 'Maria',
    'idade': 22,
    'curso': 'Engenharia'
}

# acessando valores através das chaves
print(aluno['nome'])   # saída : Maria
print(aluno['idade'])  # saída : 22
```

- **chaves** : no exemplo acima, `'nome'`, `'idade'` e `'curso'` são as chaves. Elas são usadas para identificar cada valor armazenado no dicionário;
- **valores** : `'Maria'`, `22` e `'Engenharia'` são os valores correspondentes às chaves;

### chaves de diferentes tipos
```python
# dicionário com chaves de diferentes tipos
informacoes = {
    'nome': 'Carlos',
    1: [2, 4, 8],
    (3, 4): 'tupla como chave'
}

print(informacoes['nome'])   # saída : Carlos
print(informacoes[1])        # saída : [2, 4, 8]
print(informacoes[(3, 4)])   # saída : tupla como chave
```

Neste exemplo:
- A chave `'nome'` é uma string;
- A chave `1` é um número inteiro;
- A chave `(3, 4)` é uma tupla;

### sobrescrita de valores
```python
# dicionário simples
dados = {
    'cidade': 'São Paulo',
    'populacao': 12000000
}

# sobrescrevendo o valor associado à chave 'populacao'
dados['populacao'] = 12300000

print(dados['populacao'])  # saída : 12300000
```

Neste caso, o valor associado à chave `'populacao'` foi atualizado de `12000000` para `12300000`.

## adicionando itens ao dicionário

Adicionar itens a um dicionário em Python é um processo simples e pode ser feito de várias maneiras.

### utilizando a notação de colchetes

A maneira mais comum de adicionar um item a um dicionário é utilizando a notação de colchetes. Uma nova chave é especificada entre colchetes e atribuida a ela um valor. Se a chave já existir, o valor associado a essa chave será atualizado; se a chave não existir, um novo par chave-valor será adicionado ao dicionário.

```python
# dicionário inicial
dados = {
    'nome': 'Ana',
    'idade': 30
}

# adicionando um novo item
dados['cidade'] = 'Rio de Janeiro'

print(dados)
# saída: {'nome': 'Ana', 'idade': 30, 'cidade': 'Rio de Janeiro'}
```

Neste exemplo:
- Adicionamos a chave `'cidade'` com o valor `'Rio de Janeiro'` ao dicionário `dados`.

### adicionando itens dentro de um loop

Também é possível adicionar itens a um dicionário dentro de um loop, o que é útil quando se está processando uma lista de dados ou precisa construir um dicionário dinamicamente.

```python
# lista de dados
nomes = ['João', 'Maria', 'José']
idades = [25, 22, 30]

# dicionário inicial vazio
dados = {}

# populando o dicionário dentro de um loop
for i in range(len(nomes)):
    dados[nomes[i]] = idades[i]

print(dados)
# Saída: {'João': 25, 'Maria': 22, 'José': 30}
```

Neste exemplo:
- Usamos um loop para adicionar os nomes como chaves e as idades como valores ao dicionário `dados`.

### adicionar itens usando compreensão de dicionários

A compreensão de dicionários é uma maneira concisa de criar e adicionar itens a um dicionário em uma única linha de código, especialmente quando se está transformando ou filtrando dados.

```python
# Lista de dados
nomes = ['Ana', 'Bruno', 'Clara']
idades = [23, 31, 29]

# Usando compreensão de dicionários
dados = {nomes[i]: idades[i] for i in range(len(nomes))}

print(dados)
# Saída: {'Ana': 23, 'Bruno': 31, 'Clara': 29}
```

Neste exemplo:
- Criamos o dicionário `dados` utilizando compreensão de dicionários, onde as chaves são os nomes e os valores são as idades.

## métodos

Os métodos `keys()`, `values()` e `items()` dos dicionários em Python são utilizados para acessar diferentes partes do dicionário de forma organizada e eficiente. Esses métodos são muito úteis quando se precisa iterar sobre as chaves, valores ou pares chave-valor de um dicionário.

### `dict.keys()`

O método `keys()` retorna uma visão (`view`) das chaves do dicionário. Essa visão é um objeto especial que reflete as chaves atuais do dicionário e pode ser usada para iterar sobre elas. Se o dicionário for modificado (por exemplo, se novas chaves forem adicionadas ou removidas), a visão retornada por `keys()` será automaticamente atualizada.

```python
# dicionário exemplo
dados = {
    'nome': 'Alice',
    'idade': 27,
    'cidade': 'Brasília'
}

# usando keys() para obter as chaves
chaves = dados.keys()

print(chaves)
# Saída: dict_keys(['nome', 'idade', 'cidade'])

# iterando sobre as chaves
for chave in chaves:
    print(chave)
# Saída:
# nome
# idade
# cidade
```

Neste exemplo:
- `keys()` retorna um objeto `dict_keys`, que é uma visão das chaves do dicionário.
- Podemos iterar sobre esse objeto para acessar cada chave.

### `dict.values()`

O método `values()` retorna uma visão dos valores contidos no dicionário. Assim como o `keys()`, a visão retornada por `values()` reflete qualquer modificação feita no dicionário, mantendo os valores atualizados.

```python
# dicionário exemplo
dados = {
    'nome': 'Roberto',
    'idade': 34,
    'cidade': 'Salvador'
}

# Usando values() para obter os valores
valores = dados.values()

print(valores)
# Saída: dict_values(['Roberto', 34, 'Salvador'])

# Iterando sobre os valores
for valor in valores:
    print(valor)
# Saída:
# Roberto
# 34
# Salvador
```

Neste exemplo:
- `values()` retorna um objeto `dict_values`, que é uma visão dos valores do dicionário.
- Podemos iterar sobre esse objeto para acessar cada valor armazenado no dicionário.

### `dict.items()`

O método `items()` retorna uma visão dos pares chave-valor do dicionário, onde cada item é representado por uma tupla. Essa tupla contém a chave como o primeiro elemento e o valor associado como o segundo. Assim como nos outros métodos, a visão retornada por `items()` é dinâmica e reflete qualquer modificação feita no dicionário.

```python
# dicionário exemplo
dados = {
    'nome': 'Lucas',
    'idade': 21,
    'cidade': 'Fortaleza'
}

# Usando items() para obter os pares chave-valor
pares = dados.items()

print(pares)
# Saída: dict_items([('nome', 'Lucas'), ('idade', 21), ('cidade', 'Fortaleza')])

# Iterando sobre os pares chave-valor
for chave, valor in pares:
    print(f'{chave}: {valor}')
# Saída:
# nome: Lucas
# idade: 21
# cidade: Fortaleza
```

Neste exemplo:
- `items()` retorna um objeto `dict_items`, que é uma visão dos pares chave-valor do dicionário.
- Podemos iterar sobre esse objeto, onde cada iteração nos dá uma tupla contendo a chave e seu valor associado.

### comparação entre os métodos

| Método     | O que retorna                      | Exemplo de Uso                              |
|------------|------------------------------------|---------------------------------------------|
| `keys()`   | Visão (`dict_keys`) das chaves     | Iterar sobre as chaves ou verificar sua existência |
| `values()` | Visão (`dict_values`) dos valores  | Iterar sobre os valores ou manipular diretamente os dados armazenados |
| `items()`  | Visão (`dict_items`) dos pares chave-valor | Iterar sobre pares chave-valor para operações que envolvem tanto a chave quanto o valor |

## execícios

<details>
<summary>Lista de Exercícios</summary>

1. Criação e Modificação de Dicionários
    1. **Crie um dicionário** chamado `produto` com as chaves `'nome'`, `'preco'` e `'quantidade'`, atribuindo valores de sua escolha a essas chaves.
    1. **Altere o valor** da chave `'preco'` do dicionário `produto` para um novo valor.
    1. **Adicione uma nova chave** `'categoria'` ao dicionário `produto`, com o valor `'eletrônico'`.
    1. **Remova a chave `'quantidade'`** do dicionário `produto`.
    1. **Crie um dicionário vazio** chamado `aluno` e adicione as chaves `'nome'`, `'idade'` e `'curso'` com valores apropriados.
    1. **Atualize o valor** da chave `'curso'` no dicionário `aluno` para `'Medicina'`.
    1. **Crie um dicionário** chamado `endereco` com as chaves `'rua'`, `'numero'` e `'cidade'`. Altere o valor da chave `'cidade'` para uma nova cidade.
    1. **Crie um dicionário** `carro` com as chaves `'marca'`, `'modelo'`, `'ano'`, e `'cor'`. Adicione a chave `'placa'` com um valor ao dicionário.
    1. **Altere o valor** da chave `'ano'` no dicionário `carro` para o ano atual.
    1. **Crie um dicionário** `pedido` com as chaves `'item'`, `'quantidade'` e `'preco_unitario'`. Adicione uma nova chave `'total'` que multiplica `'quantidade'` por `'preco_unitario'`.
1. Compreensão de Dicionários
    1. **Crie um dicionário** usando compreensão onde as chaves são números de 1 a 5 e os valores são os quadrados desses números.
    1. **Crie um dicionário** usando compreensão onde as chaves são letras de `'a'` a `'e'` e os valores são essas letras em maiúsculo.
    1. **Crie um dicionário** usando compreensão onde as chaves são os primeiros 5 números ímpares e os valores são os cubos desses números.
    1. **Crie um dicionário** usando compreensão onde as chaves são os números de 1 a 10 e os valores são `'par'` ou `'ímpar'`, dependendo do número.
    1. **Crie um dicionário** usando compreensão onde as chaves são os números de 1 a 5 e os valores são strings que descrevem se o número é `'pequeno'`, `'médio'` ou `'grande'` (1-2, 3, 4-5).
    1. **Crie um dicionário** onde as chaves são os nomes de 5 frutas e os valores são os comprimentos desses nomes.
    1. **Crie um dicionário** usando compreensão onde as chaves são os números de 1 a 5 e os valores são as chaves multiplicadas por 10.
    1. **Crie um dicionário** com compreensão onde as chaves são as primeiras 5 letras do alfabeto e os valores são seus respectivos índices (a=1, b=2, etc.).
    1. **Crie um dicionário** onde as chaves são os nomes de 4 cidades e os valores são o número de letras em cada nome.
    1. **Crie um dicionário** onde as chaves são os números de 1 a 10 e os valores são `'positivo'` ou `'negativo'`, dependendo se o número é positivo ou negativo (considerando 1 a 5 como positivos).
1. Métodos `keys()`, `values()` e `items()`
    1. **Crie um dicionário** com três chaves: `'nome'`, `'idade'` e `'cidade'`. Use o método `keys()` para imprimir todas as chaves do dicionário.
    1. **Crie um dicionário** com três chaves: `'produto'`, `'preco'` e `'quantidade'`. Use o método `values()` para imprimir todos os valores do dicionário.
    1. **Crie um dicionário** com três chaves: `'pais'`, `'capital'`, `'populacao'`. Use o método `items()` para imprimir todos os pares chave-valor.
    1. **Crie um dicionário** com cinco pares chave-valor. Use um loop para iterar sobre as chaves do dicionário usando o método `keys()`.
    1. **Crie um dicionário** com cinco pares chave-valor. Use um loop para iterar sobre os valores do dicionário usando o método `values()`.
    1. **Crie um dicionário** com cinco pares chave-valor. Use um loop para iterar sobre os pares chave-valor do dicionário usando o método `items()`.
    1. **Crie um dicionário** com três pares chave-valor. Adicione uma nova chave ao dicionário e observe como o método `keys()` reflete essa alteração.
    1. **Crie um dicionário** com três pares chave-valor. Altere o valor de uma das chaves e observe como o método `values()` reflete essa alteração.
    1. **Crie um dicionário** com três pares chave-valor. Remova uma chave do dicionário e observe como o método `items()` reflete essa alteração.
    1. **Crie um dicionário** com chaves de diferentes tipos (string, número, tupla). Use o método `keys()` para listar as chaves e comente sobre os tipos de dados das chaves.
1. Operações Combinadas
    1. **Crie um dicionário** com três pares chave-valor. Adicione uma nova chave e depois use `items()` para verificar o novo par.
    1. **Crie um dicionário** com cinco pares chave-valor. Use `keys()` para obter as chaves e adicione um novo par chave-valor ao dicionário. Imprima as chaves novamente para verificar a alteração.
    1. **Crie um dicionário** que associa nomes de alunos a suas notas. Adicione uma nova nota para um aluno existente e use `items()` para verificar a alteração.
    1. **Crie um dicionário** com os nomes de três cidades como chaves e suas populações como valores. Use `values()` para calcular a população total.
    1. **Crie um dicionário** com três pares chave-valor. Altere um valor existente e adicione um novo par. Verifique as mudanças usando `items()`.
    1. **Crie um dicionário** com três chaves. Use `keys()` para iterar e alterar os valores associados a essas chaves.
    1. **Crie um dicionário** usando compreensão de dicionários. Use `values()` para verificar os valores gerados.
    1. **Crie um dicionário** onde as chaves são os nomes de alunos e os valores são suas idades. Use `keys()` para imprimir todos os nomes e depois adicione um novo aluno.
    1. **Crie um dicionário** que associa produtos a seus preços. Aumente o preço de cada produto em 10% usando `items()` e um loop.
    1. **Crie um dicionário** onde as chaves são países e os valores são suas capitais. Use `items()` para iterar e imprimir cada país e sua capital no formato "A capital de X é Y".

</details>
