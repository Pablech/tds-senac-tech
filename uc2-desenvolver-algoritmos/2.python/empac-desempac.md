Índice

1. [empacotamento tuplas e listas](#empacotamento-tuplas-e-listas)
1. [empacotamento de dicionários](#empacotamento-de-dicionários)
1. [desempacotamento](#desempacotamento)
1. [exercícios](#exercícios)

# empacotamento e desempacotamento

## empacotamento tuplas e listas

Empacotamento de variáveis em Python refere-se ao processo de agrupar múltiplos valores em uma única estrutura de dados, como uma tupla ou lista. Isso é especialmente útil quando se deseja armazenar uma coleção de valores que pertencem a um mesmo contexto.

### tuplas

Por padrão, quando se agrupa vários valores separados por vírgulas, o Python automaticamente os empacota em uma tupla. Isso é conhecido como **empacotamento de tuplas**.

- exemplo 1 : empacotamento em uma tupla
```python
# empacotando valores em uma tupla
dados = 10, 20, 30

print(f'{dados = }')
# saída : dados = (10, 20, 30)

print(f'{type(dados) = }')
# saída : type(dados) = <class 'tuple'>
```

Neste exemplo, `dados` é uma tupla que contém os valores `10`, `20` e `30`. O Python automaticamente criou essa tupla ao identificar múltiplos valores separados por vírgulas.

- exemplo 2 : tupla com um único elemento
Se quiser criar uma tupla com apenas um elemento, é necessário incluir uma vírgula, pois, sem a vírgula, o Python não interpretará o valor como uma tupla.

```python
# empacotando um único valor em uma tupla
item = 42,
print(f'{item = }')
# saída : item = (42,)
print(f'{type(item)}')
# saída : <class 'tuple'>
```

Aqui, `item` é uma tupla contendo um único valor, `42`. Sem a vírgula, o Python trataria `42` apenas como um número inteiro.

### listas

Embora o empacotamento seja mais comumente associado a tuplas, também é possível empacotar valores em uma lista, mas isso requer a utilização de colchetes (`[]`).

- exemplo 3 : empacotamento em uma lista
```python
# empacotando valores em uma lista
dados_lista = [10, 20, 30]

print(f'{dados_lista = }')
# saída : dados_lista = [10, 20, 30]

print(f'{type(dados_lista) = }')
# saída : type(dados_lista) = <class 'list'>
```

Aqui, `dados_lista` é uma lista que contém os valores `10`, `20` e `30`.

### empacotamento implícito

O Python permite empacotar valores sem a necessidade de utilizar parênteses ou colchetes explicitamente.

- exemplo 4 : empacotamento implícito
```python
# empacotamento implícito em uma tupla
valores = 5, 'Python', True

print(f'{valores = }')
# saída : valores = (5, 'Python', True)
```

Neste caso, `valores` é uma tupla, mesmo que os parênteses não tenham sido explicitamente utilizados.

### considerações importantes

1. **imutabilidade das tuplas** : uma vez que os valores são empacotados em uma tupla, eles não podem ser modificados individualmente, pois tuplas são imutáveis. Se for necessário alterar os valores, é recomendável usar uma lista;

2. **heterogeneidade de dados** : tanto tuplas quanto listas permitem armazenar valores de diferentes tipos de dados. Isso significa que se pode empacotar inteiros, strings, booleanos, entre outros, em uma única estrutura;

- exemplo 5 : empacotando diferentes tipos de dados
```python
# empacotando diferentes tipos de dados
dados_mistos = 100, 'Cem', 99.9, False
print(f'{dados_mistos = }')
# saída : dados_mistos = (100, 'Cem', 99.9, False)
```

3. **utilização de empacotamento** : o empacotamento é muito útil em situações onde se deseja passar múltiplos valores como um único objeto. Isso pode facilitar a manipulação de dados em várias operações, como armazenar os resultados de uma função que retorna múltiplos valores.

## empacotamento dicionários

O empacotamento de dicionários em Python é um recurso poderoso que permite a criação dinâmica de dicionários a partir de uma combinação de chaves e valores, ou mesmo a fusão de vários dicionários em um único. Diferente do desempacotamento, que trata de extrair itens de um dicionário, o empacotamento se concentra em como agrupar dados em um dicionário.

### empacotamento explícito

O empacotamento mais comum é feito de maneira explícita, onde se define as chaves e valores diretamente :

```python
dados = {
    "nome": "Maria",
    "idade": 28,
    "cidade": "Porto Alegre"
}

print(dados)
# saída : {'nome': 'Maria', 'idade': 28, 'cidade': 'Porto Alegre'}
```

Aqui, foi criado um dicionário chamado `dados`, empacotando as chaves `"nome"`, `"idade"`, e `"cidade"` com seus respectivos valores `"Maria"`, `28`, e `"Porto Alegre"`.

### empacotamento com compreensão de dicionários

É possível empacotar dicionários de forma dinâmica usando compreensão de dicionários (similar à compreensão de listas) :

```python
nomes = ["Ana", "Bruno", "Carlos"]
idades = [25, 30, 22]

dados = {nome: idade for nome, idade in zip(nomes, idades)}

print(dados)
# saída : {'Ana': 25, 'Bruno': 30, 'Carlos': 22}
```

Utilizou-se a função `zip()` para combinar as listas `nomes` e `idades`. O dicionário `dados` é empacotado onde cada nome é uma chave e a idade correspondente é o valor.

## desempacotamento

Desempacotamento de variáveis é o processo de extrair valores de uma estrutura de dados, como uma tupla ou lista, e atribuí-los a variáveis individuais. Essa técnica é extremamente útil para manipular dados de forma clara e organizada, permitindo que os valores sejam extraídos de uma coleção e atribuídos diretamente às variáveis correspondentes.

### desempacotamento simples

O desempacotamento mais básico acontece quando uma tupla ou lista é "desempacotada" em múltiplas variáveis, onde cada valor é atribuído a uma variável específica.

- exemplo 1 : desempacotamento de uma tupla
```python
# empacotando uma tupla
dados = (10, 20, 30)

# desempacotando uma tupla
a, b, c = dados

print(f'{a = }')
# saída : a = 10
print(f'{b = }')
# saída : b = 20
print(f'{c = }')
# saída : c = 30
```

Aqui, a tupla `dados` contém três valores. O desempacotamento ocorre quando esses valores são atribuídos diretamente às variáveis `a`, `b` e `c`.

- exemplo 2 : desempacotamento de uma lista
```python
# empacotando uma lista
dados_lista = [40, 50, 60]

# desempacotando uma lista
x, y, z = dados_lista

print(f'{x = }')
# saída : x = 40
print(f'{y = }')
# saída : y = 50
print(f'{z = }')
# saída : z = 60
```

No caso acima, a lista `dados_lista` é desempacotada em três variáveis `x`, `y` e `z`.

### desempacotamento com empacotamento de resto

O Python permite que se desempacote apenas parte de uma estrutura de dados, ou que se utilize a técnica de "empacotamento de resto" para capturar valores excedentes.

- exemplo 3 : desempacotamento parcial com "restante"
```python
# empacotando uma lista
valores = [1, 2, 3, 4, 5]

# desempacotando com valores restantes
a, b, *resto = valores

print(f'{a = }')
# saída : a = 1
print(f'{b = }')
# saída : b = 2
print(f'{resto = }')
# saída : resto = [3, 4, 5]
```

Neste exemplo, `a` recebe o primeiro valor da lista `valores`, `b` recebe o segundo, e o restante dos valores é empacotado na lista `resto` usando `*`.

- exemplo 4 : desempacotamento com valores ignorados
```python
# desempacotando e ignorando valores
dados = (100, 200, 300, 400)

_, _, c, d = dados

print(f'{c = }')
# saída : c = 300
print(f'{d = }')
# saída : d = 400
```

aqui, os dois primeiros valores da tupla `dados` são ignorados usando `_`, e os dois últimos valores são atribuídos a `c` e `d`.

### desempacotamento em estruturas aninhadas

também é possível desempacotar valores de estruturas de dados aninhadas, como tuplas dentro de tuplas ou listas dentro de listas.

- exemplo 5 : desempacotamento de tuplas aninhadas
```python
dados = (10, (20, 30))

# desempacotando tuplas aninhadas
a, (b, c) = dados

print(f'{a = }')
# saída : a = 10
print(f'{b = }')
# saída : b = 20
print(f'{c = }')
# saída : c = 30
```

Neste caso, a variável `a` recebe o valor `10`, enquanto `b` e `c` recebem os valores `20` e `30` da tupla interna.

- exemplo 6 : desempacotamento de listas aninhadas
```python
# desempacotando listas aninhadas
dados_lista = [100, [200, 300], 400]

x, (y, z), w = dados_lista

print(f'{x = }')
# saída : x = 100
print(f'{y = }')
# saída : y = 200
print(f'{z = }')
# saída : z = 300
print(f'{w = }')
# saída : w = 400
```

Aqui, a lista `dados_lista` é desempacotada em variáveis `x`, `y`, `z` e `w`, onde `y` e `z` recebem os valores da lista interna `[200, 300]`.

### considerações importantes

1. **correspondência de quantidade** : ao desempacotar, é importante que o número de variáveis corresponda ao número de elementos na estrutura, a menos que se esteja usando `*` para capturar valores restantes;

2. **flexibilidade de desempacotamento** : o desempacotamento oferece uma maneira flexível e expressiva de extrair valores de estruturas complexas, como listas ou tuplas aninhadas, permitindo que se acesse dados específicos de forma direta e concisa;

3. **uso do caractere `*`** : o caractere `*` é uma ferramenta poderosa para capturar múltiplos valores restantes em uma lista ou tupla, oferecendo flexibilidade ao lidar com dados de tamanho variável;

## exercícios

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios de Empacotamento
    1. Crie uma tupla com os números de 1 a 5 e mostre o resultado.
    1. Crie uma lista com os nomes de 3 cidades e mostre o resultado.
    1. Empacote os valores `10`, `20` e `30` em uma tupla e mostre a tupla resultante.
    1. Crie um dicionário empacotando as chaves "nome", "idade" e "cidade" com os valores "Ana", 25 e "São Paulo".
    1. Crie uma lista que empacote os números de 1 a 10 e mostre a lista resultante.
    1. Empacote os valores `True`, `False` e `None` em uma tupla e mostre a tupla.
    1. Crie uma lista que empacote três strings de cores (ex.: "vermelho", "azul", "verde") e mostre a lista resultante.
    1. Empacote os valores 3.14, 2.71 e 1.41 em uma tupla e mostre a tupla resultante.
    1. Crie um dicionário empacotando as chaves "produto", "preço" e "quantidade" com os valores "Notebook", 2500 e 5.
    1. Empacote três listas diferentes em uma lista maior e mostre o resultado.
1. Exercícios de Desempacotamento de Tuplas
    1. Desempacote a tupla `(1, 2, 3)` em três variáveis `a`, `b` e `c`, e mostre os valores de cada variável.
    1. Desempacote a tupla `("Python", "Java", "C++")` em três variáveis e mostre os valores de cada uma.
    1. Desempacote a tupla `(True, False, None)` em três variáveis e mostre os valores.
    1. Desempacote a tupla `("Alice", 30, "Engenheira")` em variáveis `nome`, `idade` e `profissao`, e mostre os valores.
    1. Dada a tupla `(10, 20, 30, 40, 50)`, desempacote o primeiro e o último valor em duas variáveis e mostre-os.
1. Exercícios de Desempacotamento de Listas
    1. Desempacote a lista `[5, 10, 15]` em três variáveis e mostre os valores de cada uma.
    1. Desempacote a lista `["Maçã", "Banana", "Laranja"]` em três variáveis e mostre os valores.
    1. Desempacote a lista `[1.1, 2.2, 3.3]` em três variáveis e mostre os valores.
    1. Dada a lista `[100, 200, 300, 400]`, desempacote o segundo e o terceiro valor em duas variáveis e mostre os valores.
    1. Desempacote a lista `[True, False]` em duas variáveis e mostre os valores.
1. Exercícios de Empacotamento e Desempacotamento Mistos
    1. Crie uma lista de tuplas, onde cada tupla empacota dois valores (ex.: `[("A", 1), ("B", 2)]`). Desempacote e mostre os valores de cada tupla.
    1. Dada uma lista `[(1, 2), (3, 4), (5, 6)]`, desempacote os pares de valores de cada tupla em variáveis `x` e `y` e mostre os resultados.
    1. Empacote três listas em uma tupla e depois desempacote cada lista em variáveis separadas.
    1. Crie um dicionário onde as chaves sejam strings e os valores sejam listas. Depois, desempacote uma das listas em variáveis separadas.
    1. Dada uma lista `[(10, 20), (30, 40), (50, 60)]`, desempacote os valores de cada tupla e mostre os resultados.
1. Exercícios com Dicionários
    1. Dado o dicionário `{"nome": "Carlos", "idade": 28, "cidade": "Rio"}`, desempacote os valores em variáveis separadas e mostre os resultados.
    1. Crie um dicionário onde as chaves sejam números e os valores sejam tuplas. Desempacote uma das tuplas em variáveis separadas.
    1. Dado o dicionário `{"a": 1, "b": 2, "c": 3}`, desempacote as chaves e valores em duas listas separadas.
    1. Empacote uma lista de tuplas em um dicionário onde a primeira posição da tupla é a chave e a segunda é o valor.
    1. Dado um dicionário `{"x": (10, 20), "y": (30, 40)}`, desempacote os valores das tuplas e mostre os resultados.

</details>
