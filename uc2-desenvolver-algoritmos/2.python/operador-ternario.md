Índice

1. [sintaxe](#sintaxe)
1. [exemplos](#exemplos)
1. [cuidados](#cuidados)
1. [comparando](#comparando)
1. [exercícios](#exercícios)

# operador ternário

O operador ternário em Python é uma forma concisa de escrever uma expressão condicional, permitindo que você atribua um valor a uma variável ou execute uma operação com base em uma condição, tudo em uma única linha de código. Em vez de usar a estrutura tradicional `if-else`, o operador ternário simplifica a sintaxe.

## sintaxe

A sintaxe do operador ternário em Python é a seguinte:

```python
<valor_se_verdadeiro> if <condicao> else <valor_se_falso>
```

- **condicao** : a expressão que será avaliada como `True` ou `False`;
- **valor_se_verdadeiro** : o valor ou expressão que será retornado se a condição for `True`;
- **valor_se_falso** : o valor ou expressão que será retornado se a condição for `False`;

## exemplos

### 1. atribuição simples

```python
>>> idade = 18
>>> status = "Maior de idade" if idade >= 18 else "Menor de idade"
>>> print(status)
Maior de idade
>>> |
```

- aqui, a condição `idade >= 18` é verificada;
- se for `True`, a variável `status` recebe o valor `"Maior de idade"`;
- caso contrário, ela recebe `"Menor de idade"`;

### 2. verificação de paridade

```python
>>> numero = 4
>>> paridade = "Par" if numero % 2 == 0 else "Ímpar"
>>> print(paridade)
Par
>>> |
```

- a condição `numero % 2 == 0` verifica se o número é par;
- se for `True`, `paridade` recebe `"Par"`;
- caso contrário, recebe `"Ímpar"`;

### 3. usando o operador ternário com funções

```python
>>> def obter_preco(desconto):
...     return 50 if desconto else 100
...
>>> preco = obter_preco(True)
>>> print(preco)
50
>>> |
```

- a função `obter_preco` retorna 50 se `desconto` for `True`, e 100 caso contrário;
- no exemplo, a função é chamada com `True`, então o preço será 50;

### 4. múltiplas condições

```python
>>> nota = 85
>>> resultado = "Aprovado" if nota >= 60 else "Reprovado"
>>> print(resultado)
Aprovado
>>> |
```

- a condição `nota >= 60` verifica se a nota é suficiente para aprovação;
- se `True`, retorna `"Aprovado"`, caso contrário, `"Reprovado"`;

### 5. encadeamento de operadores ternários

```python
>>> idade = 17
>>> categoria = "Criança" if idade < 13 else "Adolescente" if idade < 18 else "Adulto"
>>> print(categoria)
Adolescente
>>> |
```

- aqui, é verificado várias condições em sequência :
  1. se `idade < 13`, retorna `"Criança"`;
  1. se `idade < 18` (mas não menor que 13), retorna `"Adolescente"`;
  1. se nenhuma das anteriores for verdadeira, retorna `"Adulto"`;

Veja o exemplo acima, mas usando parênteses para melhor visualização de cada bloco :

```python
>>> idade = 17
>>> categoria = ("Criança" if idade < 13 else ("Adolescente" if idade < 18 else "Adulto"))
>>> print(categoria)
Adolescente
>>> |
```

### 6. usando com valores booleanos

```python
>>> x = True
>>> y = False
>>> resultado = "Ambos Verdadeiros" if x and y else "Ao menos um Falso"
>>> print(resultado)
Ao menos um Falso
>>> |
```

- a condição `x and y` é avaliada;
- se ambos `x` e `y` forem `True`, retorna `"Ambos Verdadeiros"`;
- caso contrário, retorna `"Ao menos um Falso"`;

### 7. atribuindo resultados a variáveis

```python
>>> a = 5
>>> b = 10
>>> maior = a if a > b else b
>>> print(maior)
10
>>> |
```

- A condição `a > b` é verificada.
- Se for `True`, `maior` recebe `a`, caso contrário, `b`.

## cuidados

Embora a estrutura ajude a deixar o código mais claro e mais conciso, ela também pode deixar o código bem complicado de ler.

Veja um exemplo abaixo :

```python
>>> nota = 95
>>>
>>> # vários if-else ternários
>>> resultado = 'A+' if nota > 90 else 'A' if nota > 80 else 'B' if nota > 70 else 'C' if nota > 60 else 'D' if nota > 40 else 'Reprovado'
>>> resultado
'A+'
>>>
>>> # mesma estrutura, mas com os parênteses para "melhor" visualização
>>> resultado = ('A+' if nota > 90 else ('A' if nota > 80 else ('B' if nota > 70 else ('C' if nota > 60 else ('D' if nota > 40 else ('Reprovado'))))))
>>> resultado
'A+'
>>>
>>> # agora usando os parênteses e separando em blocos individuais
>>> resultado = (
...     'A+' if nota > 90 else (
...         'A' if nota > 80 else (
...             'B' if nota > 70 else (
...                 'C' if nota > 60 else (
...                     'D' if nota > 40 else (
...                         'Reprovado'
...                     )
...                 )
...             )
...         )
...     )
... )
...
>>> resultado
'A+'
>>> |
```

Embora ela seja prática, o exemplo acima fica **muito** melhor de entender e visualizar se usar o `if-elif-else` tradicional. Veja abaixo como ficaria :

```python
>>> if nota > 90:
...     resultado = 'A+'
... elif nota > 80:
...     resultado = 'A'
... elif nota > 70:
...     resultado = 'B'
... elif nota > 60:
...     resultado = 'C'
... elif nota > 40:
...     resultado = 'D'
... else:
...     resultado = 'Reprovado'
...
>>> resultado
'A+'
>>> |
```

## comparando

Abaixo há diversos exemplos do *mesmo* uso do `if` tradicional e do `if` com operador ternário :

1. verificando positivo e negativo :
    ```python
    >>> numero = -3
    >>>
    >>> # versão tradicional
    >>> if numero > 0:
    ...     resultado = "Positivo"
    ... else:
    ...     resultado = "Negativo ou Zero"
    ...
    >>> print(resultado)
    Negativo ou Zero
    >>>
    >>> # operador ternário
    >>> resultado = "Positivo" if numero > 0 else "Negativo ou Zero"
    >>> print(resultado)
    Negativo ou Zero
    >>> |
    ```

1. verificação de maioridade
    ```python
    >>> idade = 20
    >>>
    >>> # versão tradicional
    >>> if idade >= 18:
    ...     maioridade = True
    ... else:
    ...     maioridade = False
    ...
    >>> print(maioridade)
    True
    >>>
    >>> # operador ternário
    >>> maioridade = True if idade >= 18 else False
    >>> print(maioridade)
    True
    >>> |
    ```

1. verificação de vazio em uma string
    ```python
    >>> texto = ""
    >>>
    >>> # versão tradicional
    >>> if not texto:
    ...     status = "Vazio"
    ... else:
    ...     status = "Contém Texto"
    ...
    >>> print(status)
    Vazio
    >>>
    >>> # operador ternário
    >>> status = "Vazio" if not texto else "Contém Texto"
    >>> print(status)
    Vazio
    >>> |
    ```

1. verificação de paridade com números
    ```python
    >>> numero = 7
    >>>
    >>> # versão tradicional
    >>> if numero % 2 == 0:
    ...     paridade = "Par"
    ... else:
    ...     paridade = "Ímpar"
    ...
    >>> print(paridade)
    Ímpar
    >>>
    >>> # operador ternário
    >>> paridade = "Par" if numero % 2 == 0 else "Ímpar"
    >>> print(paridade)
    Ímpar
    >>> |
    ```

1. seleção de mensagem baseada em horário
    ```python
    >>> hora = 15
    >>>
    >>> # versão tradicional
    >>> if hora < 12:
    ...     mensagem = "Bom dia"
    ... else:
    ...     mensagem = "Boa tarde"
    ...
    >>> print(mensagem)
    Boa tarde
    >>>
    >>> # operador ternário
    >>> mensagem = "Bom dia" if hora < 12 else "Boa tarde"
    >>> print(mensagem)
    Boa tarde
    >>> |
    ```

## exercícios

<details>
<summary>Lista de Exercícios</summary>

> [!TIP]
> para os seguintes execícios :
> - primeiro, crie a versão tradicional do exercício;
> - depois, a partir da primeira, crie a versão de operador ternário;

Exemplo :
```python
>>> # **Verificação Simples**: Dada uma variável `x = 10`, use o operador
>>> # ternário para definir uma variável `resultado` como `"Maior que 5"` se
>>> # `x` for maior que 5, caso contrário `"Menor ou igual a 5"`.
>>> # Imprima `resultado`.
>>>
>>> x = 10
>>>
>>> # usando o if-else tradicional
>>> resultado = ''
>>> if x > 5:
...     resultado = "Maior que 5"
... else:
...     resultado = "Menor ou igual a 5"
...
>>> print(resultado)
Menor ou igual a 5
>>>
>>> # usando operador ternário
>>> resultado = "Maior que 5" if x > 5 else "Menor ou igual a 5"
>>> print(resultado)
Menor ou igual a 5
>>> |
```

1. Nível Simples
    1. **Verificação Simples**: Dada uma variável `x = 10`, use o operador ternário para definir uma variável `resultado` como `"Maior que 5"` se `x` for maior que 5, caso contrário `"Menor ou igual a 5"`. Imprima `resultado`.
    1. **Par ou Ímpar**: Dado um número `n = 7`, use o operador ternário para definir uma variável `paridade` como `"Par"` se `n % 2 == 0`, caso contrário `"Ímpar"`. Imprima `paridade`.
    1. **Verificação de String Vazia**: Dada uma string `s = "Python"`, use o operador ternário para definir uma variável `status` como `"Vazia"` se `s` for vazia, caso contrário `"Não vazia"`. Imprima `status`.
    1. **Maior de Dois Números**: Dadas duas variáveis `a = 8` e `b = 5`, use o operador ternário para definir a variável `maior` como o maior entre `a` e `b`. Imprima `maior`.
    1. **Verificação de Booleano**: Dado um booleano `flag = True`, use o operador ternário para definir uma variável `mensagem` como `"Ativo"` se `flag` for `True`, caso contrário `"Inativo"`. Imprima `mensagem`.
1. Nível Intermediário
    1. **Comprimento de Lista**: Dada uma lista `lst = [1, 2, 3, 4]`, use o operador ternário para definir uma variável `comprimento` como `"Curta"` se a lista tiver menos de 5 elementos, caso contrário `"Longa"`. Imprima `comprimento`.
    1. **Verificação de Tupla**: Dada uma tupla `t = (5, 10)`, use o operador ternário para definir uma variável `tipo` como `"Par"` se a soma dos elementos for par, caso contrário `"Ímpar"`. Imprima `tipo`.
    1. **Multiplicação ou Soma**: Dado um número `x = 3`, use o operador ternário para definir uma variável `resultado` como `x * 2` se `x` for maior que 5, caso contrário `x + 2`. Imprima `resultado`.
    1. **Verificação de String Maiúscula**: Dada uma string `s = "Hello"`, use o operador ternário para definir uma variável `case` como `"Maiúscula"` se `s` estiver em maiúsculas, caso contrário `"Minúscula ou mista"`. Imprima `case`.
    1. **Positivo ou Negativo**: Dado um número `n = -4`, use o operador ternário para definir uma variável `sinal` como `"Positivo"` se `n` for maior ou igual a 0, caso contrário `"Negativo"`. Imprima `sinal`.
1. Nível Avançado
    1. **Verificação de Elemento em Lista**: Dada uma lista `lst = [1, 2, 3]`, use o operador ternário para definir uma variável `presente` como `"Contém 2"` se `2` estiver na lista, caso contrário `"Não contém 2"`. Imprima `presente`.
    1. **Comprimento de String**: Dada uma string `s = "Python"`, use o operador ternário para definir uma variável `comprimento` como `"Curta"` se a string tiver menos de 6 caracteres, caso contrário `"Longa"`. Imprima `comprimento`.
    1. **Verificação de Tupla Vazia**: Dada uma tupla `t = ()`, use o operador ternário para definir uma variável `status` como `"Vazia"` se a tupla estiver vazia, caso contrário `"Não vazia"`. Imprima `status`.
    1. **Verificação de Lista Aninhada**: Dada uma lista `lst = [[1, 2], [3, 4]]`, use o operador ternário para definir uma variável `aninhada` como `"Contém listas"` se o primeiro elemento de `lst` for uma lista, caso contrário `"Não contém listas"`. Imprima `aninhada`.
    1. **Escolha de String Baseada em Comprimento**: Dada uma string `s = "Hello"`, use o operador ternário para definir uma variável `mensagem` como `"Curta"` se `s` tiver 5 caracteres ou menos, caso contrário `"Longa"`. Imprima `mensagem`.
1. Nível Complexo
    1. **Operação Condicional**: Dado um número `n = 15`, use o operador ternário para definir uma variável `resultado` como `n ** 2` se `n` for maior que 10, caso contrário `n / 2`. Imprima `resultado`.
    1. **Verificação de Paridade com Lista**: Dada uma lista `lst = [2, 4, 6]`, use o operador ternário para definir uma variável `paridade` como `"Par"` se a soma dos elementos da lista for par, caso contrário `"Ímpar"`. Imprima `paridade`.
    1. **Verificação de Multiplicidade**: Dado um número `x = 21`, use o operador ternário para definir uma variável `multiplicidade` como `"Multiplo de 7"` se `x` for múltiplo de 7, caso contrário `"Não é múltiplo de 7"`. Imprima `multiplicidade`.
    1. **Verificação de Tupla Aninhada**: Dada uma tupla `t = ((1, 2), (3, 4))`, use o operador ternário para definir uma variável `aninhada` como `"Aninhada"` se o primeiro elemento de `t` for uma tupla, caso contrário `"Não aninhada"`. Imprima `aninhada`.
    1. **Escolha de Lista Baseada em Comprimento**: Dada uma lista `lst = [1, 2, 3, 4, 5, 6]`, use o operador ternário para definir uma variável `tamanho` como `"Curta"` se a lista tiver 5 elementos ou menos, caso contrário `"Longa"`. Imprima `tamanho`.
1. Nível Muito Complexo
    1. **Escolha de Elemento em Lista**: Dada uma lista `lst = [10, 20, 30]`, use o operador ternário para definir uma variável `elemento` como o primeiro elemento da lista se ela tiver mais de 2 elementos, caso contrário o último elemento. Imprima `elemento`.
    1. **Verificação de Substring**: Dada uma string `s = "Python é divertido"`, use o operador ternário para definir uma variável `existe` como `"Contém 'divertido'"` se `"divertido"` estiver presente na string, caso contrário `"Não contém 'divertido'"`. Imprima `existe`.
    1. **Verificação de Comprimento de Tupla**: Dada uma tupla `t = (1, 2, 3, 4)`, use o operador ternário para definir uma variável `quantidade` como `"Mais de 3 elementos"` se a tupla tiver mais de 3 elementos, caso contrário `"3 ou menos elementos"`. Imprima `quantidade`.
    1. **Comparação de Tuplas**: Dadas duas tuplas `t1 = (1, 2)` e `t2 = (3, 4)`, use o operador ternário para definir uma variável `comparação` como `"Tupla 1 maior"` se o primeiro elemento de `t1` for maior que o de `t2`, caso contrário `"Tupla 2 maior"`. Imprima `comparação`.

</details>
