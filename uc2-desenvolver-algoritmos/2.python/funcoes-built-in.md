Índice

1. [print()](#print)
1. [len()](#len)
1. [input()](#input)
1. [range()](#range)

# funções built-in

As funções built-in do Python são funções que já vêm integradas na linguagem, ou seja, estão disponíveis para uso imediato sem a necessidade de importação de módulos ou bibliotecas adicionais. Essas funções são projetadas para realizar tarefas comuns, como manipulação de strings, números, listas, entre outros, de forma simples e eficiente.

## `print()`

A função `print()` no Python é uma das funções mais fundamentais e amplamente utilizadas. Ela serve para exibir informações na tela, o que é útil tanto para o desenvolvimento e depuração de código quanto para fornecer feedback ao usuário.

A função `print()` exibe os valores que você passa como argumentos, convertendo-os em strings (se necessário) e mostrando-os na tela.

Veja um exemplo básico :

```python
print("Olá, mundo!")
# Olá, mundo!
```

Além disso, a função `print()` também possui diversas outras funcionalidades, além de exibir strings e conteúdo de variáveis.

### outras funcionalidades

1. **exibir múltiplos valores** : é possível passar vários argumentos para `print()`, e eles serão exibidos em sequência, separados por um espaço por padrão. os argumentos podem ser valores literais ou variáveis contendo valores.
    ```python
    print("Python", "é", "nota", 10, "!")
    # Python é nota 10 !

    nota = 10
    linguagem = "Python"

    print(linguagem, "é", 'nota', nota, "!")
    # Python é nota 10 !
    ```

1. **separador personalizado** : sempre que vários argumentos são passados para o `print()` (separados por vírgulas), por padrão, a função adiciona um espaço em branco entre os argumentos. contudo, é possível alterar esse comportamento especificando o argumento `sep` logo antes de fechar o parênteses. o valor que for passado ao `sep` deverá ser uma `string`.
    ```python
    print("Python", "é", "incrível!", sep="-")
    # Python-é-incrível!

    print("Python", "é", "incrível!", sep="_")
    # Python_é_incrível!

    print("Python", "é", "incrível!", sep=" - ")
    # Python - é - incrível!
    ```

1. **fim da linha personalizado** : sempre que se usa o `print()`, por padrão ele adiciona uma nova linha (`\n`) após exibir os valores. esse comportamento pode ser alterado usando o argumento `end` logo antes de fechar os parênteses. o valor que for passado ao `end` deverá ser uma `string`.
    ```python
    print("Olá,", end=" ")
    print("mundo!")
    # Olá, mundo!

    nome = 'Arnold Schwarzenegger'
    i = 0  # abreviação de índice
    while i < len(nome):
        print(nome[i], end='+-+')
        i = i + 1
    # A+-+r+-+n+-+o+-+l+-+d+-+ +-+S+-+c+-+h+-+w+-+a+-+r+-+z+-+e+-+n+-+e+-+g+-+g+-+e+-+r+-+
    ```
    Repare que, no exemplo acima, o `print()` dentro do loop `while` adiciona um `+-+` sempre que é executado, mesmo no último caractere do nome.

1. **combinando** : tanto o `sep` quanto o `end` podem ser usados juntos.
    ```python
    linguagem = 'Python'
    print(linguagem, "é", "incrível", sep="-", end="!")
    # Python-é-incrível!
    ```
    No exemplo acima, é usado o `sep` para adicionar um traço entre cada argumento e é usado o `end` para adicionar o sinal de exclamação ao final da frase. Por causa desse comportamento do `end`, o prompt de entrada do Python fica na mesma linha.

### tudo para string

Qualquer objeto passado para `print()` é convertido em uma string usando a função `str()`. Isso significa que mesmo se você passar um número, uma lista, ou outro tipo de objeto, ele será exibido como uma string correspondente.

```python
numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
valor = 42
print(valor, numeros)
# 42 [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

### exercícios print()

<details>
<summary>Lista de Exercícios</summary>

1. exercícios usando o argumento `sep`
    1. Crie três variáveis inteiras e exiba-as usando `print()` com `sep='-'` entre os valores.
    1. Crie uma lista de números inteiros e exiba seus elementos separados por espaços usando `print()` e `sep=' '`.
    1. Crie três variáveis de tipo `float` e exiba-as usando `print()` com `sep=' | '`.
    1. Crie uma lista de strings e exiba os elementos separados por vírgulas usando `print()` e `sep=', '`.
    1. Crie quatro variáveis booleanas e exiba-as usando `print()` com `sep=' & '`.
    1. Crie uma lista de números inteiros e use um loop `while` para exibir os elementos separados por ponto e vírgula (`;`) usando `print()` e `sep=';'`.
    1. Crie três variáveis do tipo `str` e exiba-as usando `print()` com `sep='-'` somente se a primeira variável for igual à segunda.
    1. Crie uma lista de números `float` e exiba os elementos separados por um asterisco (`*`) usando `print()` e `sep='*'`.
    1. Crie uma lista de variáveis booleanas e exiba os elementos separados por dois pontos (`:`) usando `print()` e `sep=':'`.
    1. Crie quatro variáveis do tipo `int`, `float`, `bool` e `str`, e exiba-as usando `print()` com `sep=' -> '`.
1. Exercícios usando o argumento `end`
    1. Crie três variáveis inteiras e exiba-as em uma linha usando `print()` com `end=' '`.
    1. Crie uma lista de strings e exiba cada elemento em uma linha separada, mas sem quebrar a linha ao final, usando `print()` com `end=''`.
    1. Crie duas variáveis `float` e exiba-as com `print()` usando `end='|'` entre elas.
    1. Crie uma lista de variáveis booleanas e use um loop `while` para exibir cada elemento em uma linha, seguido por uma vírgula, usando `print()` com `end=','`.
    1. Crie três variáveis de tipo `str` e exiba-as usando `print()` com `end=' END '`.
    1. Crie uma lista de números inteiros e use um loop `while` para exibir os elementos, cada um seguido de três pontos (`...`), usando `print()` com `end='...'`.
    1. Crie quatro variáveis do tipo `bool`, `int`, `str`, e `float`, e exiba-as usando `print()` com `end=' -> '`.
    1. Crie três variáveis do tipo `float` e exiba-as em uma linha usando `print()` com `end=' | '`.
    1. Crie uma lista de strings e use um loop `while` para exibir cada elemento, seguido por uma barra (`/`), usando `print()` com `end='/'`.
    1. Crie quatro variáveis do tipo `str` e exiba-as em uma linha usando `print()` com `end=' === '`.
1. Exercícios usando `sep` e `end` combinados
    1. Crie três variáveis inteiras e exiba-as em uma linha usando `print()` com `sep='-'` e `end='.'`.
    1. Crie uma lista de strings e exiba os elementos separados por vírgulas e finalizando com um ponto (`.`) usando `print()` com `sep=','` e `end='.'`.
    1. Crie três variáveis do tipo `float` e exiba-as em uma linha usando `print()` com `sep=':'` e `end=' END'`.
    1. Crie uma lista de números inteiros e exiba os elementos separados por espaço e finalizando com três pontos (`...`) usando `print()` com `sep=' '` e `end='...'`.
    1. Crie três variáveis do tipo `bool` e exiba-as em uma linha usando `print()` com `sep=' | '` e `end=' END'`.
    1. Crie uma lista de números `float` e exiba os elementos separados por asteriscos e finalizando com uma barra (`/`) usando `print()` com `sep='*'` e `end='/'`.
    1. Crie quatro variáveis do tipo `str`, `int`, `float`, e `bool`, e exiba-as em uma linha usando `print()` com `sep=' -> '` e `end=' END'`.
    1. Crie uma lista de strings e exiba os elementos separados por vírgulas e finalizando com uma linha em branco usando `print()` com `sep=','` e `end='\n'`.
    1. Crie três variáveis do tipo `str` e exiba-as em uma linha usando `print()` com `sep='-'` e `end=' !'`.
    1. Crie uma lista de números inteiros e exiba os elementos separados por ponto e finalizando com uma mensagem personalizada usando `print()` com `sep='.'` e `end=' - Fim da lista'`.

</details>

## `len()`

A função `len()` retorna o comprimento (número de itens) de um objeto, como uma string, lista, tupla, conjunto.

```python
planetas = ["Mercúrio", "Vênus", "Terra", "Marte"]
sobrenome = 'Schwarzenegger'

print(len(planetas))  # saída : 4
print(len(planetas[2]))  # saída (tamanho da palavra Terra) : 5
print(len(sobrenome))  # saída : 14
```

## `input()`
A função `input()` lê uma entrada do usuário e a retorna como uma string.

```python
nome = input("Digite seu nome: ")
print("Olá, " + nome + "!")
```

```
Digite seu nome: Schwarzenegger
Olá, Schwarzenegger!
```

## `range()`

A função `range()` é usada para gerar uma sequência de números. Ela é frequentemente utilizada em loops `for` para iterar um número específico de vezes. O `range()` pode ser utilizado de três maneiras diferentes, dependendo de quantos argumentos você fornecer.

```python
# sintaxe básica
range(stop)
range(start, stop[, step])
```

- **`start`** (opcional): O número inicial da sequência. O valor padrão é `0`;
- **`stop`**: O número onde a sequência termina (não incluído);
- **`step`** (opcional): A diferença entre cada número na sequência. O valor padrão é `1`;

Veja alguns exemplos de uso

1. gerando uma sequência simples de 0 a n-1 :
    ```python
    for i in range(5):
        print(i)
    # 0
    # 1
    # 2
    # 3
    # 4
    ```

1. especificando o valor inicial (`start`) e final (`stop`) :
    ```python
    for i in range(2,7):
        print(i)
    # 2
    # 3
    # 4
    # 5
    # 6
    ```

1. usando um `step` crescente (incremento) :
    ```python
    for i in range(1, 10, 2):
        print(i)
    # 1
    # 3
    # 5
    # 7
    # 9
    >>>
    ```

1. usando um `step` decrescente (step negativo) :
    ```python
    for i in range(10, 0, -2):
        print(i)
    # 10
    # 8
    # 6
    # 4
    # 2
    ```

1. embora `range()` crie um objeto de intervalo (e não uma lista), é possível convertê-lo em uma lista usando a função `list()` :
    ```python
    lista = list(range(10))
    print(lista)
    # [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    ```
    É muito útil para gerar sequências de números de forma instantânea.

1. se precisar acessar os índices de uma lista em vez de seus valores diretamente, é possível combinar `range()` com `len()` :
    ```python
    frutas = ['maçã', 'banana', 'laranja']
    for i in range(len(frutas)):
        print(f'índice {i} tem a fruta {frutas[i]}')
    # índice 0 tem a fruta maçã
    # índice 1 tem a fruta banana
    # índice 2 tem a fruta laranja
    ```

1. veja mais alguns usos do `range()` :
   ```python
    # criando uma sequência de números pares
    pares = list(range(0, 21, 0))
    print(pares)
    # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

    # criando uma sequência de números ímpares
    impares = list(range(1, 22, 2))
    print(impares)
    # [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]

    # criando uma sequência decrescente
    descrescente = list(range(10, 0, -1))
    print(descrescente)
    # [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

    # combinando for, range e condicionais
    for i in range(1, 10):
        if i % 2 == 0:
            print(f'{i} é par')
        else:
            print(f'{i} é ímpar')
    # 1 é ímpar
    # 2 é par
    # 3 é ímpar
    # 4 é par
    # 5 é ímpar
    # 6 é par
    # 7 é ímpar
    # 8 é par
    # 9 é ímpar
    ```

### exercícios range

<details>
<summary>Lista de Exercícios</summary>

1. Use `range()` para imprimir os números de 0 a 10.
1. Use `range()` para imprimir os números de 5 a 15.
1. Use `range()` para imprimir os números pares de 0 a 20.
1. Use `range()` para imprimir os números ímpares de 1 a 19.
1. Use `range()` para imprimir os números de 10 a 0 em ordem decrescente.
1. Use `range()` para criar uma lista de números de 0 a 9 e imprimi-la.
1. Use `range()` para somar todos os números de 1 a 100.
1. Use `range()` para imprimir todos os múltiplos de 3 entre 0 e 30.
1. Use `range()` para criar uma lista de números de 5 a 15 e imprimi-la.
1. Use `range()` para imprimir os números de 0 a 10, com passos de 2.
1. Use `range()` para criar uma lista com os números de 50 a 100, com passos de 5, e imprimi-la.
1. Use `range()` para imprimir os números de 100 a 50 em ordem decrescente.
1. Use `range()` para calcular o produto de todos os números de 1 a 10.
1. Use `range()` para criar uma lista de números de 1 a 9 e imprimi-la.
1. Use `range()` para imprimir os números negativos de -10 a -1.
1. Use `range()` para criar uma lista de números de 0 a 100 com passos de 10 e imprimi-la.
1. Use `range()` para imprimir os números de 5 a 25, com passos de 5.
1. Use `range()` para somar todos os números ímpares entre 0 e 100.
1. Use `range()` para imprimir os números de 10 a 1 em ordem decrescente.
1. Use `range()` para criar uma lista de números de 20 a 30 e imprimi-la.
1. Use `range()` para imprimir os números de 2 a 20, com passos de 2.
1. Use `range()` para calcular a soma dos números múltiplos de 5 entre 0 e 50.
1. Use `range()` para criar uma lista de números de 10 a 100, com passos de 10, e imprimi-la.
1. Use `range()` para imprimir os números de -5 a 5.
1. Use `range()` para criar uma lista com os números de 0 a 9 em ordem reversa e imprimi-la.

</details>
