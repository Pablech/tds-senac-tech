Índice

1. [vantagens](#vantagens)
1. [sintaxe](#sintaxe)
1. [exemplos](#exemplos)
1. [exemplos aula](#exemplos-aula)
1. [conclusão](#conclusão)
1. [exercícios](#exercícios)

# compreensão de listas

A **compreensão de listas** (*list comprehension*) é uma maneira concisa e elegante de criar listas em Python. Ela permite construir novas listas aplicando uma expressão a cada item de uma sequência existente e, opcionalmente, filtrando itens com base em alguma condição.

## vantagens

- **sintaxe concisa** : reduz o número de linhas de código comparado aos loops tradicionais;
- **leitura fácil** : facilita a compreensão do código, tornando-o mais legível;
- **performance melhorada** : em muitos casos, compreensões de listas são mais rápidas do que construções de loops equivalentes;

## sintaxe

A sintaxe geral de uma compreensão de lista é :

```python
[<expressão> for <item_do_iterável> in <iterável>]
```

- **expressão** : operação ou valor que será aplicado a cada item;
- **item_do_iterável** : variável que representa cada elemento no iterável;
- **iterável** : uma sequência ou objeto que pode ser iterado (como listas, tuplas, strings, etc.);

Também é possível adicionar condições :

```python
[<expressão> for <item_do_iterável> in <iterável> if <condição>]
```

- **condição** : uma expressão booleana que filtra os itens do iterável;

## exemplos

### exemplo 1 : criando uma lista simples

```python
>>> # usando o loop tradicional
>>> numeros = []
>>> for i in range(10):
...     numeros.append(i)
...
>>> print(numeros)
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>>
>>> # usando compreensão de lista
>>> numeros = [i for i in range(10)]
>>> print(numeros)
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
>>> |
```

- **loop tradicional** : é inicializada uma lista vazia e um loop `for` é usado para adicionar cada número de 0 a 9;
- **compreensão de lista** : a mesma operação é realizada em uma única linha, tornando o código mais conciso e legível;

### exemplo 2 : aplicando operações aos itens

```python
>>> # usando o loop tradicional
>>> quadrados = []
>>> for i in range(10):
...     quadrados.append(i**2)
...
>>> print(quadrados)
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
>>>
>>> # usando compreensão de lista
>>> quadrados = [i**2 for i in range(10)]
>>> print(quadrados)
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
>>> |
```

- **expressão** : `i**2` calcula o quadrado de cada número `i` no intervalo de 0 a 9;
- **iterável** : `range(10)` fornece os números de 0 a 9;

### exemplo 3 : filtrando itens com condição

```python
>>> # usando o loop tradicional
>>> pares = []
>>> for i in range(20):
...     if i % 2 == 0:
...         pares.append(i)
...
>>> print(pares)
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
>>>
>>> # usando compreensão de lista
>>> pares = [i for i in range(20) if i % 2 == 0]
>>> print(pares)
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
>>> |
```

- **condição** : `if i % 2 == 0` filtra apenas os números que são divisíveis por 2 (números pares);
- **vantagem** : a compreensão de lista combina a iteração e a filtragem em uma única linha;

### exemplo 4 : transformando strings

```python
>>> palavras = ['python', 'compreensão', 'lista', 'exemplo']
>>>
>>> # usando o loop tradicional
>>> maiusculas = []
>>> for palavra in palavras:
...     maiusculas.append(palavra.upper())
...
>>> print(maiusculas)
['PYTHON', 'COMPREENSÃO', 'LISTA', 'EXEMPLO']
>>>
>>> # usando a compreensão de lista
>>> maiusculas = [palavra.upper() for palavra in palavras]
>>> print(maiusculas)
['PYTHON', 'COMPREENSÃO', 'LISTA', 'EXEMPLO']
>>> |
```

- **expressão** : `palavra.upper()` converte cada palavra para letras maiúsculas;
- **iterável** : a lista `palavras` é percorrida, aplicando a transformação a cada elemento;

### exemplo 5 : compreensão com funções

```python
>>> frase = "Compreensões de listas são poderosas"
>>>
>>> # usando o loop tradicional
>>> comprimentos = []
>>> for palavra in frase.split():
...     comprimentos.append(len(palavra))
...
>>> print(comprimentos)
[12, 2, 6, 3, 10]
>>>
>>> # usando compreensão de lista
>>> comprimentos = [len(palavra) for palavra in frase.split()]
>>> print(comprimentos)
[12, 2, 6, 3, 10]
>>> |
```

- **`frase.split()`:** : divide a frase em uma lista de palavras;
- **`len(palavra)`** : calcula o comprimento de cada palavra;

### exemplo 6 : compreensão aninhada (nested)

```python
>>> # usando o loop tradicional
>>> coordenadas = []
>>> for x in range(3):
...     for y in range(3):
...         coordenadas.append((x, y))
...
>>> print(coordenadas)
[(0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2), (2, 0), (2, 1), (2, 2)]
>>>
>>> # usando compreensão de lista
>>> coordenadas = [(x, y) for x in range(3) for y in range(3)]
>>> print(coordenadas)
[(0, 0), (0, 1), (0, 2), (1, 0), (1, 1), (1, 2), (2, 0), (2, 1), (2, 2)]
>>> |
```

- **loops aninhados** : para cada valor de `x`, o loop interno itera sobre `y`;
- **expressão** : cria tuplas `(x, y)` para cada combinação possível;

### exemplo 7 : filtrando com condição complexa

```python
>>> # usando o loop tradicional
>>> numeros = []
>>> for i in range(1, 51):
...     if i % 3 == 0 and i % 5 == 0:
...         numeros.append(i)
...
>>> print(numeros)
[15, 30, 45]
>>>
>>> # usando compreensão de lista
>>> numeros = [i for i in range(1, 51) if i % 3 == 0 and i % 5 == 0]
>>> print(numeros)
[15, 30, 45]
>>> |
```

- **condição** : `i % 3 == 0 and i % 5 == 0` seleciona números divisíveis por ambos 3 e 5;
- **iterável** : `range(1, 51)` fornece números de 1 a 50;

---

### exemplo 8 : compreensão de lista com função condicional

```python
>>> # usando o loop tradicional
>>> resultado = []
>>> for i in range(10):
...     if i % 2 == 0:
...         resultado.append("Par")
...     else:
...         resultado.append("Ímpar")
>>>
>>> print(resultado)
['Par', 'Ímpar', 'Par', 'Ímpar', 'Par', 'Ímpar', 'Par', 'Ímpar', 'Par', 'Ímpar']
>>>
>>> # usando compreensão de lista
>>> resultado = ["Par" if i % 2 == 0 else "Ímpar" for i in range(10)]
>>> print(resultado)
['Par', 'Ímpar', 'Par', 'Ímpar', 'Par', 'Ímpar', 'Par', 'Ímpar', 'Par', 'Ímpar']
>>> |
```

- **expressão condicional** : `"par" if i % 2 == 0 else "ímpar"` avalia cada número e retorna a string correspondente;
- **iterável** : itera sobre números de 0 a 9;

### exemplo 9 : compreensão de lista com funções e filtragem

```python
>>> nomes = ['Ana', 'Bruno', 'Carlos', 'Diana', 'Eduardo', 'Fátima']
>>>
>>> # usando o loop tradicional
>>> nomes_filtrados = []
>>> for nome in nomes:
...     if len(nome) > 5:
...         nomes_filtrados.append(nome.upper())
...
>>> print(nomes_filtrados)
['CARLOS', 'EDUARDO', 'FÁTIMA']
>>>
>>> # usando compreensão de lista
>>> nomes_filtrados = [nome.upper() for nome in nomes if len(nome) > 5]
>>> print(nomes_filtrados)
['CARLOS', 'EDUARDO', 'FÁTIMA']
>>> |
```

- **condição** : `if len(nome) > 5` filtra nomes com mais de 5 letras;
- **expressão** : `nome.upper()` converte os nomes filtrados para maiúsculas;

### exemplo 10 : achatar lista de listas

```python
>>> listas = [[1, 2], [3, 4], [5, 6]]
>>>
>>> # usando o loop tradicional
>>> lista_plana = []
>>> for sublista in listas:
...     for item in sublista:
...         lista_plana.append(item)
...
>>> print(lista_plana)
[1, 2, 3, 4, 5, 6]
>>>
>>> # usando compreensão de lista
>>> lista_plana = [item for sublista in listas for item in sublista]
>>> print(lista_plana)
[1, 2, 3, 4, 5, 6]
>>> |
```

- **loops aninhados** : o primeiro loop percorre cada sublista, e o segundo loop percorre cada item dentro das sublistas;
- **expressão** : cada `item` é adicionado à nova lista plana;

## exemplos aula

Segue abaixo os exemplos mais complexos realizados em aula :

```python
>>> # iterando sobre uma lista de 100 números,
>>> # primeiro filtrando pelos múltiplos de 4 E 5
>>> # depois separando em tuplas de string (par ou impar) e o valor de n
>>> tuplas = []
>>> for n in range(100):
...    if n % 4 == 0 and n % 5 == 0:
...        if n % 2 == 0:
...            tuplas.append(('par',n))
...        else:
...            tuplas.append(('impar',n))
...
>>> tuplas
[('par', 0), ('par', 20), ('par', 40), ('par', 60), ('par', 80)]
>>>
>>> # mesma coisa que acima, mas usando compreensao de lista
>>> # e operador ternário
>>> [('par',n) if n % 2 == 0 else ('impar',n) for n in range(100) if n % 4 == 0 and n % 5 == 0]
[('par', 0), ('par', 20), ('par', 40), ('par', 60), ('par', 80)]
>>> |
```
```python
>>> mista = [True, 'carlos', 42, 'maria', False, 3.14]
>>>
>>> resultado = []
>>> # filtragem da lista mista, separando apenas o valores dos tipos
>>> # string e inteiros, depois, se for string deixa em caixa alta
>>> # se for inteiro, eleva ao quadrado
>>> for item in mista:
...     if isinstance(item,str) or isinstance(item,int):
...         if isinstance(item,str):
...             resultado.append(item.upper())
...         else:
...             resultado.append(item ** 2)
...
>>> resultado
[1, 'CARLOS', 1764, 'MARIA', 0]
>>>
>>> # a mesma coisa que acima, mas agora usando compreensão de listas
>>> # e o operador ternário
>>> [item.upper() if isinstance(item,str) else item ** 2 for item in mista if isinstance(item,str) or isinstance(item,int)]
[1, 'CARLOS', 1764, 'MARIA', 0]
>>> |
```

## conclusão

As **compreensões de listas** são uma ferramenta poderosa em Python que permitem escrever código mais compacto e legível. Elas são particularmente úteis para :

- **transformar dados** : aplicando operações a todos os itens de uma sequência;
- **filtrar dados** : Selecionando itens que atendem a determinadas condições;
- **criar estruturas complexas** : Como listas aninhadas ou dicionários, de forma concisa;

## exercícios

<details>
<summary>Lista de Execícios</summary>

> [!TIP]
> para os seguintes execícios :
> - primeiro, crie a versão tradicional do exercício;
> - depois, a partir da primeira, crie a versão de compreensão de lista;

Exemplo :
```python
>>> # Dobro dos Números : Dada a lista `numeros = [1, 2, 3, 4, 5]`, crie
>>> # uma nova lista que contenha o dobro de cada número da lista original.
>>>
>>> numeros = [1, 2, 3, 4, 5]
>>>
>>> # usando o loop tradicional
>>> nova_lista = []
>>> for n in numeros:
...     nova_lista.append(n * 2)
...
>>> print(nova_lista)
[2, 4, 6, 8, 10]
>>>
>>> # usando compreensão de lista
>>> nova_lista = [n * 2 for n in numeros]
>>> nova_lista
[2, 4, 6, 8, 10]
>>> |
```

1. Nível Simples
    1. **Dobro dos Números**: Dada a lista `numeros = [1, 2, 3, 4, 5]`, crie uma nova lista que contenha o dobro de cada número da lista original.
    1. **Quadrado dos Números**: Dada a lista `numeros = [1, 2, 3, 4, 5]`, crie uma nova lista que contenha o quadrado de cada número da lista original.
    1. **Números Pares**: Dada a lista `numeros = [1, 2, 3, 4, 5, 6]`, crie uma nova lista que contenha apenas os números pares da lista original.
    1. **Números Ímpares**: Dada a lista `numeros = [1, 2, 3, 4, 5, 6]`, crie uma nova lista que contenha apenas os números ímpares da lista original.
    1. **Strings em Maiúsculas**: Dada a lista `palavras = ["python", "é", "legal"]`, crie uma nova lista que contenha cada palavra da lista original em maiúsculas.
1. Nível Intermediário
    1. **Comprimento das Strings**: Dada a lista `palavras = ["python", "é", "legal"]`, crie uma nova lista que contenha o comprimento de cada palavra da lista original.
    1. **Filtrar Booleans Verdadeiros**: Dada a lista `valores = [True, False, True, False]`, crie uma nova lista que contenha apenas os valores `True` da lista original.
    1. **Strings com mais de 3 Caracteres**: Dada a lista `palavras = ["oi", "python", "sim", "não"]`, crie uma nova lista que contenha apenas as palavras com mais de 3 caracteres.
    1. **Números Divisíveis por 3**: Dada a lista `numeros = [3, 6, 9, 12, 15, 18]`, crie uma nova lista que contenha apenas os números que são divisíveis por 3.
    1. **Negativos a partir de uma Tupla**: Dada a tupla `numeros = (1, -2, 3, -4, 5)`, crie uma nova lista que contenha apenas os números negativos da tupla.
1. Nível Avançado
    1. **Multiplicação de Pares por 2**: Dada a lista `numeros = [1, 2, 3, 4, 5, 6]`, crie uma nova lista onde os números pares são multiplicados por 2, e os ímpares permanecem inalterados.
    1. **Conversão de Strings em Booleans**: Dada a lista `strings = ["True", "False", "True", "False"]`, crie uma nova lista que converta as strings `"True"` e `"False"` para seus respectivos valores booleanos.
    1. **Filtrar Tuplas que Contêm Inteiros**: Dada a lista `tuplas = [(1, 2), ("a", "b"), (3, 4)]`, crie uma nova lista que contenha apenas as tuplas que contêm apenas inteiros.
    1. **Primeiros Caracteres de Strings**: Dada a lista `palavras = ["Python", "é", "incrível"]`, crie uma nova lista que contenha o primeiro caractere de cada palavra.
    1. **Listas com Todos os Valores Verdadeiros**: Dada a lista `listas = [[True, True], [True, False], [False, False]]`, crie uma nova lista que contenha apenas as listas onde todos os valores são `True`.
1. Nível Complexo
    1. **Somar Valores de Tuplas**: Dada a lista `tuplas = [(1, 2), (3, 4), (5, 6)]`, crie uma nova lista que contenha a soma dos valores de cada tupla.
    1. **Inverter Strings**: Dada a lista `palavras = ["Python", "é", "incrível"]`, crie uma nova lista que contenha cada palavra invertida.
    1. **Substituição Condicional**: Dada a lista `numeros = [1, 2, 3, 4, 5, 6]`, crie uma nova lista onde os números menores que 4 são substituídos por `"Pequeno"`, e os demais são substituídos por `"Grande"`.
    1. **Concatenar Listas**: Dada a lista de listas `listas = [[1, 2], [3, 4], [5, 6]]`, crie uma nova lista que contenha todos os elementos concatenados em uma única lista.
    1. **Números em Strings com Mais de 5 Dígitos**: Dada a lista `numeros = ["12345", "678901", "23456"]`, crie uma nova lista que contenha apenas os números que tenham mais de 5 dígitos.
1. Nível Muito Complexo
    1. **Intersecção de Listas**: Dadas as listas `a = [1, 2, 3]` e `b = [2, 3, 4]`, crie uma nova lista que contenha os elementos que estão em ambas as listas.
    1. **Números Flutuantes Menores que Inteiros**: Dada a lista `numeros = [1, 2.5, 3.7, 4]`, crie uma nova lista que contenha apenas os números flutuantes que são menores que os inteiros.
    1. **Filtragem Condicional em Tuplas**: Dada a lista de tuplas `tuplas = [(1, 2), (3, 4), (5, 6)]`, crie uma nova lista que contenha apenas as tuplas onde o primeiro valor é menor que o segundo.
    1. **Booleanos em Listas Mistas**: Dada a lista mista `mista = [True, 1, False, 0, "True", "False"]`, crie uma nova lista que contenha apenas os valores booleanos da lista.
    1. **Criação de Tuplas a partir de Listas**: Dada a lista `numeros = [1, 2, 3, 4]`, crie uma nova lista que contenha tuplas, onde cada tupla é composta por um número da lista original e seu quadrado.

</details>
