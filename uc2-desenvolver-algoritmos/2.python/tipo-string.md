Índice

1. [sintaxe](#sintaxe)
1. [caracteres especiais](#caracteres-especiais)
1. [string crua](#string-crua)
1. [string literal](#string-literal)
1. [exercícios - parte 1](#exercícios---parte-1)
1. [concatenando strings](#concatenando-strings)
1. [multiplicando strings](#multiplicando-strings)
1. [indexando strings](#indexando-strings)
1. [dividindo strings](#dividindo-strings)
1. [exercícios - parte 2](#exercícios---parte-2)
<details>
<summary>métodos da string</summary>

1. [str.upper()](#strupper)
1. [str.lower()](#strlower)
1. [str.capitalize()](#strcapitalize)
1. [str.title()](#strtitle)
1. [str.strip()](#strstrip)
1. [str.lstrip()](#strlstrip)
1. [str.rstrip()](#strrstrip)
1. [str.replace()](#strreplace)
1. [str.split()](#strsplit)
1. [str.join()](#strjoin)
1. [str.find()](#strfind)
1. [str.startswith()](#strstartswith)
1. [str.endswith()](#strendswith)
1. [str.isalpha()](#strisalpha)
1. [str.isdigit()](#strisdigit)
1. [str.isalnum()](#strisalnum)
1. [str.isspace()](#strisspace)
1. [str.isupper()](#strisupper)
1. [str.islower()](#strislower)
1. [str.zfill()](#strzfill)
1. [str.center()](#strcenter)
1. [str.ljust()](#strljust)
1. [str.rjust()](#strrjust)
1. [str.partition()](#strpartition)
1. [str.rpartition()](#strrpartition)

</details>

# tipo string

O Python pode manipular texto (representado pelo tipo `str`, também chamado de `strings`), bem como os números. Isso inclui caracteres `!`, palavras `coelho`, nomes `Paris`, frases `Eu te protejo.`, `Oba! :)` etc.. Eles podem ser colocados entre aspas simples `'...'` ou aspas duplas `"..."` com o mesmo resultado.

```python
>>> 'sou um texto'  # aspas simples
'sou um texto'
>>> "sou outro texto"  # aspas duplas
'sou outro texto'
>>> '1984'  # dígitos e números entre aspas também são strings
'1984'
```

## sintaxe

Para colocar aspas entre aspas, precisamos "escapá-la", precedendo-as com `\`. Alternativamente, podemos usar o outro tipo de aspas:

```python
>>> 'The Kids Aren\'t Alright'  # use \' para escapar as aspas simples...
"The Kids Aren't Alright"
>>> "The Kids Aren't Alright"  # ou use aspas duplas
"The Kids Aren't Alright"
>>>
>>> '"pois não", disse o garçom'
'"pois não", disse o garçom'
>>> "\"pois não\", disse o garçom"
'"pois não", disse o garçom'
>>> |
```

No shell do Python, a definição de string e a string de saída podem parecer diferentes. A função `print()` produz uma saída mais legível, omitindo as aspas delimitadoras e imprimindo caracteres de escape e especiais:
```python
>>> texto = 'linha um\nlinha dois'
>>> texto  # sem o print(), caracteres especiais são incluídos na string
'linha um\nlinha dois'
>>> print(texto)  # com o print, os caracteres especiais são interpretados
linha um
linha dois
>>>
```

## caracteres especiais

Os caracteres especiais são uma forma de mandar para a linguagem de programação comandos a serem executados de dentro da string :

- `\n` : é usado quando se quer criar uma nova linha na exibição do texto;
```python
>>> print('linha 1\nlinha 2\nlinha 3\nlinha 4\n')
linha 1
linha 2
linha 3
linha 4

>>> |
```
- `\t` : é usado quando se quer inserir uma tabulação no texto;
```python
>>> print('sem tabulação\n\tuma tabulação\n\t\tduas tabulações\n\t\t\ttrês tabulações')
sem tabulação
    uma tabulação
        duas tabulações
            três tabulações
>>> |
```

## string crua

Se não quiser que os caracteres precedidos por `\` sejam interpretados como caracteres especiais, pode-se usar strings `raw` ("crua" ou sem processamento de caracteres de escape) adicionando um r antes da primeira aspa ou então colocando duas `\\`:

```python
>>> print('C:\nemo')  # aqui \n indica nova linha!
C:
emo
>>> print(r'C:\nemo')  # note o r antes da aspa
C:\nemo
>>> print('c:\nemo\\nemo')  # repare no uso duplo da \\
c:
emo\nemo
>>> |
```

Há um aspecto sutil nas strings raw: uma string raw não pode terminar em um número ímpar de caracteres `\`.

```python
>>> print(r'C:\nemo\\')
C:\nemo\\
>>>
>>> print(r'C:\nemo\\\')
  File "<stdin>", line 1
    print(r'C:\nemo\\\')
          ^
SyntaxError: unterminated string literal (detected at line 1)

# mais exemplos
print('uma tabulação\\tdois')
print('C:\\usuario\\ted')
>>> |
```

## string literal

As strings literais podem abranger várias linhas. Uma maneira é usar as aspas triplas: `"""..."""` ou `'''...'''`. O fim das linhas é incluído automaticamente na string, mas é possível evitar isso adicionando uma `\` no final.
O seguinte exemplo:
```python
>>> print("""\
... Uso: alguma coisa [opcional]
...     -h                      Mostra esta mensagem.
...     -H hostname             Nome do host para conectar.
... """)
Uso: alguma coisa [opcional]
  -h              Mostra esta mensagem.
  -H hostname     Nome do host para conectar.

>>> |
```

```python
>>> print("""sou uma string
... dividida em apenas \
... duas linhas""")
sou uma string
dividida em apenas duas linhas
>>> |
```

## exercícios - parte 1

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios Simples
    1. Crie uma string com seu nome e imprima-a.
    1. Crie uma string com uma citação famosa e imprima-a.
    1. Use aspas duplas para criar uma string e imprima-a.
    1. Use aspas simples para criar uma string e imprima-a.
    1. Crie uma string com aspas dentro dela, usando aspas duplas e simples, e imprima-a.
    1. Crie uma string que contenha uma nova linha (\n) e imprima-a.
    1. Crie uma string que contenha um tab (\t) e imprima-a.
    1. Crie uma string que contenha tanto \n quanto \t e imprima-a.
    1. Crie uma string que contenha barras invertidas (\\) e imprima-a.
    1. Crie uma string usando raw string (prefixo r) e imprima-a.
1. Exercícios de Nível Intermediário
    1. Crie uma string com várias linhas usando \n e imprima-a.
    1. Crie uma string com várias tabs usando \t e imprima-a.
    1. Crie uma string com um caminho de arquivo usando barras invertidas e imprima-a.
    1. Use raw string para criar um caminho de arquivo e imprima-a.
    1. Combine aspas duplas e simples em uma string e imprima-a.
    1. Crie uma string que contenha aspas simples escapadas e imprima-a.
    1. Crie uma string que contenha aspas duplas escapadas e imprima-a.
    1. Crie uma string com uma citação famosa usando raw string e imprima-a.
    1. Crie uma string que contenha um caractere de nova linha escapado (\\n) e imprima-a.
    1. Crie uma string que contenha um caractere de tab escapado (\\t) e imprima-a.
1. Exercícios Avançados
    1. Crie uma string longa usando múltiplas linhas e o caractere \n e imprima-a.
    1. Crie uma string longa usando múltiplas tabs e o caractere \t e imprima-a.
    1. Crie uma string com várias barras invertidas (\\\\) e imprima-a.
    1. Crie uma string que combine várias linhas, tabs e barras invertidas e imprima-a.
    1. Use raw string para criar uma string com várias linhas e tente imprimi-la.
    1. Use raw string para criar uma string com várias tabs e tente imprimí-la.
    1. Use raw string para criar uma string com várias barras invertidas e imprima-a.
    1. Combine aspas duplas, simples e barras invertidas em uma string e imprima-a.
    1. Crie uma string com uma citação famosa que contenha várias linhas e imprima-a.
    1. Crie uma string com um poema que contenha várias tabs e imprima-a.
1. Exercícios Complexos
    1. Crie uma string que represente uma linha de JSON e imprima-a.
    1. Crie uma string que represente uma linha de script HTML e imprima-a.
    1. Crie uma string que contenha CSS com várias linhas e imprima-a.
    1. Crie uma string que contenha código Python com várias linhas e imprima-a.
    1. Crie uma string com uma mensagem que use aspas duplas, simples, \n e \t, e imprima-a.
    1. Crie uma string que represente um caminho de rede e imprima-a.
    1. Crie uma string que contenha uma citação longa com várias linhas e tabs, e imprima-a.
    1. Use raw string para criar uma string com código Python e imprima-a.
    1. Use raw string para criar uma string com script HTML e imprima-a.
    1. Use raw string para criar uma string com CSS e imprima-a.
1. Exercícios Muito Complexos
    1. Crie uma string que contenha um bloco de código JSON com várias linhas e imprima-a.
    1. Crie uma string que contenha um bloco de código HTML com várias linhas e imprima-a.
    1. Crie uma string que contenha um bloco de código CSS com várias linhas e imprima-a.
    1. Crie uma string que contenha um bloco de código Python com várias linhas e imprima-a.
    1. Combine raw string com uma string que contenha um bloco de código Python e imprima-a.
    1. Combine raw string com uma string que contenha um bloco de código HTML e imprima-a.
    1. Combine raw string com uma string que contenha um bloco de código CSS e imprima-a.
    1. Crie uma string que contenha um caminho de arquivo complexo e imprima-a.
    1. Crie uma string que combine várias técnicas de formatação (raw string, escapamento, \n, \t) e imprima-a.
    1. Crie uma string que contenha um script completo em qualquer linguagem de programação e imprima-a.

</details>

## concatenando strings

As strings podem ser concatenadas (coladas, "somadas") com o operador `+` ou então apenas deixando um espaço entre elas :
```python
>>> 'Py' + 'thon'
'Python'
>>> 'Arnold' + ' ' + 'Schwarzenegger'
'Arnold Schwarzenegger'
>>> 'Arnold' ' ' 'Schwarzenegger'
'Arnold Schwarzenegger'
>>> 'Arnold ' 'Schwarzenegger'
'Arnold Schwarzenegger'
>>> |
```

Concaternar strings com espaço pode ser útil para quebrar uma longa string e várias linhas :
```python
>>> texto = ('Coloque várias strings dentro de parênteses '
...          'para juntá-las em uma.')
>>> texto
'Coloque várias strings dentro de parênteses para juntá-las em uma.'
>>> |
```

Strings literais não podem ser concatenadas com variáveis dessa forma, mesmo elas também sendo strings.
Para isso funcionar, é necessário usar o operador `+`.

Veja exemplos :
```python
>>> # definindo as variáveis
>>> nome = 'Arnold'
>>> sobrenome = 'Schwarzenegger'
```
```python
>>> # mostrando os erros
>>> nome 'Schwarzenegger'
  File "<stdin>", line 1
    nome 'Schwarzenegger'
         ^^^^^^^^^^^^^^^^
SyntaxError: invalid syntax
>>>
>>> print('Arnold' sobrenome)
  File "<stdin>", line 1
    print('Arnold' sobrenome)
          ^^^^^^^^^^^^^^^^^^
SyntaxError: invalid syntax. Perhaps you forgot a comma?
>>>
>>> nome sobrenome
  File "<stdin>", line 1
    nome sobrenome
         ^^^^^^^^^
SyntaxError: invalid syntax
>>>
>>> print(nome sobrenome)
  File "<stdin>", line 1
    print(nome sobrenome)
          ^^^^^^^^^^^^^^
SyntaxError: invalid syntax. Perhaps you forgot a comma?
```
```python
>>> # mostrando como funciona
>>> nome + 'Schwarzenegger'
'ArnoldSchwarzenegger'
>>> print('Arnold' 'Schwarzenegger')
ArnoldSchwarzenegger
>>> print(nome + ' ' + sobrenome)
Arnold Schwarzenegger
>>> |
```

## multiplicando strings

Também é possível usar o operador de multiplicação `*` para manipular as string.

```python
>>> 5 * nome
'ArnoldArnoldArnoldArnoldArnold'
>>> print(25 * '=-' + '=')
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
>>> print(" + " * 20)
 +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +  +
>>> |
```

## combinando os operadores

É possível usar ambos os operadores de uma vez :
```python
>>> 3 * nome + ' ' +  sobrenome
'ArnoldArnoldArnold Schwarzenegger'
>>> |
```

## indexando strings

Uma string nada mais é do que uma sucessão de caracteres. Diferente dos números, onde o valor 2.147.483.648 corresponde a apenas um valor, uma palavra é composta por diversos caracteres. Por causa disso, é possível *indexar* uma string com o primeiro caractere iniciando em `zero`.

Veja abaixo :
```python
>>> sobrenome = 'Schwarzenegger'
>>> sobrenome[0]  # caractere na posição 0
'S'
>>> sobrenome[5]  # caractere na posição 5
'r'
```

Também é possível usar números negativos e começar a contagem da direita :
```python
>>> sobrenome[-1]
'r'
>>> sobrenome[-2]
'e'
>>> sobrenome[-7]
'e'
>>> |
```

Repare que, como -0 é a mesma coisa que 0, os índices negativos iniciam em `-1`.

## dividindo strings
Além de indexar, as strings também podem ser *divididas*. Enquanto indexar é usado para obter um caractere, dividir permite obter uma substring a partir da original.

Veja abaixo :
```python
>>> sobrenome[0:5]  # caracteres da posição 0 (incluída) até 5 (excluída)
'Schwa'
>>> sobrenome[5:8]  # caracteres da posição 5 (incluída) até 8 (excluída)
'rze'
>>> |
```

Dividir índices tem alguns padrões interessantes. Se o primeiro índice for omitido, o valor padrão é zero. Se o segundo índice é omitido, o tamanho da string é o valor padrão. Veja :
```python
>>> sobrenome[:6]  # caractere iniciado do início até a posição 6 (excluída)
'Schwar'
>>> sobrenome[8:]  # caracteres da posição 8 (incluída) até o final
'enegger'
>>> sobrenome[-3:]  # caracteres da terceira última posição (incluída) até o final
'ger'
>>> |
```

Repare que o índice inicial é sempre incluído e o último é sempre excluído. Isso é feito dessa maneira para que `sobrenome[:i] + sobrenome[i:]` seja **sempre** igual a `sobrenome` :
```python
>>> sobrenome[:6] + sobrenome[6:]
'Schwarzenegger'
>>>
>>> sobrenome[:9] + sobrenome[9:]
'Schwarzenegger'
>>> |
```

Uma forma de lembrar como a divisão de strings funciona é pensar nos índices como ponteiros entre os caracteres, com a margem esquerda so primeiro caractere iniciando em 0. E a margem da direita do último caractere da string de tamanho *n* tem o índice *n*.

Veja um exemplo :
```
  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+
  | S | c | h | w | a | r | z | e | n | e | g | g | e | r |
  +---+---+---+---+---+---+---+---+---+---+---+---+---+---+
  0   1   2   3   4   5   6   7   8   9  10  11  12  13  14
-14 -13 -12 -11 -10  -9  -8  -7  -6  -5  -4  -3  -2  -1
```
A primeira linha de números mostra a posição dos índices 0..14 da string. A segunda linha mostra os índices negativos correspondentes. A divisão de `i` a `j` consiste em todos os caracteres entre as margens marcadas com `i` e `j`, respectivamente.

Tentar acessar um índice maior que a string irá levantar um erro, mas se tentar acessar um índice da divisão maior que o tamanho da string, não acontece o erro :
```python
>>> sobrenome = 'Schwarzenegger'
>>> sobrenome[42]
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: string index out of range
>>> sobrenome[6:42]
'zenegger'
>>> sobrenome[42:]
''
>>> |
```

## exercícios - parte 2

<details>
    <summary>Lista de Exercícios</summary>

1. Exercícios Simples
    1. Concatene as strings "Olá " e "Mundo".
    1. Concatene as strings "Python" e "Programação".
    1. Multiplique a string "Olá " por 3.
    1. Acesse o primeiro caractere da string "Olá ".
    1. Acesse o último caractere da string "Mundo".
    1. Concatene as strings "Py" e "thon".
    1. Concatene as strings "Senac " e "Tech".
    1. Multiplique a string "Python" por 2.
    1. Acesse o segundo caractere da string "Django".
    1. Acesse o penúltimo caractere da string "Desenvolvimento Web".
1. Exercícios de Nível Intermediário
    1. Concatene as strings "Aprendizado de" e "Máquina".
    1. Multiplique a string "Dados" por 4.
    1. Acesse o terceiro caractere da string "Inteligência".
    1. Acesse o antepenúltimo caractere da string "Artificial".
    1. Concatene as strings "Big" e "Data" e acesse o quinto caractere.
    1. Concatene as strings "Deep" e "Learning".
    1. Multiplique a string "Neural" por 3.
    1. Acesse o quarto caractere da string "Networks".
    1. Acesse o primeiro caractere da string concatenada "LinguagemNatural".
    1. Acesse o último caractere da string concatenada "LinguagemNatural".
1. Exercícios Avançados
    1. Concatene as strings "Olá " e " " e "Mundo".
    1. Acesse o quinto caractere da string "Inteligência Artificial".
    1. Multiplique a string "Big" por 5 e acesse o terceiro caractere.
    1. Concatene as strings "Deep" e " " e "Learning".
    1. Acesse o primeiro caractere da string "Neural" multiplicada por 3.
    1. Acesse o terceiro caractere da string concatenada "Ciência de Dados".
    1. Concatene as strings "Senac" e " " e "Tech" e acesse o último caractere.
    1. Multiplique a string "Máquina" por 2 e acesse o décimo caractere.
    1. Acesse o segundo caractere da string "Aprendizagem Profunda".
    1. Concatene as strings "Linguagem" e "Natural" e acesse o sexto caractere.
1. Exercícios Complexos
    1. Acesse o primeiro e último caractere da string "Programando em Python".
    1. Multiplique a string "Python 3.12" por 4 e acesse o oitavo caractere.
    1. Concatene as strings "Aprendizado" e " " e "Máquina" e acesse o décimo segundo caractere.
    1. Acesse o penúltimo caractere da string "Inteligência Artificial".
    1. Multiplique a string "Aprendizagem Profunda" por 2 e acesse o vigésimo caractere.
    1. Acesse o quinto caractere da string concatenada "BigData".
    1. Concatene as strings "Redes" e " " e "Neurais" e acesse o décimo quinto caractere.
    1. Multiplique a string "LinguagemNatural" por 3 e acesse o vigésimo terceiro caractere.
    1. Acesse o segundo caractere da string "Ciência de Dados".
    1. Concatene as strings "Olá " e "Mundo" e acesse o sexto caractere.
1. Exercícios Muito Complexos
    1. Acesse o primeiro e último caractere da string concatenada "Inteligência Artificial".
    1. Multiplique a string "Linguagem de Progamação Python" por 6 e acesse o trigésimo segundo caractere.
    1. Concatene as strings "Senac Tech" e "Escola de Tecnologia" e acesse o décimo nono caractere.
    1. Acesse o penúltimo caractere da string "Aprendizado Profundo e Redes Neurais".
    1. Multiplique a string "BigData" por 5 e acesse o quadragésimo quinto caractere.
    1. Concatene as strings "Ciência" e "de Dados" e acesse o décimo segundo caractere.
    1. Multiplique a string "Redes Neurais" por 3 e acesse o vigésimo quinto caractere.
    1. Acesse o terceiro caractere da string concatenada "Processamento de Linguagem Natural".
    1. Concatene as strings "Olá " e " " e "Mundo" e acesse o décimo quinto caractere.
    1. Acesse o segundo e último caractere da string "Inteligência Artificial" multiplicada por 2.

</details>

## métodos das strings

As strings em Python são sequências imutáveis de caracteres que possuem vários métodos embutidos, os quais permitem realizar uma ampla variedade de operações.

### `str.upper()`

O método `upper()` converte todos os caracteres alfabéticos de uma string para maiúsculas. Ele não afeta números, espaços em branco ou caracteres especiais.

```python
# Exemplo básico
texto = "hello world"
print(texto.upper())  # saída : "HELLO WORLD"

# Mistura de letras maiúsculas e minúsculas
texto = "Python is Fun!"
print(texto.upper())  # saída : "PYTHON IS FUN!"

# String com números e caracteres especiais
texto = "Python 3.12!"
print(texto.upper())  # saída : "PYTHON 3.12!"
```

### `str.lower()`

O método `lower()` converte todos os caracteres alfabéticos de uma string para minúsculas. Assim como `upper()`, ele não altera números, espaços em branco ou caracteres especiais.

```python
# Exemplo básico
texto = "HELLO WORLD"
print(texto.lower())  # saída : "hello world"

# Mistura de letras maiúsculas e minúsculas
texto = "Python Is Fun!"
print(texto.lower())  # saída : "python is fun!"

# String com números e caracteres especiais
texto = "Python 3.12!"
print(texto.lower())  # saída : "python 3.12!"
```

### `str.capitalize()`

O método `capitalize()` converte o primeiro caractere da string para maiúscula e todos os outros caracteres alfabéticos para minúscula. Se o primeiro caractere já for maiúsculo ou não for uma letra, ele permanece inalterado.

```python
# Exemplo básico
texto = "hello world"
print(texto.capitalize())  # saída : "Hello world"

# Primeira letra maiúscula, mas as demais já estão maiúsculas
texto = "HELLO WORLD"
print(texto.capitalize())  # saída : "Hello world"

# String começando com número
texto = "123 python"
print(texto.capitalize())  # saída : "123 python"
```

### `str.title()`

O método `title()` converte o primeiro caractere de cada palavra na string para maiúscula e o restante para minúscula. Este método considera qualquer caractere não alfabético (como espaços ou pontuação) como delimitador de palavras.

```python
# Exemplo básico
texto = "hello world"
print(texto.title())  # saída : "Hello World"

# Mistura de maiúsculas e minúsculas
texto = "python is FUN!"
print(texto.title())  # saída : "Python Is Fun!"

# String com caracteres especiais
texto = "welcome to python's world!"
print(texto.title())  # saída : "Welcome To Python'S World!"
```

### `str.strip()`

O método `strip()` remove os espaços em branco do início e do final da string. Além dos espaços em branco, você pode especificar caracteres adicionais a serem removidos.

```python
# Exemplo básico
texto = "   hello world   "
print(texto.strip())  # saída : "hello world"

# Removendo caracteres específicos
texto = "***hello world***"
print(texto.strip('*'))  # saída : "hello world"

# Removendo múltiplos caracteres específicos
texto = "!!!hello world###"
print(texto.strip('!#'))  # saída : "hello world"
```

### `str.lstrip()`

O método `lstrip()` remove os espaços em branco do início da string (lado esquerdo). Ele também pode remover caracteres específicos se forem fornecidos.

```python
# Exemplo básico
texto = "   hello world   "
print(texto.lstrip())  # saída : "hello world   "

# Removendo caracteres específicos
texto = "***hello world***"
print(texto.lstrip('*'))  # saída : "hello world***"

# Removendo múltiplos caracteres específicos
texto = "!!!hello world###"
print(texto.lstrip('!#'))  # saída : "hello world###"
```

### `str.rstrip()`

O método `rstrip()` remove os espaços em branco do final da string (lado direito). Ele também pode remover caracteres específicos se forem fornecidos.

```python
# Exemplo básico
texto = "   hello world   "
print(texto.rstrip())  # saída : "   hello world"

# Removendo caracteres específicos
texto = "***hello world***"
print(texto.rstrip('*'))  # saída : "***hello world"

# Removendo múltiplos caracteres específicos
texto = "!!!hello world###"
print(texto.rstrip('!#'))  # saída : "!!!hello world"
```

### `str.replace()`

O método `replace(old, new[, count])` substitui todas as ocorrências de uma substring por outra dentro da string. Se o argumento `count` for fornecido, ele limitará o número de substituições.

```python
# Substituindo todas as ocorrências
texto = "hello world"
print(texto.replace("world", "Python"))  # saída : "hello Python"

# Limitando o número de substituições
texto = "banana"
print(texto.replace("a", "o", 2))  # saída : "bonona"

# Substituindo uma sequência de caracteres por outra
texto = "abra kadabra"
print(texto.replace("abra", "magic"))  # saída : "magic kadmagic"
```

### `str.split()`

O método `split(separator[, maxsplit])` divide uma string em uma lista de substrings com base em um separador específico. Se `separator` não for especificado, espaços em branco serão usados por padrão. O argumento `maxsplit` limita o número de divisões.

```python
# Exemplo básico com separador padrão (espaço em branco)
texto = "hello world python"
print(texto.split())  # saída : ['hello', 'world', 'python']

# Dividindo com um separador específico
texto = "hello,world,python"
print(texto.split(','))  # saída : ['hello', 'world', 'python']

# Limitando o número de divisões
print(texto.split(',', 1))  # saída : ['hello', 'world,python']

# Dividindo com múltiplos espaços
texto = "hello   world   python"
print(texto.split())  # saída : ['hello', 'world', 'python']
```

### `str.join()`

O método `join(iterable)` combina elementos de um iterável (como listas ou tuplas) em uma única string, usando a string original como separador. Este método é frequentemente usado para converter listas de strings em uma única string.

```python
# Exemplo básico com espaço como separador
lista = ['hello', 'world', 'python']
print(' '.join(lista))  # saída : "hello world python"

# Usando outro separador
print(','.join(lista))  # saída : "hello,world,python"

# Usando uma string vazia como separador
print(''.join(lista))  # saída : "helloworldpython"

# Unindo elementos de uma lista de números (convertidos para strings)
numeros = ['1', '2', '3', '4']
print('-'.join(numeros))  # saída : "1-2-3-4"
```

### `str.find()`

O método `find(sub[, start[, end]])` retorna o índice da primeira ocorrência da substring `sub` na string. Se a substring não for encontrada, ele retorna `-1`. Os parâmetros `start` e `end` são opcionais e podem limitar a busca a um intervalo específico.

```python
# Encontrando a primeira ocorrência
texto = "hello world"
print(texto.find('world'))  # saída : 6

# Buscando a partir de um índice específico
print(texto.find('l', 4))  # saída : 9

# Quando a substring não é encontrada
print(texto.find('Python'))  # saída : -1

# Buscando em um intervalo específico
texto = "abracadabra"
print(texto.find('abra', 1, 7))  # saída : 7
```

### `str.rfind()`

O método `rfind(sub[, start[, end]])` é similar ao `find()`, mas busca pela última ocorrência da substring `sub` na string. Se a substring não for encontrada, ele retorna `-1`. Os parâmetros `start` e `end` são opcionais.

```python
# Encontrando a última ocorrência
texto = "abracadabra"
print(texto.rfind('abra'))  # saída : 7

# Buscando a partir de um índice específico
print(texto.rfind('a', 0, 5))  # saída : 3

# Quando a substring não é encontrada
print(texto.rfind('Python'))  # saída : -1

# Buscando em um intervalo específico
print(texto.rfind('bra', 2, 7))  # saída : -1
```

### `str.startswith()`

O método `startswith(prefix[, start[, end]])` verifica se a string começa com a substring `prefix`. Ele retorna `True` se a string começar com o prefixo e `False` caso contrário. Os parâmetros `start` e `end` podem limitar a verificação a um intervalo específico.

```python
# Verificando se começa com determinado prefixo
texto = "hello world"
print(texto.startswith('hello'))  # saída : True

# Verificando com um intervalo específico
print(texto.startswith('world', 6))  # saída : True

# Quando não começa com o prefixo
print(texto.startswith('Python'))  # saída : False

# Verificando com múltiplos prefixos
print(texto.startswith(('hello', 'Hi')))  # saída : True
```

### `str.endswith()`

O método `endswith(suffix[, start[, end]])` verifica se a string termina com a substring `suffix`. Ele retorna `True` se a string terminar com o sufixo e `False` caso contrário. Os parâmetros `start` e `end` podem limitar a verificação a um intervalo específico.

```python
# Verificando se termina com determinado sufixo
texto = "hello world"
print(texto.endswith('world'))  # saída : True

# Verificando com um intervalo específico
print(texto.endswith('hello', 0, 5))  # saída : True

# Quando não termina com o sufixo
print(texto.endswith('Python'))  # saída : False

# Verificando com múltiplos sufixos
print(texto.endswith(('world', 'Python')))  # saída : True
```

### `str.isalpha()`

O método `isalpha()` retorna `True` se todos os caracteres da string forem letras do alfabeto e a string não estiver vazia. Se houver números, espaços ou caracteres especiais, ele retorna `False`.

```python
# Todos os caracteres são letras
texto = "hello"
print(texto.isalpha())  # saída : True

# Contém números
texto = "hello123"
print(texto.isalpha())  # saída : False

# Contém espaços
texto = "hello world"
print(texto.isalpha())  # saída : False

# String vazia
texto = ""
print(texto.isalpha())  # saída : False
```

### `str.isdigit()`

O método `isdigit()` retorna `True` se todos os caracteres da string forem dígitos (0-9) e a string não estiver vazia. Se houver letras, espaços ou caracteres especiais, ele retorna `False`.

```python
# Todos os caracteres são dígitos
texto = "123456"
print(texto.isdigit())  # saída : True

# Contém letras
texto = "123abc"
print(texto.isdigit())  # saída : False

# Contém espaços
texto = "123 456"
print(texto.isdigit())  # saída : False

# String vazia
texto = ""
print(texto.isdigit())  # saída : False
```

### `str.isalnum()`

O método `isalnum()` retorna `True` se todos os caracteres da string forem letras ou dígitos e a string não estiver vazia. Se houver espaços ou caracteres especiais, ele retorna `False`.

```python
# Todos os caracteres são alfanuméricos
texto = "hello123"
print(texto.isalnum())  # saída : True

# Contém espaço
texto = "hello 123"
print(texto.isalnum())  # saída : False

# Contém caracteres especiais
texto = "hello@123"
print(texto.isalnum())  # saída : False

# String vazia
texto = ""
print(texto.isalnum())  # saída : False
```

### `str.isspace()`

O método `isspace()` retorna `True` se todos os caracteres da string forem espaços em branco (incluindo tabulações, quebras de linha, etc.) e a string não estiver vazia. Se houver qualquer outro caractere, ele retorna `False`.

```python
# Todos os caracteres são espaços em branco
texto = "   "
print(texto.isspace())  # saída : True

# Contém um caractere não branco
texto = "   a"
print(texto.isspace())  # saída : False

# String com quebra de linha
texto = "\n\t"
print(texto.isspace())  # saída : True

# String vazia
texto = ""
print(texto.isspace())  # saída : False
```

### `str.isupper()`

O método `isupper()` retorna `True` se todos os caracteres alfabéticos na string forem maiúsculos. Se houver caracteres minúsculos ou a string estiver vazia, ele retorna `False`.

```python
# Todos os caracteres alfabéticos são maiúsculos
texto = "HELLO"
print(texto.isupper())  # saída : True

# Contém caracteres minúsculos
texto = "Hello"
print(texto.isupper())  # saída : False

# String com números e maiúsculas
texto = "123 HELLO"
print(texto.isupper())  # saída : True

# String vazia
texto = ""
print(texto.isupper())  # saída : False
```

### `str.islower()`

O método `islower()` retorna `True` se todos os caracteres alfabéticos na string forem minúsculos. Se houver caracteres maiúsculos ou a string estiver vazia, ele retorna `False`.

```python
# Todos os caracteres alfabéticos são minúsculos
texto = "hello"
print(texto.islower())  # saída : True

# Contém caracteres maiúsculos
texto = "Hello"
print(texto.islower())  # saída : False

# String com números e minúsculas
texto = "123 hello"
print(texto.islower())  # saída : True

# String vazia
texto = ""
print(texto.islower())  # saída : False
```

### `str.zfill()`

O método `zfill(width)` retorna uma cópia da string original preenchida com zeros à esquerda para alcançar um determinado comprimento (`width`). Se a string for maior ou igual ao comprimento especificado, ela será retornada sem alterações.

```python
# Preenchendo com zeros
texto = "42"
print(texto.zfill(5))  # saída : "00042"

# String já maior que o comprimento especificado
texto = "12345"
print(texto.zfill(3))  # saída : "12345"

# Aplicando em uma string negativa
texto = "-42"
print(texto.zfill(5))  # saída : "-0042"

# Aplicando em uma string de caracteres
texto = "abc"
print(texto.zfill(5))  # saída : "00abc"
```

### `str.center()`

O método `center(width[, fillchar])` retorna uma nova string de comprimento `width`, onde a string original é centralizada. Se o `fillchar` for fornecido, ele será usado para preencher os espaços em volta; caso contrário, o espaço será usado.

```python
# Centralizando com espaços
texto = "hello"
print(texto.center(10))  # saída : "  hello   "

# Centralizando com um caractere de preenchimento
print(texto.center(10, '*'))  # saída : "**hello***"

# Comprimento menor que a string original
print(texto.center(4))  # saída : "hello"
```

### `str.ljust()`

O método `ljust(width[, fillchar])` retorna uma nova string de comprimento `width`, onde a string original é justificada à esquerda. Se o `fillchar` for fornecido, ele será usado para preencher o espaço à direita; caso contrário, o espaço será usado.

```python
# Justificando à esquerda com espaços
texto = "hello"
print(texto.ljust(10))  # saída : "hello     "

# Justificando à esquerda com um caractere de preenchimento
print(texto.ljust(10, '-'))  # saída : "hello-----"

# Comprimento menor que a string original
print(texto.ljust(4))  # saída : "hello"
```

### `str.rjust()`

O método `rjust()` retorna uma nova string de comprimento `width`, onde a string original é justificada à direita. Se o `fillchar` for fornecido, ele será usado para preencher o espaço à esquerda; caso contrário, o espaço será usado.

```python
# Justificando à direita com espaços
texto = "hello"
print(texto.rjust(10))  # saída : "     hello"

# Justificando à direita com um caractere de preenchimento
print(texto.rjust(10, '-'))  # saída : "-----hello"

# Comprimento menor que a string original
print(texto.rjust(4))  # saída : "hello"
```

### `str.partition()`

O método `partition(sep)` divide a string em uma tupla de três elementos: a parte antes do separador `sep`, o próprio separador, e a parte após o separador. Se o separador não for encontrado, a tupla conterá a string original e duas strings vazias.

```python
# Separando com um delimitador presente
texto = "hello world python"
print(texto.partition('world'))  # saída : ('hello ', 'world', ' python')

# Separando com um delimitador ausente
print(texto.partition('Python'))  # saída : ('hello world python', '', '')

# Separando no início da string
print(texto.partition('hello'))  # saída : ('', 'hello', ' world python')
```

### `str.rpartition()`

O método `rpartition(sep)` é similar ao `partition()`, mas a divisão ocorre na última ocorrência do separador `sep`.

```python
# Separando com um delimitador presente
texto = "hello world world"
print(texto.rpartition('world'))  # saída : ('hello world ', 'world', '')

# Separando com um delimitador ausente
print(texto.rpartition('Python'))  # saída : ('', '', 'hello world world')

# Separando no início da string
texto = "hello world"
print(texto.rpartition('hello'))  # saída : ('', 'hello', ' world')
```

## execícios

<details>
<summary>Lista de Exercícios</summary>

### 1. `str.upper()`
1. Crie uma variável com uma frase e converta-a para letras maiúsculas usando `str.upper()`.
2. Receba uma string do usuário e exiba-a totalmente em maiúsculas.
3. Converta o nome de uma cidade para maiúsculas e exiba-o.
4. Converta a palavra "python" para maiúsculas e exiba o resultado.
5. Crie uma lista com várias palavras e converta cada uma para maiúsculas, exibindo o resultado.
6. Receba uma frase do usuário e converta apenas a primeira palavra para maiúsculas.
7. Armazene uma mensagem em uma variável e exiba-a em maiúsculas.
8. Receba o nome de um filme do usuário e exiba-o em maiúsculas.
9. Converta o título de um livro para maiúsculas e exiba-o.

### 2. `str.lower()`
1. Crie uma variável com uma frase e converta-a para letras minúsculas usando `str.lower()`.
2. Receba uma string do usuário e exiba-a totalmente em minúsculas.
3. Converta o nome de uma cidade para minúsculas e exiba-o.
4. Converta a palavra "PYTHON" para minúsculas e exiba o resultado.
5. Crie uma lista com várias palavras e converta cada uma para minúsculas, exibindo o resultado.
6. Receba uma frase do usuário e converta apenas a primeira palavra para minúsculas.
7. Armazene uma mensagem em uma variável e exiba-a em minúsculas.
8. Receba o nome de um filme do usuário e exiba-o em minúsculas.
9. Converta o título de um livro para minúsculas e exiba-o.

### 3. `str.capitalize()`
1. Crie uma variável com uma frase em letras minúsculas e use `str.capitalize()` para capitalizar a primeira letra.
2. Receba uma string do usuário e exiba-a com a primeira letra em maiúscula.
3. Converta a palavra "python" para "Python" usando `str.capitalize()`.
4. Crie uma lista com várias palavras e capitalize a primeira letra de cada uma, exibindo o resultado.
5. Receba uma frase do usuário e capitalize apenas a primeira palavra.
6. Armazene uma mensagem em uma variável e exiba-a com a primeira letra em maiúscula.
7. Receba o nome de um filme do usuário e exiba-o com a primeira letra em maiúscula.
8. Capitalize o título de um livro e exiba-o.
9. Receba o nome de uma cidade e capitalize a primeira letra.

### 4. `str.title()`
1. Crie uma variável com uma frase e use `str.title()` para capitalizar a primeira letra de cada palavra.
2. Receba uma string do usuário e exiba-a com a primeira letra de cada palavra em maiúscula.
3. Converta a frase "learning python is fun" para "Learning Python Is Fun" usando `str.title()`.
4. Crie uma lista de frases e aplique `str.title()` em cada uma, exibindo o resultado.
5. Receba uma frase do usuário e capitalize a primeira letra de cada palavra.
6. Armazene uma frase em uma variável e exiba-a com `str.title()`.
7. Receba o título de um filme e converta-o para `title case`.
8. Capitalize as palavras de um título de livro e exiba-o.
9. Receba uma frase e exiba-a com cada palavra iniciada com letra maiúscula.

### 5. `str.strip()`
1. Crie uma variável com uma string contendo espaços em branco no início e no final. Use `str.strip()` para removê-los.
2. Receba uma string do usuário com espaços extras e exiba-a sem esses espaços.
3. Remova espaços em branco de uma frase armazenada em uma variável.
4. Receba uma string de texto com espaços e pontuação extra, e use `str.strip()` para removê-los.
5. Crie uma lista de strings com espaços em branco e remova-os usando `str.strip()`.
6. Receba uma string com caracteres específicos no início e no fim e remova-os usando `str.strip()`.
7. Armazene uma frase com espaços e exiba-a sem os espaços no início e no final.
8. Receba uma string de texto e remova qualquer pontuação extra no início e no fim.
9. Receba uma frase do usuário e remova todos os espaços extras e caracteres especiais do início e fim.

### 6. `str.lstrip()`
1. Crie uma variável com uma string contendo espaços em branco no início. Use `str.lstrip()` para removê-los.
2. Receba uma string do usuário com espaços extras no início e exiba-a sem esses espaços.
3. Remova espaços em branco do início de uma frase armazenada em uma variável.
4. Receba uma string de texto com espaços extras no início e use `str.lstrip()` para removê-los.
5. Crie uma lista de strings com espaços em branco no início e remova-os usando `str.lstrip()`.
6. Receba uma string com caracteres específicos no início e remova-os usando `str.lstrip()`.
7. Armazene uma frase com espaços no início e exiba-a sem esses espaços.
8. Receba uma string de texto e remova qualquer pontuação extra no início.
9. Receba uma frase do usuário e remova todos os espaços extras e caracteres especiais do início.

### 7. `str.rstrip()`
1. Crie uma variável com uma string contendo espaços em branco no final. Use `str.rstrip()` para removê-los.
2. Receba uma string do usuário com espaços extras no final e exiba-a sem esses espaços.
3. Remova espaços em branco do final de uma frase armazenada em uma variável.
4. Receba uma string de texto com espaços extras no final e use `str.rstrip()` para removê-los.
5. Crie uma lista de strings com espaços em branco no final e remova-os usando `str.rstrip()`.
6. Receba uma string com caracteres específicos no final e remova-os usando `str.rstrip()`.
7. Armazene uma frase com espaços no final e exiba-a sem esses espaços.
8. Receba uma string de texto e remova qualquer pontuação extra no final.
9. Receba uma frase do usuário e remova todos os espaços extras e caracteres especiais do final.

### 8. `str.replace(old, new[, count])`
1. Crie uma string e substitua todas as ocorrências de "a" por "o" usando `str.replace()`.
2. Receba uma frase do usuário e substitua todas as ocorrências de uma palavra específica por outra.
3. Substitua todos os espaços em uma string por hífens usando `str.replace()`.
4. Crie uma lista de frases e substitua uma palavra específica em todas elas usando `str.replace()`.
5. Receba uma string e substitua todas as vírgulas por pontos.
6. Substitua todas as ocorrências da palavra "Python" por "programação" em uma string.
7. Receba uma frase e substitua apenas as primeiras 3 ocorrências de uma palavra específica.
8. Crie uma string com várias ocorrências de uma palavra e substitua-a por outra, limitando o número de substituições.
9. Substitua todos os números em uma string por "#" usando `str.replace()`.
10. Receba uma frase do usuário e substitua todas as ocorrências de uma letra específica, limitando o número de substituições.

### 9. `str.split(separator[, maxsplit])`
1. Crie uma string com várias palavras separadas por espaços e divida-a em uma lista de palavras usando `str.split()`.
2. Receba uma frase do usuário e divida-a em palavras usando espaços como separador.
3. Divida uma frase em uma lista de palavras usando vírgulas como separador.
4. Crie uma lista de frases e divida cada uma delas em palavras usando `str.split()`.
5. Receba uma string e divida-a em uma lista, limitando o número de divisões para 3.
6. Divida uma frase em palavras usando um caractere específico como separador.
7. Crie uma string com números separados por vírgulas e divida-a em uma lista de números.
8. Receba uma frase do usuário e divida-a em palavras, limitando o número de divisões para 2.
9. Divida uma string em partes, usando espaços como separador e limitando o número de divisões.
10. Receba uma frase e divida-a em palavras usando um separador específico, limitando o número de divisões.

### 10. `str.join(iterable)`
1. Crie uma lista de palavras e una-as em uma única string, separando-as por espaços usando `str.join()`.
2. Receba uma lista de palavras do usuário e una-as em uma única string com hífens como separador.
3. Una os elementos de uma lista de números em uma string, separando-os por vírgulas.
4. Crie uma lista de frases e una-as em uma única string, separando-as por espaços.
5. Receba uma lista de palavras e una-as em uma string com um caractere específico como separador.
6. Una os elementos de uma lista de palavras em uma string, separando-os por " - ".
7. Receba uma lista de nomes e una-os em uma string com vírgulas como separador.
8. Crie uma lista de palavras e una-as em uma string, separando-as por " | ".
9. Receba uma lista de frases e una-as em uma única string com pontos finais entre elas.
10. Crie uma lista de números e una-os em uma string com espaços como separador.

### 11. `str.find(sub[, start[, end]])`
1. Crie uma string e encontre a posição da primeira ocorrência de uma letra específica usando `str.find()`.
2. Receba uma frase do usuário e encontre a posição da primeira ocorrência de uma palavra específica.
3. Encontre a posição da primeira ocorrência de "Python" em uma string.
4. Crie uma lista de frases e encontre a posição de uma palavra específica em cada uma delas usando `str.find()`.
5. Receba uma string e encontre a posição da primeira ocorrência de uma letra específica, começando a busca em um índice específico.
6. Encontre a posição da primeira ocorrência de um número em uma string.
7. Receba uma frase e encontre a posição da primeira ocorrência de uma palavra específica, dentro de um intervalo específico.
8. Crie uma string e encontre a posição da primeira ocorrência de uma letra específica, buscando apenas em uma parte da string.
9. Receba uma frase do usuário e encontre a posição da primeira ocorrência de um caractere específico.
10. Encontre a posição da primeira ocorrência de uma palavra em uma string, começando a busca em um índice específico.

### 12. `str.rfind(sub[, start[, end]])`
1. Crie uma string e encontre a posição da última ocorrência de uma letra específica usando `str.rfind()`.
2. Receba uma frase do usuário e encontre a posição da última ocorrência de uma palavra específica.
3. Encontre a posição da última ocorrência de "Python" em uma string.
4. Crie uma lista de frases e encontre a posição da última ocorrência de uma palavra específica em cada uma delas usando `str.rfind()`.
5. Receba uma string e encontre a posição da última ocorrência de uma letra específica, começando a busca em um índice específico.
6. Encontre a posição da última ocorrência de um número em uma string.
7. Receba uma frase e encontre a posição da última ocorrência de uma palavra específica, dentro de um intervalo específico.
8. Crie uma string e encontre a posição da última ocorrência de uma letra específica, buscando apenas em uma parte da string.
9. Receba uma frase do usuário e encontre a posição da última ocorrência de um caractere específico.
10. Encontre a posição da última ocorrência de uma palavra em uma string, começando a busca em um índice específico.

### 13. `str.startswith(prefix[, start[, end]])`
1. Crie uma string e verifique se ela começa com uma letra específica usando `str.startswith()`.
2. Receba uma frase do usuário e verifique se ela começa com uma palavra específica.
3. Verifique se a string "Python is awesome" começa com a palavra "Python".
4. Crie uma lista de frases e verifique se cada uma começa com uma palavra específica usando `str.startswith()`.
5. Receba uma string e verifique se ela começa com uma letra específica, começando a verificação em um índice específico.
6. Verifique se uma string começa com um número específico.
7. Receba uma frase e verifique se ela começa com uma palavra específica, dentro de um intervalo específico.
8. Crie uma string e verifique se ela começa com uma letra específica, buscando apenas em uma parte da string.
9. Receba uma frase do usuário e verifique se ela começa com um caractere específico.
10. Verifique se uma string começa com uma palavra específica, começando a verificação em um índice específico.

### 14. `str.endswith(suffix[, start[, end]])`
1. Crie uma string e verifique se ela termina com uma letra específica usando `str.endswith()`.
2. Receba uma frase do usuário e verifique se ela termina com uma palavra específica.
3. Verifique se a string "Python is awesome" termina com a palavra "awesome".
4. Crie uma lista de frases e verifique se cada uma termina com uma palavra específica usando `str.endswith()`.
5. Receba uma string e verifique se ela termina com uma letra específica, começando a verificação em um índice específico.
6. Verifique se uma string termina com um número específico.
7. Receba uma frase e verifique se ela termina com uma palavra específica, dentro de um intervalo específico.
8. Crie uma string e verifique se ela termina com uma letra específica, buscando apenas em uma parte da string.
9. Receba uma frase do usuário e verifique se ela termina com um caractere específico.
10. Verifique se uma string termina com uma palavra específica, começando a verificação em um índice específico.

### 15. `str.isalpha()`
1. Crie uma string contendo apenas letras e verifique se `str.isalpha()` retorna `True`.
2. Receba uma string do usuário e verifique se ela contém apenas letras.
3. Verifique se a string "Python3" contém apenas letras usando `str.isalpha()`.
4. Crie uma lista de palavras e verifique se cada uma delas contém apenas letras.
5. Receba uma string e verifique se ela contém apenas letras, sem espaços ou caracteres especiais.
6. Verifique se uma string composta por várias palavras contém apenas letras.
7. Receba uma frase do usuário e verifique se todas as palavras contêm apenas letras.
8. Verifique se uma string que contém um nome completo tem apenas letras.
9. Receba uma palavra do usuário e verifique se ela contém apenas letras, sem números ou símbolos.

### 16. `str.isdigit()`
1. Crie uma string contendo apenas números e verifique se `str.isdigit()` retorna `True`.
2. Receba uma string do usuário e verifique se ela contém apenas números.
3. Verifique se a string "12345" contém apenas números usando `str.isdigit()`.
4. Crie uma lista de strings e verifique se cada uma delas contém apenas números.
5. Receba uma string e verifique se ela contém apenas números, sem espaços ou caracteres especiais.
6. Verifique se uma string composta por um número de telefone contém apenas números.
7. Receba uma string do usuário e verifique se ela é um código postal válido (apenas números).
8. Verifique se uma string que contém a idade de uma pessoa tem apenas números.
9. Receba uma string do usuário e verifique se ela contém apenas números, sem letras ou símbolos.

### 17. `str.isalnum()`
1. Crie uma string contendo apenas letras e números e verifique se `str.isalnum()` retorna `True`.
2. Receba uma string do usuário e verifique se ela contém apenas letras e números.
3. Verifique se a string "Python3" contém apenas letras e números usando `str.isalnum()`.
4. Crie uma lista de strings e verifique se cada uma delas contém apenas letras e números.
5. Receba uma string e verifique se ela contém apenas letras e números, sem espaços ou caracteres especiais.
6. Verifique se uma string composta por um nome de usuário contém apenas letras e números.
7. Receba uma string do usuário e verifique se ela contém apenas letras e números, sem símbolos.
8. Verifique se uma string que contém uma senha tem apenas letras e números.
9. Receba uma string do usuário e verifique se ela contém apenas letras e números, sem espaços.

### 18. `str.isspace()`
1. Crie uma string contendo apenas espaços em branco e verifique se `str.isspace()` retorna `True`.
2. Receba uma string do usuário e verifique se ela contém apenas espaços.
3. Verifique se uma string composta por tabulações e espaços contém apenas espaços usando `str.isspace()`.
4. Crie uma lista de strings e verifique se cada uma delas contém apenas espaços.
5. Receba uma string e verifique se ela contém apenas espaços, sem letras ou números.
6. Verifique se uma string que aparenta estar vazia contém apenas espaços.
7. Receba uma string do usuário e verifique se ela contém apenas tabulações e espaços.
8. Verifique se uma string que contém múltiplos espaços consecutivos contém apenas espaços.
9. Receba uma string do usuário e verifique se ela contém apenas espaços, sem outros caracteres.

### 19. `str.isupper()`
1. Crie uma string em maiúsculas e verifique se `str.isupper()` retorna `True`.
2. Receba uma string do usuário e verifique se ela está totalmente em maiúsculas.
3. Verifique se a string "PYTHON" está totalmente em maiúsculas usando `str.isupper()`.
4. Crie uma lista de palavras e verifique se cada uma delas está em maiúsculas.
5. Receba uma string e verifique se ela está em maiúsculas, sem letras minúsculas.
6. Verifique se uma string que contém uma frase está toda em maiúsculas.
7. Receba uma string do usuário e verifique se ela contém apenas letras maiúsculas.
8. Verifique se uma string que contém o nome de uma cidade está em maiúsculas.
9. Receba uma string do usuário e verifique se ela está completamente em maiúsculas, sem caracteres minúsculos.

### 20. `str.islower()`
1. Crie uma string em minúsculas e verifique se `str.islower()` retorna `True`.
2. Receba uma string do usuário e verifique se ela está totalmente em minúsculas.
3. Verifique se a string "python" está totalmente em minúsculas usando `str.islower()`.
4. Crie uma lista de palavras e verifique se cada uma delas está em minúsculas.
5. Receba uma string e verifique se ela está em minúsculas, sem letras maiúsculas.
6. Verifique se uma string que contém uma frase está toda em minúsculas.
7. Receba uma string do usuário e verifique se ela contém apenas letras minúsculas.
8. Verifique se uma string que contém o nome de uma cidade está em minúsculas.
9. Receba uma string do usuário e verifique se ela está completamente em minúsculas, sem caracteres maiúsculos.

### 21. `str.zfill(width)`
1. Crie uma string numérica e use `str.zfill()` para preenchê-la com zeros à esquerda, completando um total de 10 caracteres.
2. Receba um número do usuário e complete-o com zeros à esquerda, usando `str.zfill()` para ter 8 dígitos.
3. Preencha um número de telefone com zeros à esquerda até ter um total de 12 caracteres.
4. Crie uma lista de números e preencha cada um com zeros à esquerda, até atingir 6 dígitos.
5. Receba uma string numérica do usuário e complete-a com zeros à esquerda para um total de 5 dígitos.
6. Use `str.zfill()` para garantir que um número de pedido tenha exatamente 10 dígitos, preenchendo com zeros à esquerda se necessário.
7. Receba um código postal e preencha-o com zeros à esquerda até ter 7 dígitos.
8. Preencha um número de série com zeros à esquerda até atingir 15 caracteres.
9. Receba um código de produto e complete-o com zeros à esquerda até ter 10 caracteres.

### 22. `str.center(width[, fillchar])`
1. Crie uma string e centralize-a em uma largura de 20 caracteres, preenchendo os espaços com traços (-).
2. Receba uma palavra do usuário e centralize-a em uma largura de 30 caracteres, usando asteriscos como preenchimento.
3. Centralize a frase "Python Rocks!" em uma largura de 40 caracteres, preenchendo os espaços com pontos (.).
4. Crie uma lista de palavras e centralize cada uma delas em uma largura de 15 caracteres, usando traços como preenchimento.
5. Receba uma string e centralize-a em uma largura de 25 caracteres, preenchendo os espaços com espaços em branco.
6. Use `str.center()` para centralizar um título de 10 caracteres em uma largura de 20, preenchendo com hífens (-).
7. Receba uma palavra do usuário e centralize-a em uma largura de 50 caracteres, preenchendo os espaços com iguais (=).
8. Centralize uma frase em uma largura de 60 caracteres, preenchendo os espaços com traços duplos (==).
9. Receba um título do usuário e centralize-o em uma largura de 35 caracteres, preenchendo os espaços com pontos de exclamação (!).

### 23. `str.ljust(width[, fillchar])`
1. Crie uma string e alinhe-a à esquerda em uma largura de 20 caracteres, preenchendo os espaços com traços (-).
2. Receba uma palavra do usuário e alinhe-a à esquerda em uma largura de 30 caracteres, usando asteriscos (*) como preenchimento.
3. Alinhe a frase "Python Rocks!" à esquerda em uma largura de 40 caracteres, preenchendo os espaços com pontos (.).
4. Crie uma lista de palavras e alinhe cada uma delas à esquerda em uma largura de 15 caracteres, usando traços como preenchimento.
5. Receba uma string e alinhe-a à esquerda em uma largura de 25 caracteres, preenchendo os espaços com espaços em branco.
6. Use `str.ljust()` para alinhar um título de 10 caracteres à esquerda em uma largura de 20, preenchendo com hífens (-).
7. Receba uma palavra do usuário e alinhe-a à esquerda em uma largura de 50 caracteres, preenchendo os espaços com iguais (=).
8. Alinhe uma frase à esquerda em uma largura de 60 caracteres, preenchendo os espaços com traços duplos (==).
9. Receba um título do usuário e alinhe-o à esquerda em uma largura de 35 caracteres, preenchendo os espaços com pontos de exclamação (!).

### 24. `str.rjust(width[, fillchar])`
1. Crie uma string e alinhe-a à direita em uma largura de 20 caracteres, preenchendo os espaços com traços (-).
2. Receba uma palavra do usuário e alinhe-a à direita em uma largura de 30 caracteres, usando asteriscos (*) como preenchimento.
3. Alinhe a frase "Python Rocks!" à direita em uma largura de 40 caracteres, preenchendo os espaços com pontos (.).
4. Crie uma lista de palavras e alinhe cada uma delas à direita em uma largura de 15 caracteres, usando traços como preenchimento.
5. Receba uma string e alinhe-a à direita em uma largura de 25 caracteres, preenchendo os espaços com espaços em branco.
6. Use `str.rjust()` para alinhar um título de 10 caracteres à direita em uma largura de 20, preenchendo com hífens (-).
7. Receba uma palavra do usuário e alinhe-a à direita em uma largura de 50 caracteres, preenchendo os espaços com iguais (=).
8. Alinhe uma frase à direita em uma largura de 60 caracteres, preenchendo os espaços com traços duplos (==).
9. Receba um título do usuário e alinhe-o à direita em uma largura de 35 caracteres, preenchendo os espaços com pontos de exclamação (!).

### 25. `str.partition(sep)`
1. Crie uma string contendo uma frase e separe-a em três partes usando `str.partition()`, com o separador sendo um espaço.
2. Receba uma frase do usuário e use `str.partition()` para separar a primeira palavra do restante.
3. Use `str.partition()` para dividir uma string em três partes, com o separador sendo uma vírgula.
4. Crie uma lista de frases e use `str.partition()` em cada uma para separar a primeira palavra do restante.
5. Receba uma string e use `str.partition()` para dividir a string em três partes, usando um hífen como separador.
6. Use `str.partition()` para separar uma frase em três partes, com o separador sendo o primeiro espaço encontrado.
7. Crie uma string com múltiplas palavras e use `str.partition()` para dividir a string na primeira ocorrência de uma palavra específica.
8. Receba uma string do usuário e use `str.partition()` para separar a string em três partes, usando um ponto final como separador.
9. Use `str.partition()` para dividir uma string de números em três partes, com o separador sendo um ponto (.)
10. Receba uma frase do usuário e use `str.partition()` para separar a frase na primeira ocorrência de uma palavra específica.

</details>
