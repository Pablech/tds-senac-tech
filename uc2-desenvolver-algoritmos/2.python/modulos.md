# índice

1. [módulo `random`](#módulo-random)
    - [exercícios módulo `random`](#exercícios-módulo-random)

# módulos

## módulo `random`

O módulo `random` do Python é utilizado para gerar números aleatórios e realizar operações aleatórias, como escolher itens de uma lista, embaralhar elementos e gerar números em diferentes intervalos. Ele é amplamente utilizado em várias aplicações, como simulações, jogos, amostragem e mais.

1. [`random.random()`](#randomrandom)
1. [`random.uniform()`](#randomuniform)
1. [`random.randint()`](#randomrandint)
1. [`random.randrange()`](#randomrandrange)
1. [`random.choice()`](#randomchoice)
1. [`random.choices()`](#randomchoices)
1. [`random.sample()`](#randomsample)
1. [`random.shuffle()`](#randomshuffle)
1. [`random.seed()`](#randomseed)
1. [`random.gauss()`](#randomgauss)
1. [`random.betavariate()`](#randombetavariate)
1. [índice](#índice)

### `random.random()`

A função `random()` gera um número de ponto flutuante (decimal) entre 0.0 e 1.0, incluindo 0, mas excluindo 1.

**exemplo** :

```python
# main.py
import random

numero = random.random()
print(f"Número aleatório entre 0 e 1: {numero}")
```

Saída típica :
```
Número aleatório entre 0 e 1: 0.573019845657438
```

### `random.uniform()`

A função `uniform(a, b)` gera um número de ponto flutuante entre os valores `a` e `b`, incluindo ambos os limites.

**exemplo** :

```python
# main.py
import random

numero = random.uniform(10, 20)
print(f"Número aleatório entre 10 e 20: {numero}")
```

Saída típica :
```
Número aleatório entre 10 e 20: 15.678921305495
```

### `random.randint()`

A função `randint(a, b)` gera um número inteiro aleatório entre `a` e `b`, incluindo ambos os limites.

**exemplo** :

```python
# main.py
import random

numero = random.randint(1, 6)
print(f"Número inteiro aleatório entre 1 e 6: {numero}")
```

Saída típica :
```
Número inteiro aleatório entre 1 e 6: 4
```

### `random.randrange()`

A função `randrange(start, stop, step)` gera um número inteiro aleatório no intervalo de `start` até `stop - 1`, com um incremento de `step`.

**exemplo** :

```python
# main.py
import random

numero = random.randrange(0, 10, 2)
print(f"Número aleatório par entre 0 e 10: {numero}")
```

Saída típica :
```
Número aleatório par entre 0 e 10: 4
```

Aqui, o valor gerado será um número par entre 0 e 8 (pois o `stop` é 10, mas o intervalo é até 9, e os números são gerados de 2 em 2).

### `random.choice()`

A função `choice(seq)` escolhe aleatoriamente um item de uma sequência, como uma lista, tupla ou string.

**exemplo** :

```python
# main.py
import random

opcoes = ['pedra', 'papel', 'tesoura']
escolha = random.choice(opcoes)
print(f"Escolha aleatória: {escolha}")
```

Saída típica :
```
Escolha aleatória: papel
```

### `random.choices()`

A função `choices(population, k)` retorna uma lista com `k` elementos escolhidos aleatoriamente de uma população, permitindo repetições.

**exemplo** :

```python
# main.py
import random

cores = ['vermelho', 'verde', 'azul', 'amarelo']
escolhas = random.choices(cores, k=3)
print(f"Escolhas aleatórias: {escolhas}")
```

Saída típica :
```
Escolhas aleatórias: ['azul', 'verde', 'azul']
```

### `random.sample()`

A função `sample(population, k)` retorna uma lista com `k` elementos escolhidos aleatoriamente de uma população, sem repetições.

**exemplo** :

```python
# main.py
import random

numeros = list(range(1, 50))
sorteados = random.sample(numeros, k=6)
print(f"Números sorteados: {sorteados}")
```

Saída típica :
```
Números sorteados: [12, 8, 42, 33, 19, 7]
```

### `random.shuffle()`

A função `shuffle(seq)` embaralha os itens de uma lista in-place, ou seja, a própria lista é modificada.

**exemplo** :

```python
import random

cartas = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
random.shuffle(cartas)
print(f"Cartas embaralhadas: {cartas}")
```

Saída típica:
```
Cartas embaralhadas: ['7', '2', 'J', '4', '8', '3', 'A', 'K', '9', '10', '6', '5', 'Q']
```

### `random.seed()`

O comportamento da aleatoriedade no Python pode ser controlado usando `seed()`. Isso é útil quando você deseja que uma sequência de números aleatórios seja reprodutível.

**exemplo** :

```python
# main.py
import random

random.seed(10)
print(random.random())  # Sempre produzirá o mesmo resultado se seed(10) for usado.
print(random.random())  # Os mesmos números serão gerados sempre que seed(10) for usado.
```

Saída (sempre a mesma com `seed(10)`) :
```
0.5714025946899135
0.4288890546751146
```

### `random.gauss()`

A função `gauss(mu, sigma)` gera números aleatórios seguindo uma distribuição normal (ou gaussiana). O parâmetro `mu` é a média da distribuição, e `sigma` é o desvio padrão.

**exemplo** :

```python
# main.py
import random

media = 0
desvio_padrao = 1

for _ in range(5):
    print(random.gauss(media, desvio_padrao))
```

Saída típica :
```
-0.3653743596198731
1.0199221852790466
0.1918015869367224
-0.9074770176164197
-0.19738118153188115
```

### `random.betavariate()`

A função `betavariate(alpha, beta)` gera números seguindo uma distribuição beta, onde `alpha` e `beta` são parâmetros da distribuição.

**exemplo** :

```python
# main.py
import random

alpha = 2.0
beta = 5.0

for _ in range(5):
    print(random.betavariate(alpha, beta))
```

Saída típica :
```
0.2944020013389468
0.4153640288354197
0.28646777115539996
0.292441360879948
0.21664462489450598
```

## exercícios módulo `random`

<details>
<summary>Lista de Exercícios</summary>

1. Gere um número aleatório inteiro entre 1 e 10. Use `random.randint(1, 10)`.
1. Gere um número de ponto flutuante aleatório entre 0 e 1. Utilize `random.random()`.
1. Escolha aleatoriamente um elemento de uma lista. Use `random.choice()` com uma lista como argumento.
1. Escolha aleatoriamente 3 elementos diferentes de uma lista de 10 itens. Utilize `random.sample()` para selecionar 3 elementos.
1. Embaralhe aleatoriamente os elementos de uma lista. Use `random.shuffle()` para embaralhar os itens da lista.
1. Gere um número de ponto flutuante entre 5 e 10. Utilize `random.uniform(5, 10)`.
1. Gere um número aleatório de ponto flutuante com distribuição normal (gaussiana) com média 0 e desvio padrão 1. Use `random.gauss(0, 1)`.
1. Simule o lançamento de um dado de 6 lados 100 vezes e conte quantas vezes cada número apareceu. Use `random.randint()` e armazene os resultados em um dicionário ou lista.
1. Gere uma sequência aleatória de 5 números inteiros entre 1 e 50, sem repetição. Utilize `random.sample(range(1, 51), 5)`.
1. Gere uma senha aleatória de 8 caracteres usando letras e números. Use `random.choices()` com letras e números como entrada.
1. Escolha aleatoriamente um nome de uma lista de alunos. Utilize `random.choice()`.
1. Simule uma moeda sendo lançada 100 vezes e conte quantas vezes deu cara e quantas vezes deu coroa. Use `random.choice(['cara', 'coroa'])` em um loop.
1. Gere uma sequência aleatória de 6 números entre 1 e 60 (como uma simulação de loteria). Utilize `random.sample()` para gerar a sequência.
1. Gere um número aleatório entre 1 e 100 que seja múltiplo de 5. Use `random.choice(range(5, 101, 5))`.
1. Simule um jogo de roleta onde os números variam de 0 a 36. Utilize `random.randint(0, 36)` para simular a roleta.
1. Gere uma cor hexadecimal aleatória. Use `random.choice()` para selecionar valores de `0-9` e `A-F` e formar uma cor hexadecimal.
1. Crie uma lista de 10 números aleatórios e ordene-os em ordem crescente. Utilize `random.randint()` para gerar a lista e `sorted()` para ordená-la.
1. Implemente uma função que retorna um número aleatório par entre 1 e 100. Use `random.choice(range(2, 101, 2))`.
1. Simule o lançamento de dois dados e calcule a soma dos dois resultados. Utilize `random.randint(1, 6)` duas vezes e some os resultados.
1. Embaralhe uma lista de cartas (A, 2, 3, ..., K) e distribua 5 cartas. Use `random.shuffle()` e depois extraia os primeiros 5 elementos.
1. Simule o sorteio de uma rifa em que há 100 números e 5 são sorteados. Utilize `random.sample(range(1, 101), 5)`.
1. Gere uma lista de 10 números aleatórios entre 1 e 20, sem repetição, e verifique se há números repetidos. Use `random.sample()` e depois verifique duplicatas (não devem existir).
1. Gere uma sequência de 20 números aleatórios de ponto flutuante entre 0 e 1 e calcule a média. Use `random.random()` em um loop e calcule a média.
1. Implemente uma função que retorne um caractere aleatório de uma string. Utilize `random.choice()` para selecionar um caractere de uma string fornecida.
1. Crie um sistema simples de sorteio de prêmios, onde uma lista de prêmios é dada e um prêmio é escolhido aleatoriamente. Use `random.choice()` para selecionar o prêmio.
1. Simule a seleção de 3 alunos para um trabalho em grupo de uma turma de 20 alunos. Utilize `random.sample()` para selecionar 3 alunos de uma lista de 20.
1. Implemente uma função que simule o lançamento de 5 dados e retorne a soma dos valores. Utilize `random.randint()` em um loop para somar os resultados.
1. Crie um programa que simule uma senha de 4 dígitos numéricos. Use `random.choices(string.digits, k=4)` para gerar a senha.
1. Gere uma sequência aleatória de 8 caracteres composta de letras maiúsculas e minúsculas. Utilize `random.choices(string.ascii_letters, k=8)`.
1. Simule a geração de números de uma loteria onde 6 números são sorteados entre 1 e 49. Use `random.sample(range(1, 50), 6)`.
1. Implemente uma função que retorna um número aleatório ímpar entre 1 e 50. Use `random.choice(range(1, 51, 2))`.
1. Crie um programa que simule o embaralhamento de um baralho de cartas (semelhante ao exercício 20). Utilize `random.shuffle()` para embaralhar as cartas.
1. Gere uma lista de 10 números aleatórios entre 1 e 100 e encontre o maior valor. Use `random.randint()` para gerar a lista e `max()` para encontrar o maior valor.
1. Simule um jogo de dados em que 5 dados são lançados e o jogador ganha se a soma for maior que 18. Use `random.randint(1, 6)` em um loop e calcule a soma.
1. Crie uma função que simule uma rodada de "pedra, papel e tesoura" entre dois jogadores. Utilize `random.choice(['pedra', 'papel', 'tesoura'])` para cada jogador.
1. Simule a escolha de um elemento de uma lista ponderada, onde alguns elementos têm mais chances de serem escolhidos. Use `random.choices()` com pesos fornecidos.
1. Implemente uma função que retorne uma lista de 5 números aleatórios inteiros entre 10 e 100. Utilize `random.randint(10, 100)` em um loop ou `random.sample()`.
1. Implemente um jogo simples de adivinhação onde o programa gera um número entre 1 e 20 e o usuário tem que adivinhar. Utilize `random.randint(1, 20)` para gerar o número e peça ao usuário para adivinhar.
1. Gere uma lista de 5 números de ponto flutuante entre 0 e 10 e calcule o valor mínimo. Utilize `random.uniform(0, 10)` e `min()` para encontrar o menor valor.
1. Implemente um jogo de "cara ou coroa" onde o usuário pode jogar quantas vezes quiser. Use `random.choice(['cara', 'coroa'])`.
1. Crie uma função que gere uma lista de 5 números aleatórios entre 0 e 1 e retorne o maior valor. Utilize `random.random()` em um loop e `max()` para o maior valor.
1. Simule a distribuição de cartas em um jogo de pôquer para 4 jogadores. Use `random.sample()` para distribuir as cartas de um baralho.
1. Crie uma função que retorne uma letra aleatória (maiúscula ou minúscula). Use `random.choice(string.ascii_letters)`.
1. Simule o lançamento de uma moeda 1000 vezes e conte quantas vezes deu "cara". Use `random.choice()` em um loop.
1. Gere uma sequência aleatória de 20 números inteiros entre 0 e 100 e calcule a média. Utilize `random.randint(0, 100)` e `sum()` para calcular a média.

</details>
