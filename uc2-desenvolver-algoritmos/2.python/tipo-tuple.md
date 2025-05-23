# tipo tupla

As **tuplas** (ou *tuples* em inglês) são um tipo de dado em Python que representam uma coleção ordenada de elementos. Assim como as listas, as tuplas podem armazenar múltiplos itens em uma única variável. No entanto, diferentemente das listas, as tuplas são **imutáveis**, ou seja, uma vez criadas, seus valores não podem ser alterados.

## características

1. **imutabilidade** : depois que uma tupla é criada, não é possível modificar, adicionar ou remover elementos dela. isso garante que o conteúdo da tupla permaneça constante ao longo do tempo;

2. **ordenadas** : as tuplas mantêm a ordem dos elementos. isso significa que, ao acessar os elementos de uma tupla, eles sempre serão obtidos na mesma ordem em que foram definidos;

3. **armazenamento de diferentes tipos de dados** : uma tupla pode conter itens de diferentes tipos de dados, como inteiros, floats, strings, listas, outras tuplas, etc;

4. **indexação e fatiamento** : assim como as listas, os elementos de uma tupla podem ser acessados usando índices, e é possível fatiar uma tupla para acessar subconjuntos de seus elementos;

## criando tuplas

Tuplas são criadas colocando-se os elementos separados por vírgulas dentro de parênteses `()`.

```python
>>> # exemplo de uma tupla com diferentes tipos de dados
>>> tupla_exemplo = (1, "Python", 3.14, [10, 20, 30], (40, 50, 60))
>>>
>>> print(tupla_exemplo)
(1, 'Python', 3.14, [10, 20, 30], (40, 50, 60))
>>> |
```

Neste exemplo, `tupla_exemplo` é uma tupla que contém:
- um número inteiro (`1`)
- uma string (`"Python"`)
- um número float (`3.14`)
- uma lista (`[10, 20, 30]`)
- outra tupla (`(40, 50, 60)`)

## acessando elementos de uma tupla

Os elementos de uma tupla podem ser acessados por meio de seus índices, que começam em `0` para o primeiro elemento, `1` para o segundo, e assim por diante.

```python
>>> # acessando elementos individuais
>>> primeiro_elemento = tupla_exemplo[0]
>>> segundo_elemento = tupla_exemplo[1]
>>>
>>> print(primeiro_elemento)
1
>>> print(segundo_elemento)
Python
>>> |
```

## fatiamento (slicing)

É possível obter sub-tuplas de uma tupla usando a notação de fatiamento (slicing).

```python
>>> # fatiamento básico
>>> sub_tupla = tupla_exemplo[1:4]
>>>
>>> print(sub_tupla)
('Python', 3.14, [10, 20, 30])
>>> |
```

Neste exemplo, `tupla_exemplo[1:4]` retorna uma sub-tupla que inclui os elementos do índice `1` ao `3` (o índice final `4` não é incluído).

## tuplas com um único elemento

Para criar uma tupla com apenas um elemento, é necessário adicionar uma vírgula após o elemento dentro dos parênteses, caso contrário, Python interpretará os parênteses como um agrupamento de expressões.

```python
>>> # Tupla com um único elemento
>>> tupla_unica = (42,)
>>>
>>> print(type(tupla_unica))
<class 'tuple'>
>>> |
```

Sem a vírgula, Python consideraria `tupla_unica` como um número inteiro e não como uma tupla.

## imutabilidade

Uma das principais diferenças entre tuplas e listas é que as tuplas são imutáveis. Isso significa que, depois de criada, uma tupla não pode ser modificada. Não é possível alterar, adicionar ou remover elementos de uma tupla.

```python
>>> # tentando alterar um elemento da tupla
>>> try:
>>>     tupla_exemplo[0] = 100
>>> except TypeError as e:
>>>     print(e)
'tuple' object does not support item assignment
>>> |
```

## usos comuns das tuplas

1. **agrupamento de dados** : tuplas são frequentemente usadas para agrupar dados que logicamente pertencem juntos, como coordenadas `(x, y)` ou informações de contato;

