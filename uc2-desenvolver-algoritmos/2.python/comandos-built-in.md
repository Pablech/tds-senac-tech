Índice

1. [`in`](#in)
1. [exercícios `in`](#exercicios-in)

# comandos built-in

Comandos built-in do Python são funções e tipos de dados que estão disponíveis diretamente na linguagem, sem a necessidade de importar módulos adicionais. Eles fazem parte da biblioteca padrão e oferecem funcionalidades básicas essenciais para a programação.

## `in`

O comando `in` do Python é um operador que verifica a existência de um elemento em uma coleção de elementos, como listas, strings, tuplas, dicionários, sets, etc. Ele retorna um valor booleano: `True` se o elemento estiver presente na coleção e `False` caso contrário.

```python
# sintaxe básica
elemento in coleção
```

- `elemento` : é o item que você deseja verificar se está presente na coleção;
- `coleção` : é a estrutura de dados onde a verificação será feita;

### exemplos

#### `in` em strings

Quando usado com strings, o `in` verifica se uma substring está presente na string.

```python
>>> mensagem = "Olá, mundo!"
>>>
>>> print('Olá' in mensagem)
True
>>> print('mundo' in mensagem)
True
>>> print('Python' in mensagem)
False
>>> |
```

- aqui, `Olá` e `mundo` são substrings de `mensagem`, então o resultado é `True`;
- `Python` não é uma substring de `mensagem`, resultando em `False`;

#### `in` em listas

Em listas, o `in` verifica se o item existe em qualquer posição da lista.

```python
>>> frutas = ['maçã', 'banana', 'laranja']
>>>
>>> print('banana' in frutas)
True
>>> print('uva' in frutas)
False
>>> |
```

- no primeiro caso, `banana` está na lista `frutas`, então o resultado é `True`;
- no segundo caso, `uva` não está na lista, então o resultado é `False`;

### operador `not in`

O operador `not in` é o inverso de `in`. Ele verifica se o elemento **não** está presente na coleção.

```python
>>> frutas = ['maçã', 'banana', 'laranja']
>>> print('uva' not in frutas)
True
>>> print('banana' not in frutas)
False
>>> |
```

- no primeiro caso, `uva` não está na lista `frutas`, então o resultado é `True`;
- no segundo caso, `banana` está na lista, então o resultado é `False`;

## exercícios `in`

<details>
<summary>Lista de Exercícios</summary>

1. exercícios com strings
    1. Verifique se a substring `"Python"` está presente na string `"Eu estou aprendendo Python"` e imprima o resultado.
    1. Verifique se a letra `"a"` está presente na string `"Hello, World!"` e imprima o resultado.
    1. Crie uma string `"abcdefg"` e verifique se a letra `"h"` está presente nela. Imprima `True` ou `False`.
    1. Dada a string `"Programação"`, verifique se a substring `"ção"` está presente. Imprima o resultado.
    1. Verifique se a palavra `"code"` está na frase `"Escrever código é divertido"`. Imprima o resultado.
1. exercícios com listas
    1. Crie uma lista `["maçã", "banana", "laranja"]`. Verifique se `"banana"` está presente na lista e imprima o resultado.
    1. Dada a lista `[10, 20, 30, 40, 50]`, verifique se o número `25` está na lista e imprima `True` ou `False`.
    1. Crie uma lista de nomes `["Ana", "Beatriz", "Carlos"]`. Verifique se o nome `"Daniel"` está na lista e imprima o resultado.
    1. Dada a lista `["cachorro", "gato", "peixe"]`, verifique se `"passarinho"` está presente na lista e imprima o resultado.
    1. Crie uma lista vazia e verifique se o número `0` está presente nela. Imprima o resultado.

</details>
