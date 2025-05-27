Índice

1. [criando um set](#criando-um-set)
1. [métodos do set](#métodos-do-set)
    1. [set.union()](#setunion)
    1. [set.intersection()](#setintersection)
    1. [set.difference()](#setdifference)
    1. [set.symmetric_difference()](#setsymmetric_difference)
    1. [set.copy()](#setcopy)
    1. [set.issubset()](#setissubset)
    1. [set.issuperset()](#setissuperset)
    1. [set.isdisjoint()](#setisdisjoint)
    1. [set.add()](#setadd)
    1. [set.remove()](#setremove)
    1. [set.discard()](#setdiscard)
1. [cast](#cast)
    1. [convertendo tuplas em set](#1-convertendo-tuplas-em-set)
    1. [convertendo listas em set](#1-convertendo-listas-em-set)
    1. [convertendo strings em set](#1-convertendo-strings-em-set)
1. [exercícios](#exercícios)
1. [operadores do set](#operadores-do-set)
1. [exercícios com operadores](#exercícios-com-operadores)

# `set`

O tipo `set` no Python é uma coleção de elementos únicos e desordenados. Isso significa que ele não permite elementos duplicados e a ordem dos elementos não é garantida. Os `sets` são úteis quando se precisa garantir que uma coleção de itens não contenha duplicatas ou quando precisa realizar operações matemáticas de conjuntos, como união, interseção e diferença.

## criando um `set`
Para criar um `set`, é preciso utilizar as chaves `{}` ou a função `set()` :

```python
meu_set = {1, 2, 3, 4}
outro_set = set([4, 5, 6])
```

## métodos do `set`

Veja abaixo alguns métodos importantes do `set` :

### `set.union()`

O método `union()` retorna um novo `set` que contém todos os elementos presentes em ambos os conjuntos, sem duplicatas :

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

resultado = set1.union(set2)
print(resultado)
# saída : {1, 2, 3, 4, 5}
```

Aqui, o `union()` combina `set1` e `set2`, resultando em um novo `set` que contém todos os elementos dos dois conjuntos.

### `set.intersection()`

O método `intersection()` retorna um novo `set` contendo apenas os elementos que estão presentes em ambos os conjuntos :

```python
set1 = {1, 2, 3}
set2 = {2, 3, 4}

resultado = set1.intersection(set2)
print(resultado)
# saída : {2, 3}
```

No exemplo, `intersection()` retorna um `set` com os elementos comuns entre `set1` e `set2`.

### `set.difference()`

O método `difference()` retorna um novo `set` contendo os elementos que estão no primeiro conjunto, mas não no segundo :

```python
set1 = {1, 2, 3}
set2 = {2, 3, 4}

resultado = set1.difference(set2)
print(resultado)
# saída : {1}
```

Aqui, `difference()` retorna os elementos de `set1` que não estão em `set2`.

### `set.symmetric_difference()`

O método `symmetric_difference()` retorna um novo `set` contendo os elementos que estão no primeiro e no segundo conjunto, mas não são comuns entre eles :

```python
set1 = {1, 2, 3}
set2 = {2, 3, 4}

resultado = set1.symmetric_difference(set2)
print(resultado)
# saída : {1, 4}
```

Aqui, `symmetric_difference()` retorna os elementos de `set1` e `set2` que não são comuns entre eles.

### `set.add()`

O método `add()` adiciona um elemento ao `set`. Como `sets` não permitem duplicatas, se o elemento já estiver presente, nada acontece :

```python
meu_set = {1, 2, 3}
meu_set.add(4)
print(meu_set)
# saída : {1, 2, 3, 4}

meu_set.add(2)
print(meu_set)
# saída : {1, 2, 3, 4}
```

Neste exemplo, o número `4` é adicionado ao `set`, mas quando tentamos adicionar `2` novamente, o `set` permanece inalterado.

### `set.remove()`

O método `remove()` remove um elemento específico do `set`. Se o elemento não estiver presente, ele gera um erro (`KeyError`) :

```python
meu_set = {1, 2, 3}
meu_set.remove(2)
print(meu_set)
# saída : {1, 3}

meu_set.remove(5)
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# KeyError: 5
```

Aqui, `remove(2)` retira o `2` do `set`, mas tentar remover o `5`, que não está no `set`, resulta em um erro.

### `set.discard()`

O método `discard()` também remove um elemento do `set`, mas se o elemento não estiver presente, ele simplesmente não faz nada e não gera erro :

```python
meu_set = {1, 2, 3}
meu_set.discard(2)
print(meu_set)
# saída : {1, 3}

meu_set.discard(5)  # Não gera erro
print(meu_set)
# saída : {1, 3}
```

No exemplo acima, `discard(2)` remove o `2`, mas quando tentamos `discard(5)`, nada acontece, e o `set` permanece o mesmo.

### `set.copy()`

O método `copy()` cria uma cópia superficial do conjunto, retornando um novo conjunto que contém os mesmos elementos do original. A cópia é independente, ou seja, alterações no conjunto copiado não afetam o conjunto original, e vice-versa:

```python
set1 = {1, 2, 3}

copia = set1.copy()
print(copia)
# saída : {1, 2, 3}

set1.add(4)
print(set1)
# saída : {1, 2, 3, 4}
print(copia)
# saída : {1, 2, 3}
```

Aqui, `copy()` cria uma cópia de `set1` chamada `copia`. Quando `set1` é modificado com a adição do elemento `4`, a cópia (`copia`) permanece inalterada, demonstrando que são conjuntos distintos.

### `set.issubset()`

O método `issubset()` verifica se todos os elementos de um conjunto estão presentes em outro conjunto. Ele retorna `True` se o conjunto é um subconjunto do conjunto passado como argumento, caso contrário, retorna `False`:

```python
set1 = {1, 2, 3}
set2 = {1, 2, 3, 4, 5}

resultado = set1.issubset(set2)
print(resultado)
# saída : True
```

Aqui, `issubset()` retorna `True` porque todos os elementos de `set1` estão presentes em `set2`.

### `set.issuperset()`

O método `issuperset()` verifica se todos os elementos de outro conjunto estão presentes no conjunto. Ele retorna `True` se o conjunto contém todos os elementos do conjunto passado como argumento, caso contrário, retorna `False`:

```python
set1 = {1, 2, 3, 4, 5}
set2 = {1, 2, 3}

resultado = set1.issuperset(set2)
print(resultado)
# saída : True
```

Aqui, `issuperset()` retorna `True` porque `set1` contém todos os elementos de `set2`.

### `set.isdisjoint()`

O método `isdisjoint()` verifica se dois conjuntos não possuem nenhum elemento em comum. Ele retorna `True` se os conjuntos não compartilham nenhum elemento, caso contrário, retorna `False`:

```python
set1 = {1, 2, 3}
set2 = {4, 5, 6}

resultado = set1.isdisjoint(set2)
print(resultado)
# saída : True
```

Aqui, `isdisjoint()` retorna `True` porque `set1` e `set2` não têm elementos em comum.

## cast

O cast para `set` em Python significa converter outros tipos de coleções (como listas, tuplas e strings) em um `set`. Essa conversão é feita usando a função `set()`. A principal característica do `set` é que ele elimina quaisquer elementos duplicados, pois um `set` só pode conter elementos únicos.

### 1. convertendo tuplas em `set`

Tuplas são coleções ordenadas e imutáveis de elementos. Quando uma tupla é comvertida para um `set`, todos os elementos duplicados são removidos e a ordem dos elementos não é preservada.

```python
minha_tupla = (1, 2, 3, 4, 4, 5)
meu_set = set(minha_tupla)
print(meu_set)
# saída : {1, 2, 3, 4, 5}
```

Aqui, a tupla `(1, 2, 3, 4, 4, 5)` é convertida em um `set`, e os números duplicados são removidos.

### 2. convertendo listas em `set`

Listas são coleções ordenadas e mutáveis de elementos. Assim como com as tuplas, ao converter uma lista em um `set`, os elementos duplicados são eliminados e a ordem original pode ser perdida.

```python
minha_lista = [1, 2, 2, 3, 4, 5, 5]
meu_set = set(minha_lista)
print(meu_set)
# saída : {1, 2, 3, 4, 5}
```

Aqui, a lista `[1, 2, 2, 3, 4, 5, 5]` é convertida em um `set`, e os elementos duplicados são removidos.

### 3. convertendo strings em `set`

Strings são sequências de caracteres. Quando uma string é convertida em um `set`, cada caractere da string se torna um elemento do `set`, e os caracteres duplicados são removidos. Como em todos os `sets`, a ordem dos elementos pode mudar.

```python
minha_string = "banana"
meu_set = set(minha_string)
print(meu_set)
# saída : {'b', 'n', 'a'}
```

Aqui, a string `"banana"` é convertida em um `set`. Como o `set` elimina duplicatas, os caracteres repetidos `a` e `n` aparecem apenas uma vez.

### considerações finais

- **eliminação de duplicatas** : a conversão para `set` é útil quando é preciso remover duplicatas de uma coleção;
- **ordem não garantida** : diferente de listas e tuplas, a ordem dos elementos em um `set` não é preservada após a conversão;
- **imutabilidade das tuplas** : apesar de as tuplas serem imutáveis, quando convertidas em `set`, os elementos se tornam mutáveis no contexto do `set`;

## exercícios

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios de Criação e Conversão
    1. Crie um `set` vazio e adicione os números 1, 2 e 3.
    1. Converta a lista `[1, 2, 3, 4, 4, 5]` em um `set` e imprima o resultado.
    1. Dada a tupla `(5, 6, 7, 8, 8, 9)`, converta-a em um `set` e imprima o resultado.
    1. Converta a string `"programming"` em um `set` e imprima os caracteres únicos.
    1. Crie um `set` a partir da lista `[‘apple’, ‘banana’, ‘orange’, ‘apple’]` e imprima o resultado.
    1. Converta a tupla `(1, 1, 2, 2, 3, 3)` em um `set` e imprima o resultado.
    1. Dada a string `"abracadabra"`, converta-a em um `set` e imprima os caracteres únicos.
    1. Crie um `set` com os elementos da lista `[10, 20, 30, 40, 50, 50, 60]`.
    1. Converta a string `"hello world"` em um `set` e imprima os caracteres únicos.
    1. Crie um `set` a partir da tupla `(100, 200, 200, 300, 400)` e imprima o resultado.
1. Exercícios com Métodos Básicos
    1. Adicione o número `7` ao `set` `{1, 2, 3}` e imprima o resultado.
    1. Remova o número `2` do `set` `{1, 2, 3}` e imprima o resultado.
    1. Tente remover o número `4` do `set` `{1, 2, 3}` usando `remove()`. O que acontece?
    1. Tente remover o número `4` do `set` `{1, 2, 3}` usando `discard()`. O que acontece?
    1. Adicione os elementos `8, 9, 10` ao `set` `{4, 5, 6, 7}` e imprima o resultado.
    1. Remova todos os elementos de um `set` usando `clear()`.
    1. Verifique se o número `5` está presente no `set` `{1, 2, 3, 4, 5}`.
    1. Crie um `set` e adicione a string `"Python"` como um único elemento.
    1. Remova o último elemento do `set` `{10, 20, 30, 40, 50}` (use `pop()`) e imprima o resultado.
    1. Verifique se o caractere `"a"` está presente no `set` criado a partir da string `"alphabet"`.
1. Exercícios com Operações de Conjunto
    1. Crie dois `sets`, `A = {1, 2, 3}` e `B = {3, 4, 5}`, e calcule a união usando `union()`.
    1. Calcule a interseção dos `sets` `{10, 20, 30}` e `{20, 30, 40}`.
    1. Encontre a diferença entre os `sets` `{100, 200, 300}` e `{200, 300, 400}`.
    1. Crie dois `sets`, `A = {‘apple’, ‘banana’}` e `B = {‘banana’, ‘cherry’}`, e calcule a união.
    1. Encontre a interseção entre os `sets` `{‘a’, ‘b’, ‘c’}` e `{‘b’, ‘c’, ‘d’}`.
    1. Calcule a diferença entre os `sets` `{‘red’, ‘blue’, ‘green’}` e `{‘blue’, ‘yellow’}`.
    1. Crie dois `sets`, `A = {2, 4, 6, 8}` e `B = {1, 2, 3, 4}`, e encontre a interseção.
    1. Encontre a união dos `sets` `{5, 10, 15}` e `{15, 20, 25}`.
    1. Calcule a diferença entre os `sets` `{‘dog’, ‘cat’, ‘fish’}` e `{‘fish’, ‘bird’}`.
    1. Crie dois `sets`, `A = {‘x’, ‘y’, ‘z’}` e `B = {‘y’, ‘z’, ‘w’}`, e calcule a diferença.
1. Exercícios Mistos
    1. Verifique se o `set` `{1, 2, 3}` é subconjunto de `{1, 2, 3, 4, 5}`.
    1. Verifique se o `set` `{‘apple’, ‘banana’}` é subconjunto de `{‘apple’, ‘banana’, ‘cherry’}`.
    1. Verifique se `{1, 2}` e `{3, 4}` são conjuntos disjuntos.
    1. Crie um `set` a partir de uma string que contenha caracteres repetidos, como `"mississippi"`, e imprima os caracteres únicos.
    1. Crie um `set` a partir de uma lista com elementos duplicados e verifique se a quantidade de elementos no `set` é menor que na lista original.
    1. Combine dois `sets` usando o operador `|` (ou a operação `union()`).
    1. Encontre os elementos exclusivos de um `set` em comparação com outro usando a operação de diferença.
    1. Crie dois `sets` com elementos totalmente diferentes e verifique se a interseção é vazia.
    1. Verifique se um `set` é subconjunto de si mesmo.
    1. Tente adicionar um elemento já existente a um `set` e observe o comportamento.
1. Desafios
    1. Crie três `sets` diferentes e calcule a interseção de todos eles.
    1. Crie três `sets` diferentes e calcule a união de todos eles.
    1. Dado um `set` de números de 1 a 10, crie um segundo `set` com os números ímpares e calcule a diferença.
    1. Dado um `set` de palavras, crie um segundo `set` com palavras que começam com uma determinada letra e calcule a interseção.
    1. Crie dois `sets` com diferentes tipos de frutas e calcule a união e a diferença simétrica (usando o operador `^`).
    1. Verifique se a interseção de dois `sets` é vazia, ou seja, se eles são disjuntos.
    1. Dado um `set` com caracteres de uma string, adicione um novo caractere ao `set` e verifique se ele já existia.
    1. Crie um `set` a partir de uma lista de números e verifique quantos elementos únicos existem.
    1. Dado um `set` de letras, remova todas as vogais (se existirem).
    1. Crie um `set` a partir de uma frase e calcule a quantidade de letras distintas, ignorando espaços e pontuação.

</details>

## operadores do set

Os operadores `|`, `&`, `-` e `^` em Python são usados para realizar operações comuns de teoria dos conjuntos em objetos do tipo `set`.

### operador `|` (união)

O operador `|` é utilizado para realizar a [**união**](#setunion) de dois conjuntos. A união de dois conjuntos resulta em um novo conjunto contendo todos os elementos que estão em qualquer um dos conjuntos ou em ambos.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

resultado = set1 | set2
print(resultado)
# saída : {1, 2, 3, 4, 5}
```

**explicação :** a união entre `set1` e `set2` resulta em um conjunto que contém todos os elementos de ambos os conjuntos. Observe que elementos duplicados são incluídos apenas uma vez;

### operador `&` (interseção)

O operador `&` é utilizado para realizar a [**interseção**](#setintersection) de dois conjuntos. A interseção de dois conjuntos resulta em um novo conjunto contendo apenas os elementos que estão presentes em ambos os conjuntos.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

resultado = set1 & set2
print(resultado)
# saída : {3}
```

**explicação :** a interseção entre `set1` e `set2` resulta em um conjunto que contém apenas o elemento `3`, que é o único presente em ambos os conjuntos;

### operador `-` (diferença)

O operador `-` é utilizado para realizar a [**diferença**](#setdifference) entre dois conjuntos. A diferença entre dois conjuntos resulta em um novo conjunto contendo os elementos que estão no primeiro conjunto, mas não no segundo.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

resultado = set1 - set2
print(resultado)
# saída : {1, 2}
```

**explicação :** a diferença entre `set1` e `set2` resulta em um conjunto que contém os elementos `1` e `2`, que estão em `set1` mas não em `set2`;

### operador `^` (diferença simétrica)

O operador `^` é utilizado para realizar a [**diferença simétrica**](#setsymmetric_difference) entre dois conjuntos. A diferença simétrica resulta em um novo conjunto contendo os elementos que estão em um dos conjuntos, mas não em ambos. Em outras palavras, ele exclui os elementos comuns.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

resultado = set1 ^ set2
print(resultado)
# saída : {1, 2, 4, 5}
```

**explicação :** a diferença simétrica entre `set1` e `set2` resulta em um conjunto que contém os elementos `1`, `2`, `4` e `5`. Esses são os elementos que estão em apenas um dos conjuntos, mas não em ambos;

### atribuição composta dos operadores

Os operadores `|`, `&`, `-` e `^` em Python possuem versões com atribuição composta, que permitem modificar diretamente o conjunto à esquerda do operador.

#### `|=`

A União com Atribuição Composta combina o conjunto à esquerda com o conjunto à direita, e o resultado é armazenado de volta no conjunto à esquerda.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

set1 |= set2
print(set1)
# saída : {1, 2, 3, 4, 5}
```

#### `&=`

A Interseção com Atribuição Composta mantém no conjunto à esquerda apenas os elementos que estão presentes também no conjunto à direita.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

set1 &= set2
print(set1)
# saída : {3}
```

#### `-=`

A Diferença com Atribuição Compost remove do conjunto à esquerda todos os elementos que também estão presentes no conjunto à direita.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

set1 -= set2
print(set1)
# saída : {1, 2}
```

#### `^=`

A Diferença Simétrica com Atribuição Composta atualiza o conjunto à esquerda com os elementos que estão em apenas um dos conjuntos, excluindo os elementos comuns.

```python
set1 = {1, 2, 3}
set2 = {3, 4, 5}

set1 ^= set2
print(set1)
# saída : {1, 2, 4, 5}
```

## exercícios com operadores

<details>
<summary>Lista de Exercícios</summary>

1. **União Básica**: Crie dois conjuntos `set1 = {1, 2, 3}` e `set2 = {3, 4, 5}`. Utilize o operador `|` para encontrar a união dos dois conjuntos.
1. **Interseção Básica**: Crie dois conjuntos `set1 = {1, 2, 3}` e `set2 = {3, 4, 5}`. Utilize o operador `&` para encontrar a interseção dos dois conjuntos.
1. **Diferença Básica**: Crie dois conjuntos `set1 = {1, 2, 3}` e `set2 = {3, 4, 5}`. Utilize o operador `-` para encontrar a diferença entre `set1` e `set2`.
1. **Diferença Simétrica Básica**: Crie dois conjuntos `set1 = {1, 2, 3}` e `set2 = {3, 4, 5}`. Utilize o operador `^` para encontrar a diferença simétrica entre os dois conjuntos.
1. **União com Strings**: Crie dois conjuntos de strings: `set1 = {"apple", "banana", "cherry"}` e `set2 = {"banana", "date", "fig"}`. Utilize o operador `|` para unir os dois conjuntos.
1. **Interseção com Strings**: Usando os mesmos conjuntos do exercício anterior, utilize o operador `&` para encontrar as strings comuns entre `set1` e `set2`.
1. **Diferença com Strings**: Crie dois conjuntos de strings: `set1 = {"dog", "cat", "mouse"}` e `set2 = {"cat", "horse"}`. Utilize o operador `-` para encontrar os elementos que estão em `set1` mas não em `set2`.
1. **Diferença Simétrica com Strings**: Usando os conjuntos do exercício anterior, utilize o operador `^` para encontrar os elementos únicos em cada conjunto.
1. **Operação Combinada**: Crie três conjuntos `A = {1, 2, 3}`, `B = {3, 4, 5}` e `C = {5, 6, 7}`. Encontre a união dos conjuntos `A` e `B`, e depois calcule a diferença com o conjunto `C`.
1. **Interseção Vazia**: Crie dois conjuntos `set1 = {1, 2, 3}` e `set2 = {4, 5, 6}`. Verifique se a interseção entre eles é vazia.
1. **União com Conjuntos de Números Flutuantes**: Crie dois conjuntos de números flutuantes `set1 = {1.1, 2.2, 3.3}` e `set2 = {3.3, 4.4, 5.5}`. Utilize o operador `|` para unir os dois conjuntos.
1. **Interseção com Conjuntos de Números Flutuantes**: Usando os conjuntos do exercício anterior, utilize o operador `&` para encontrar os elementos comuns entre eles.
1. **Diferença entre Conjuntos Vários**: Crie três conjuntos `A = {1, 2, 3, 4}`, `B = {3, 4, 5, 6}` e `C = {5, 6, 7, 8}`. Encontre a diferença entre `A` e a união de `B` e `C`.
1. **Diferença Simétrica com Conjuntos Grandes**: Crie dois conjuntos `A` e `B` com 10 números inteiros aleatórios cada. Utilize o operador `^` para encontrar os elementos únicos em ambos os conjuntos.
1. **Operações Sequenciais**: Crie dois conjuntos `X = {10, 20, 30, 40}` e `Y = {30, 40, 50, 60}`. Primeiro, encontre a interseção entre `X` e `Y`, e depois subtraia essa interseção de `X`.
1. **Combinação de Operadores**: Crie três conjuntos `P = {2, 4, 6, 8}`, `Q = {4, 8, 12, 16}`, e `R = {8, 16, 24, 32}`. Calcule `(P | Q) & R`.
1. **Diferença com Listas Convertidas em Sets**: Converta as listas `list1 = [1, 2, 3, 4]` e `list2 = [3, 4, 5, 6]` em conjuntos, e depois encontre a diferença entre `set1` e `set2`.
1. **Diferença Simétrica de Sets Convertidos de Strings**: Converta as strings `str1 = "hello"` e `str2 = "world"` em conjuntos de caracteres, e utilize o operador `^` para encontrar a diferença simétrica entre os dois conjuntos.
1. **Verificação de Resultados**: Crie dois conjuntos `set1 = {1, 2, 3, 4}` e `set2 = {2, 4, 6, 8}`. Verifique se o resultado de `set1 ^ set2` é igual a `(set1 | set2) - (set1 & set2)`.
1. **União de Sets com Elementos Não Repetidos**: Crie dois conjuntos `set1 = {100, 200, 300}` e `set2 = {300, 400, 500}`. Verifique se a união dos conjuntos é igual a um conjunto criado manualmente `{100, 200, 300, 400, 500}`.

</details>