1. **retorno de múltiplos valores de funções** : as funções em python podem retornar múltiplos valores encapsulados em uma tupla;
    ```python
    >>> def dividir_e_resto(dividendo, divisor):
    >>>     quociente = dividendo // divisor
    >>>     resto = dividendo % divisor
    >>>     return quociente, resto
    >>>
    >>> resultado = dividir_e_resto(10, 3)
    >>> print(resultado)
    (3, 1)
    >>> |
    ```
    Neste exemplo, a função `dividir_e_resto` retorna uma tupla com o quociente e o resto da divisão.

1. **tuplas aninhadas**: tuplas podem conter outras tuplas como elementos, criando uma estrutura aninhada;
    ```python
    >>> tupla_aninhada = (1, (2, 3), (4, (5, 6)))
    >>>
    >>> print(tupla_aninhada)  # Saída: (1, (2, 3), (4, (5, 6)))
    ```

4. **chaves imutáveis em dicionários**: tuplas podem ser usadas como chaves em dicionários porque são imutáveis.
    ```python
    >>> coordenadas = {}
    >>> coordenadas[(10, 20)] = "Ponto A"
    >>> coordenadas[(30, 40)] = "Ponto B"
    >>>
    >>> print(coordenadas)
    {(10, 20): 'Ponto A', (30, 40): 'Ponto B'}
    >>> |
    ```

### métodos e funções úteis para tuplas

Embora as tuplas sejam imutáveis, Python oferece algumas funções e métodos que podem ser usados com elas:

- **`len(tupla)`** : retorna o número de elementos na tupla;
- **`min(tupla)` e `max(tupla)`** : retornam o menor e o maior elemento da tupla, respectivamente;
- **`tupla.index(valor)`** : retorna o índice do primeiro elemento com o valor especificado;
- **`tupla.count(valor)`** : retorna o número de vezes que o valor aparece na tupla;

```python
>>> numeros = (3, 2, 8, 6, 2, 7)
>>>
>>> print(len(numeros))
5
>>> print(min(numeros))
2
>>> print(max(numeros))
8
>>> print(numeros.index(2))
1
>>> print(numeros.count(2))
2
```

### convertendo entre listas e tuplas

É possível converter uma lista em uma tupla e vice-versa usando as funções `tuple()` e `list()`.

```python
>>> lista = [1, 2, 3]
>>> tupla_convertida = tuple(lista)
>>> print(tupla_convertida)
(1, 2, 3)
>>>
>>> tupla = (4, 5, 6)
>>> lista_convertida = list(tupla)
>>> print(lista_convertida)
[4, 5, 6]
>>> |
```

## exercícios

<details>
<summary>Lista de Exercícios</summary>

1. nível simples
    1. **Acessando Elementos**: Crie uma tupla com 5 números inteiros. Escreva um loop `for` que percorra a tupla e imprima cada elemento.
    1. **Índices e Elementos**: Crie uma tupla com 4 strings. Escreva um loop `while` que percorra a tupla e imprima o índice e o valor de cada elemento.
    1. **Verificação de Presença**: Crie uma tupla com alguns números. Escreva um loop `for` que verifica se o número 7 está presente na tupla e, se estiver, imprima "Número encontrado".
    1. **Contando Elementos**: Crie uma tupla com 6 números inteiros. Use um loop `for` para contar quantos números na tupla são maiores que 10.
    1. **Tupla de Tuplas**: Crie uma tupla contendo outras tuplas dentro dela. Escreva um loop `for` que percorra cada sub-tupla e imprima seus elementos.
1. nível intermediário
    1. **Comparando Tuplas**: Crie duas tuplas de números inteiros. Escreva um loop `while` que compare elemento por elemento as duas tuplas e imprima qual tupla tem o maior número naquele índice.
    1. **Soma de Elementos**: Crie uma tupla com 5 números inteiros. Use um loop `for` para calcular e imprimir a soma de todos os elementos da tupla.
    1. **Verificação de Índices**: Crie uma tupla com 8 elementos. Use um loop `while` para verificar se o terceiro e o sexto elementos são iguais. Imprima "Iguais" ou "Diferentes" conforme o caso.
    1. **Busca em Tupla**: Crie uma tupla com 6 strings. Escreva um loop `for` que percorra a tupla e, se encontrar a string "Python", imprima "Linguagem encontrada!" e pare o loop.
    1. **Filtros com If**: Crie uma tupla de números inteiros. Escreva um loop `for` que percorra a tupla e imprima apenas os números pares.
