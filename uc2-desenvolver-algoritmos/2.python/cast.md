Índice Cast

1. [o que é cast](#o-que-é-cast)
1. [funções de conversão](#funções-de-conversões)
1. [detalhes importantes](#detalhes-importantes)
1. [lista de exercícios](#lista-de-exercícios)

# cast

## o que é cast

Em programação, **cast** ou **casting** refere-se à conversão de uma variável de um tipo de dado para outro. No Python, isso é feito utlizando funções de conversão de tipo. Por exemplo, pode-se converter um número em uma string, uma string em um número.

## funções de conversões

Abaixo, há uma lista de conversão de algum dos tipo do Python :

* `int()` : converte para um número inteiro;
* `float()` : converte para um número de ponto flutuante;
* `str()` : converte para uma string;
* `bool()` : converte para um valor booleano;

Veja alguns exemplos :

```python
# convertendo string para inteiro
numero = int('123')
print(numero)  # saída : 123

# convertendo float para inteiro
numero = int(3.14159265)
print(numero)  # saida : 3

# convertendo boolean para inteiro
numero = int(True)
print(numero)  # saida : 1

# convertendo string para float
numero = float('3.1415')
print(numero)  # saída : 3.1415

# convertendo inteiro para float
numero = float(42)
print(numero)  # saida : 42.0

# convertendo boolean para float
numero = float(True)
print(numero)  # saida : 1.0

# convertendo inteiro para string
texto = str(42)
print(texto)  # saída : "42"

# convertendo float para string
texto = str(3.1415)
print(texto)  # saida : "3.1415"

# convertendo boolean para string
texto = str(True)
print(texto)  # saida : "True"

# convertendo inteiro para boolean
texto = bool(42)
print(texto)  # saída : True

# convertendo float para boolean
texto = bool(0.0)
print(texto)  # saida : False

# convertendo string para boolean
texto = bool('Arnold')
print(texto)  # saida : True

# convertendo string para boolean
texto = bool('')
print(texto)  # saida : False
```

## detalhes importantes

Alguns detalhes importantes sobre a conversão de um tipo de variável em outra :

1. `ìnt()` : converte uma string ou float para um inteiro, mas se a string não representar um número inteiro válido, irá levantar um erro;
1. `float()` : converte uma string ou um inteiro para um float e, assim como o inteiro, se a string não representar um número válido, irá levantar um erro;
1. `str()` : converte qualquer tipo de dado para uma string;
1. `bool()` : converte qualquer tipo de dado para booleano. Valores como `0`, `0.0`,`''` (uma string vazia), `[]` (uma lista vazia), `()` (uma tupla vazia), `{}` (um dicionário vazio) são convertidos para `False`, enquanto que qualquer outro valor é convertido para `True`.

## lista de exercícios

<details>
<summary>Lista de Exercícios</summary>

1. Converting to Integer (int())
    1. Converta a string "1234" para um inteiro.
    1. Converta a string "56" para um inteiro.
    1. Converta o float 98.76 para um inteiro.
    1. Converta a string "0" para um inteiro.
    1. Converta o float 0.0 para um inteiro.
    1. Converta a string "200" para um inteiro.
    1. Converta o float 150.99 para um inteiro.
    1. Converta a string "-123" para um inteiro.
    1. Converta a string "999" para um inteiro.
    1. Converta o float -45.67 para um inteiro.
1. Converting to Float (float())
    1. Converta a string "123.45" para um float.
    1. Converta a string "56.78" para um float.
    1. Converta o inteiro 100 para um float.
    1. Converta a string "0" para um float.
    1. Converta o inteiro 0 para um float.
    1. Converta a string "250.75" para um float.
    1. Converta o inteiro 45 para um float.
    1. Converta a string "-987.65" para um float.
    1. Converta a string "3.14159" para um float.
    1. Converta o inteiro -200 para um float.
1. Converting to String (str())
    1. Converta o inteiro 1234 para uma string.
    1. Converta o float 56.78 para uma string.
    1. Converta o inteiro 0 para uma string.
    1. Converta o float 0.0 para uma string.
    1. Converta o inteiro 789 para uma string.
    1. Converta o float 12.34 para uma string.
    1. Converta o inteiro -123 para uma string.
    1. Converta o float -56.78 para uma string.
    1. Converta o booleano True para uma string.
    1. Converta o booleano False para uma string.
1. Converting to Boolean (bool())
    1. Converta a string "True" para um booleano.
    1. Converta a string "False" para um booleano.
    1. Converta a string "" (string vazia) para um booleano.
    1. Converta o inteiro 0 para um booleano.
    1. Converta o inteiro 1 para um booleano.
    1. Converta o float 0.0 para um booleano.
    1. Converta o float 3.14 para um booleano.
    1. Converta a string "Hello" para um booleano.
    1. Converta a string "0" para um booleano.
    1. Converta a string " " (espaço) para um booleano.

</details>