1. nível avançado
    1. **Tuplas com Condicionais**: Crie uma tupla com 5 números inteiros. Escreva um loop `for` que verifique se cada número é maior que 10. Se for, imprima "Maior que 10", caso contrário, imprima "Menor ou igual a 10".
    1. **Contagem de Itens**: Crie uma tupla com vários números, alguns deles repetidos. Escreva um loop `while` que percorra a tupla e conte quantas vezes o número 3 aparece.
    1. **Tupla de Strings**: Crie uma tupla de strings. Escreva um loop `for` que percorra a tupla e, para cada string, verifique se ela começa com a letra "A". Se sim, imprima "Começa com A".
    1. **Busca com Condicional**: Crie uma tupla com números inteiros. Escreva um loop `while` que percorra a tupla e verifique se há algum número negativo. Se encontrar, imprima "Número negativo encontrado" e termine o loop.
    1. **Verificação de Maior Número**: Crie uma tupla com 5 números. Escreva um loop `for` que encontre e imprima o maior número da tupla.
1. nível complexo
    1. **Comparando Duas Tuplas**: Crie duas tuplas de números. Escreva um loop `while` que percorra ambas as tuplas e imprima qual número é maior em cada índice correspondente.
    1. **Tuplas Aninhadas**: Crie uma tupla que contenha outras tuplas dentro. Escreva um loop `for` que percorra cada sub-tupla e verifique se o primeiro elemento é maior que o segundo. Imprima "Sim" ou "Não" conforme o caso.
    1. **Verificação de Todos os Elementos**: Crie uma tupla de números inteiros. Escreva um loop `for` que verifique se todos os elementos são positivos. Se algum número for negativo, imprima "Número negativo encontrado" e interrompa o loop.
    1. **Tuplas e Condicionais**: Crie uma tupla com números e escreva um loop `while` que percorra a tupla. Se o número for maior que 20, multiplique-o por 2 e imprima o resultado.
    1. **Acessando Sub-Tuplas**: Crie uma tupla de 3 sub-tuplas, cada uma contendo 2 números. Escreva um loop `for` que percorra cada sub-tupla e some os números de cada uma, imprimindo o resultado.
1. nível muito complexo
    1. **Comparação de Listas e Tuplas**: Crie uma lista e uma tupla com números inteiros. Escreva um loop `for` que percorra ambos e imprima qual estrutura tem o maior número em cada índice correspondente.
    1. **Filtragem em Tuplas**: Crie uma tupla com vários números. Escreva um loop `while` que percorra a tupla e crie uma nova tupla contendo apenas os números pares.
    1. **Tupla e Contador**: Crie uma tupla de números inteiros. Escreva um loop `for` que percorra a tupla e use um contador para contar quantos números são maiores que 15.
    1. **Análise de Dados**: Crie uma tupla com temperaturas registradas durante uma semana. Escreva um loop `while` que percorra a tupla e identifique quantos dias tiveram temperatura acima de 30 graus.
    1. **Tuplas e Índices**: Crie uma tupla de números. Escreva um loop `for` que percorra a tupla e imprima apenas os números que estão em índices pares.
    1. **Busca de Substrings**: Crie uma tupla de strings. Escreva um loop `for` que percorra a tupla e imprima apenas as strings que contêm a substring "py".
    1. **Verificação de Múltiplos de 5**: Crie uma tupla com números inteiros. Escreva um loop `while` que percorra a tupla e verifique se cada número é múltiplo de 5. Imprima "Múltiplo de 5" ou "Não é múltiplo de 5" conforme o caso.
    1. **Contagem de Vogais**: Crie uma tupla de strings. Escreva um loop `for` que percorra cada string na tupla e conte quantas vogais há em cada uma, imprimindo o resultado.
    1. **Tupla de Pares e Ímpares**: Crie uma tupla de números. Escreva um loop `while` que percorra a tupla e crie duas novas tuplas, uma contendo apenas os números pares e outra contendo apenas os ímpares.
    1. **Comparação de Sub-Tuplas**: Crie uma tupla de sub-tuplas, onde cada sub-tupla contém dois números. Escreva um loop `for` que percorra cada sub-tupla e verifique se a soma dos dois números é maior que 10. Imprima "Sim" ou "Não" conforme o caso.

</details>
