# índice

1. [módulo `random`](#módulo-random)
    - [exercícios módulo `random`](#exercícios-módulo-random)
1. [módulo `time`](#módulo-time)
    - [exercícios módulo `time`](#exercícios-módulo-time)
1. [módulo `string`](#módulo-string)
    - [exercícios módulo `string`](#exercícios-módulo-string)

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

## módulo `time`

O módulo `time` do Python oferece várias funções para trabalhar com tempo, como a manipulação de horas, minutos, segundos, e funções para medir o tempo que uma ação leva para ser concluída. Ele é muito utilizado para calcular a duração de eventos, fazer pausas (delays) no código, além de obter e manipular o tempo no formato de segundos desde a *"época"* (epoch), que geralmente é 1º de janeiro de 1970 no sistema UNIX.

1. [`time.time()`](#timetime)
1. [`time.sleep()`](#timesleep)
1. [`time.localtime()`](#timelocaltime)
1. [`time.strftime()`](#timestrftime)
1. [`time.gmtime([])`](#timegmtime)
1. [`time.mktime(t)`](#timemktimet)
1. [`time.asctime([struct_time])`](#timeasctimestruct_time)
1. [`time.ctime([])`](#timectime)
1. [`time.perf_counter()`](#timeperf_counter)
1. [`time.monotonic()`](#timemonotonic)
1. [`time.process_time()`](#timeprocess_time)
1. [exemplos práticos do módulo `time`](#exemplos-práticos-do-módulo-time)
1. [índice](#índice)

### `time.time()`

Essa função retorna o número de segundos desde a *"época"*, ou seja, um número do tipo *float* que representa o tempo em segundos.  A *"época"* (epoch) é o ponto de referência para a contagem do tempo. No Unix, a *epoch* é definida como meia-noite (00:00:00) de 1 de janeiro de 1970.

**exemplo :**
```python
import time
segundos = time.time()
print(f"Segundos desde 1º de janeiro de 1970: {segundos}")
```

### `time.sleep(segundos)`

A função `sleep(seconds)` faz com que o programa pause ou "durma" por um determinado número de segundos. É útil em casos onde se deseja que o código aguarde um certo tempo antes de prosseguir.

**exemplo :**
```python
import time
print("Esperando 5 segundos...")
time.sleep(5)
print("Fim da espera.")
```

### `time.localtime()`

A função `localtime([seconds])` converte o tempo dado em segundos desde a *epoch* em um objeto de tempo local (`struct_time`). Se nenhum argumento for fornecido, ela utiliza o tempo atual (retornado por `time.time()`). O objeto `struct_time` tem vários atributos como `tm_year` (ano), `tm_mon` (mês), `tm_mday` (dia do mês), `tm_hour` (hora), etc.

**exemplo :**
```python
import time
tempo_atual = time.localtime()
print(f"Ano atual: {tempo_atual.tm_year}")
print(f"Mês atual: {tempo_atual.tm_mon}")
print(f"Dia atual: {tempo_atual.tm_mday}")
```

### `time.strftime()`

A função `strftime(formato[, struct_time])` converte um objeto `struct_time` em uma string formatada, de acordo com a especificação de formato fornecida. Por exemplo, `%Y` para ano completo, `%m` para mês, `%d` para dia do mês, `%H` para hora (formato 24h), `%M` para minutos, `%S` para segundos.

Mais Formatos [aqui](https://docs.python.org/3/library/time.html#time.strftime)

**exemplo :**
```python
import time
tempo_atual = time.localtime()
formato = time.strftime("%Y-%m-%d %H:%M:%S", tempo_atual)
print(f"Data e hora formatada: {formato}")
```

### `time.gmtime()`

Semelhante a `time.localtime()`, a função `gmtime([seconds])` retorna o tempo no fuso horário UTC (Tempo Universal Coordenado), em vez do fuso horário local.

**exemplo :**
```python
import time
tempo_utc = time.gmtime()
print(f"Ano atual (UTC): {tempo_utc.tm_year}")
```

### `time.mktime()`

A função `mktime(t)` faz o inverso de `time.localtime()` ou `time.gmtime()`, convertendo uma estrutura de tempo (`struct_time`) em segundos desde a *epoch*.

**exemplo :**
```python
import time
tempo_local = time.localtime()
segundos = time.mktime(tempo_local)
print(f"Segundos desde a epoch para a hora local: {segundos}")
```

### `time.asctime()`

A função `asctime([struct_time])` converte um objeto `struct_time` em uma string no formato: `'Dia_sem Mês Dia Hora:Min:Seg Ano'`. Se não for fornecido nenhum argumento, usa o tempo local.

**exemplo :**
```python
import time
print(time.asctime())  # Exemplo de saída: 'Tue Sep  6 10:05:12 2024'
```

### `time.ctime()`

A função `ctime([segundos])` converte o tempo, em segundos desde a epoch, em uma string legível. Se nenhum argumento for passado, usa o tempo atual.

**exemplo :**
```python
import time
print(time.ctime())  # Exemplo de saída: 'Tue Sep  6 10:05:12 2024'
```

### `time.perf_counter()`

A função `perf_counter()` retorna o valor de um temporizador de alta resolução, medido em segundos. É útil para medir o tempo de execução de trechos de código.

**exemplo :**
```python
import time
inicio = time.perf_counter()
time.sleep(2)
fim = time.perf_counter()
print(f"Tempo decorrido: {fim - inicio} segundos")
```

### `time.monotonic()`

A função `monotonic()` é similar a `time.perf_counter()`, mas este temporizador não pode ser ajustado para frente ou para trás (não é afetado por mudanças no relógio do sistema).

**exemplo :**
```python
import time
inicio = time.monotonic()
time.sleep(1)
fim = time.monotonic()
print(f"Tempo decorrido: {fim - inicio} segundos")
```

### `time.process_time()`

A função `process_time()` retorna o tempo de CPU usado pelo processo atual, em segundos.

**exemplo :**
```python
import time
inicio = time.process_time()
# Simulando um processo que consome CPU
for i in range(1000000):
    pass
fim = time.process_time()
print(f"Tempo de CPU usado: {fim - inicio} segundos")
```

---

### exemplos práticos do módulo `time`

#### exemplo de contagem regressiva

Use `time.sleep()` para implementar uma contagem regressiva.

```python
import time

def contagem_regressiva(segundos):
    while segundos:
        mins, secs = divmod(segundos, 60)
        timer = '{:02d}:{:02d}'.format(mins, secs)
        print(timer, end="\r")
        time.sleep(1)
        segundos -= 1
    print("Tempo esgotado!")

contagem_regressiva(10)
```

#### medição do tempo de execução de uma função

Usando `time.perf_counter()` para medir quanto tempo uma função leva para ser executada.

```python
import time

def funcao_lenta():
    print("Executando uma função lenta...")
    time.sleep(3)
    print("Função concluída.")

inicio = time.perf_counter()
funcao_lenta()
fim = time.perf_counter()

print(f"A função demorou {fim - inicio:.2f} segundos para ser executada.")
```

#### imprimindo a data e hora atual formatada

Usando `time.strftime()` para formatar a hora em um formato legível.

```python
import time

agora = time.localtime()
formato = time.strftime("%A, %d de %B de %Y, %H:%M:%S", agora)
print(f"Data e hora atual: {formato}")
```

#### medindo o tempo de cpu usado por um processo

Usando `time.process_time()` para ver quanto tempo de CPU foi utilizado.

```python
import time

inicio = time.process_time()
for i in range(10000000):
    pass
fim = time.process_time()

print(f"Tempo de CPU usado: {fim - inicio:.4f} segundos")
```

## exercícios módulo `time`

<details>
<summary>Lista de Exercícios</summary>

1. Exibindo o Tempo Atual. Use a função `time.time()` para exibir a quantidade de segundos desde o "Epoch" (01/01/1970).
1. Exibindo o Tempo em Formato Estruturado. Use a função `time.gmtime()` para exibir a data e hora atual no formato UTC (tempo universal coordenado).
1. Formatando o Tempo Local. Utilize a função `time.localtime()` para exibir a data e hora local. Em seguida, formate essa saída para mostrar apenas o ano, mês e dia.
1. Formatando uma Data Customizada. Use `time.strftime()` para formatar a data atual no formato `"Ano-Mês-Dia Hora:Minuto:Segundo"`.
1. Convertendo uma String de Data para um Struct_time. Utilize a função `time.strptime()` para converter a string `"12/09/2024 14:30:00"` para um objeto `struct_time`.
1. Exibindo Apenas o Ano Atual. Use a função `time.localtime()` para obter o ano atual e exibi-lo.
1. Medição de Tempo de Execução de Código. Crie um script que utilize `time.time()` para medir quanto tempo demora para executar um loop que itera 1 milhão de vezes.
1. Pausando a Execução do Programa. Use `time.sleep()` para pausar a execução do programa por 5 segundos.
1. Imprimindo um Relógio Simples. Crie um loop que utilize `time.sleep()` e `time.localtime()` para imprimir a hora atual a cada segundo, como um relógio simples.
1. Calculando a Diferença Entre Duas Datas. Use a função `time.mktime()` para calcular a diferença em segundos entre duas datas fornecidas.
1. Convertendo Tempo UTC para Tempo Local. Use a função `time.gmtime()` para pegar o tempo atual em UTC e, em seguida, converta para a hora local usando `time.localtime()`.
1. Exibindo o Tempo em Milissegundos. Modifique o programa para exibir o tempo atual em milissegundos usando `time.time()`.
1. Gerando um Timestamp Customizado. Crie um timestamp customizado para a data `01/01/2020 00:00:00` usando `time.mktime()`.
1. Exibindo a Data Atual em Diferentes Formatos. Use `time.strftime()` para exibir a data atual em três formatos diferentes (como "dd-mm-aaaa", "aaaa/mm/dd", etc.).
1. Validando uma Data a Partir de uma String. Use `time.strptime()` para validar se a string `"30/02/2020"` é uma data válida.
1. Verificando se é Horário de Verão. Use a função `time.localtime()` para verificar se o horário atual está em horário de verão (DST).
1. Simulando uma Contagem Regressiva. Crie um script que faça uma contagem regressiva de 10 segundos usando `time.sleep()`.
1. Comparando Duas Datas. Use `time.mktime()` para comparar duas datas fornecidas e determine qual é a mais recente.
1. Exibindo o Dia da Semana Atual. Utilize `time.localtime()` para determinar o dia da semana (onde 0 é segunda-feira e 6 é domingo).
1. Calculando o Tempo Restante para o Próximo Ano. Calcule quantos segundos faltam para o início do próximo ano (01/01/2025 00:00:00) a partir da data e hora atual.
1. Imprimindo a Data e Hora de 7 Dias Atrás. Use `time.time()` e `time.localtime()` para calcular e exibir a data e hora de 7 dias atrás.
1. Formatando o Tempo para Horário Completo e Amigável. Use `time.strftime()` para formatar a hora atual no formato `"12-hour:minute AM/PM"`.
1. Convertendo uma Data e Hora para o Timestamp. Crie uma data e hora arbitrária, como `"25/12/2024 15:00:00"`, e converta para o timestamp usando `time.mktime()`.
1. Exibindo o Mês Atual. Extraia e exiba o mês atual usando `time.localtime()`.
1. Implementando um Temporizador de 10 Segundos. Crie um programa que avise o usuário após 10 segundos, utilizando `time.sleep()`.
1. Calculando o Intervalo de Tempo Entre Duas Execuções. Crie um programa que execute duas funções e calcule o intervalo de tempo entre elas usando `time.perf_counter()`.
1. Convertendo uma Hora UTC para Horário Local. Pegue a hora UTC usando `time.gmtime()` e converta para a hora local usando `time.localtime()`.
1. Exibindo o Tempo de Início do Script. Use `time.ctime()` para exibir o horário em que o script foi iniciado.
1. Exibindo a Data Atual em Diferentes Idiomas. Use `time.strftime()` e altere as configurações de idioma do sistema para exibir a data atual em diferentes idiomas (pode ser feito manualmente no sistema operacional).

</details>

## módulo `string`

O módulo `string` do Python fornece constantes e funções úteis para manipular strings, principalmente quando se trabalha com caracteres e conjuntos de caracteres predefinidos. Ele ajuda a tornar operações comuns mais simples e legíveis, fornecendo acesso a letras, dígitos, pontuações, espaços em branco, e métodos úteis para formatação de strings.

1. [`string.ascii_letters`](#stringascii_letters)
1. [`string.ascii_lowercase`](#stringascii_lowercase)
1. [`string.ascii_uppercase`](#stringascii_uppercase)
1. [`string.digits`](#stringdigits)
1. [`string.hexdigits`](#stringhexdigits)
1. [`string.octdigits`](#stringoctdigits)
1. [`string.punctuation`](#stringpunctuation)
1. [`string.whitespace`](#stringwhitespace)
1. [`string.printable`](#stringprintable)
1. [`string.capwords`](#stringcapwordss-sepnone)
1. [exemplos práticos do módulo `string`](#exemplos-práticos-do-módulo-string)
1. [índice](#índice)

### `string.ascii_letters`

Contém todas as letras maiúsculas e minúsculas do alfabeto em inglês, combinando `ascii_lowercase` (minúsculas) e `ascii_uppercase` (maiúsculas). Útil quando se deseja gerar uma sequência de letras ou validar se um caractere é uma letra.

**exemplo :**
```python
import string
print(string.ascii_letters)  # Saída: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'
```

### `string.ascii_lowercase`

Contém todas as letras minúsculas do alfabeto em inglês (`'abcdefghijklmnopqrstuvwxyz'`). Ideal para operações que envolvem apenas letras minúsculas.

**exemplo :**
```python
import string
print(string.ascii_lowercase)  # Saída: 'abcdefghijklmnopqrstuvwxyz'
```

### `string.ascii_uppercase`

Contém todas as letras maiúsculas do alfabeto em inglês (`'ABCDEFGHIJKLMNOPQRSTUVWXYZ'`). Útil para operações que envolvem apenas letras maiúsculas.

**exemplo :**
```python
import string
print(string.ascii_uppercase)  # Saída: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
```

### `string.digits`

Contém todos os dígitos decimais de 0 a 9 (`'0123456789'`). Muito útil para validar ou gerar números.

**exemplo :**
```python
import string
print(string.digits)  # Saída: '0123456789'
```

### `string.hexdigits`

Contém todos os dígitos hexadecimais, incluindo os números de 0 a 9 e as letras de A a F (tanto maiúsculas quanto minúsculas). A sequência é `'0123456789abcdefABCDEF'`. Usado em conversões ou validações de números hexadecimais.

**exemplo :**
```python
import string
print(string.hexdigits)  # Saída: '0123456789abcdefABCDEF'
```

### `string.octdigits`

Contém todos os dígitos octais, de 0 a 7 (`'01234567'`). Ideal para trabalhar com números no sistema octal.

**exemplo :**
```python
import string
print(string.octdigits)  # Saída: '01234567'
```

### `string.punctuation`

Contém todos os caracteres de pontuação comuns, como `!`, `@`, `#`, etc. Útil para remover ou validar a presença de pontuação em uma string.

**exemplo :**
```python
import string
print(string.punctuation)  # Saída: '!"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~'
```

### `string.whitespace`

Contém todos os caracteres que são considerados espaço em branco, como o espaço (`' '`), tabulação (`'\t'`), nova linha (`'\n'`), etc. Excelente para tarefas de limpeza de strings.

**exemplo :**
```python
import string
print(repr(string.whitespace))  # Saída: ' \t\n\r\x0b\x0c'
```

### `string.printable`

Contém todos os caracteres imprimíveis, que são a união de letras, dígitos, pontuação e espaços em branco. Ideal para validar se uma string contém apenas caracteres que podem ser impressos.

**exemplo :**
```python
import string
print(string.printable)  # Saída: todos os caracteres imprimíveis
```

### `string.capwords(s, sep=None)`

Essa função converte uma string de forma que a primeira letra de cada palavra seja maiúscula (capitaliza a string). Ela é semelhante ao método `str.title()`, mas usa o espaço como separador por padrão. Caso você passe um separador (como vírgula ou ponto), a função usa esse separador para detectar as palavras.

**exemplo :**
```python
import string
frase = "olá mundo, python é incrível"
print(string.capwords(frase))  # Saída: 'Olá Mundo, Python É Incrível'
```

---

### exemplos práticos do módulo `string`

#### gerar uma senha aleatória

Usando os caracteres disponíveis em `string.ascii_letters`, `string.digits` e `string.punctuation` para criar uma senha aleatória.

**exemplo :**
```python
import string
import random

def gerar_senha(tamanho=8):
    caracteres = string.ascii_letters + string.digits + string.punctuation
    senha = ''.join(random.choice(caracteres) for _ in range(tamanho))
    return senha

senha = gerar_senha(12)
print(f"Senha gerada: {senha}")
```

#### validar se uma string é alfabética

Verificar se uma string contém apenas letras utilizando `string.ascii_letters`.

**exemplo :**
```python
import string

def eh_alfabetica(texto):
    for caractere in texto:
        if caractere not in string.ascii_letters:
            return False
    return True

print(eh_alfabetica("Python"))  # Saída: True
print(eh_alfabetica("Python3"))  # Saída: False
```

#### remover pontuação de uma string

Utilizando `string.punctuation` para remover todos os sinais de pontuação de uma frase.

**exemplo :**
```python
import string

def remover_pontuacao(texto):
    return ''.join(caractere for caractere in texto if caractere not in string.punctuation)

frase = "Olá, mundo! Python é incrível."
frase_sem_pontuacao = remover_pontuacao(frase)
print(frase_sem_pontuacao)  # Saída: 'Olá mundo Python é incrível'
```

#### verificar se uma string contém apenas caracteres imprimíveis

Verificar se uma string contém apenas caracteres que podem ser impressos utilizando `string.printable`.

**exemplo :**
```python
import string

def eh_imprimivel(texto):
    return all(caractere in string.printable for caractere in texto)

print(eh_imprimivel("Python 3.10!"))  # Saída: True
print(eh_imprimivel("Texto\nNão Imprimível"))  # Saída: True (nova linha ainda é considerada imprimível)
```

#### capitalize todas as palavras de uma string

Utilizando `string.capwords()` para transformar a primeira letra de cada palavra em maiúscula.

**exemplo :**
```python
import string

frase = "python é uma linguagem incrível"
frase_capitalizada = string.capwords(frase)
print(frase_capitalizada)  # Saída: 'Python É Uma Linguagem Incrível'
```

## exercícios módulo `string`

<details>
<summary>Lista de Exercícios</summary>

1. Exibindo o Alfabeto Minúsculo. Use `string.ascii_lowercase` para exibir todas as letras minúsculas do alfabeto inglês.
1. Exibindo o Alfabeto Maiúsculo. Use `string.ascii_uppercase` para exibir todas as letras maiúsculas do alfabeto inglês.
1. Exibindo Todos os Dígitos. Use `string.digits` para exibir todos os dígitos (de 0 a 9).
1. Exibindo Caracteres Hexadecimais. Use `string.hexdigits` para exibir todos os caracteres válidos em um número hexadecimal.
1. Exibindo Caracteres Octais. Use `string.octdigits` para exibir todos os dígitos válidos em um número octal.
1. Exibindo Símbolos de Pontuação. Use `string.punctuation` para exibir todos os símbolos de pontuação.
1. Exibindo Todos os Caracteres Imprimíveis. Use `string.printable` para exibir todos os caracteres imprimíveis.
1. Exibindo os Caracteres de Espaçamento. Use `string.whitespace` para exibir todos os caracteres considerados espaço em branco (espaços, tabulações, etc.).
1. Verificando se uma String é Alfanumérica. Crie uma função que verifique se uma string contém apenas caracteres alfanuméricos utilizando `string.ascii_letters` e `string.digits`.
1. Convertendo uma String para Maiúscula. Utilize `string.ascii_uppercase` para criar uma função que converta qualquer string para letras maiúsculas.
1. Convertendo uma String para Minúscula. Use `string.ascii_lowercase` para criar uma função que converta qualquer string para letras minúsculas.
1. Removendo Pontuação de uma String. Crie uma função que remova todos os símbolos de pontuação de uma string utilizando `string.punctuation`.
1. Substituindo Espaços por Underlines. Use `string.whitespace` para substituir todos os espaços de uma string por underscores (`_`).
1. Gerando uma Senha Aleatória. Use `string.ascii_letters` e `string.digits` para gerar uma senha aleatória de 8 caracteres.
1. Verificando se uma String é Hexadecimal. Crie uma função que verifique se uma string contém apenas caracteres válidos para um número hexadecimal, usando `string.hexdigits`.
1. Removendo Dígitos de uma String. Crie uma função que remova todos os dígitos de uma string utilizando `string.digits`.
1. Verificando se uma String é uma Palavra. Crie uma função que verifique se uma string contém apenas letras (maiúsculas ou minúsculas), usando `string.ascii_letters`.
1. Formatando uma String de Forma Capitalizada. Utilize `string.capwords()` para capitalizar cada palavra de uma frase.
1. Gerando um Identificador de Produto. Crie uma função que gere um identificador de produto aleatório, contendo letras e números, utilizando `string.ascii_uppercase` e `string.digits`.
1. Gerando um Nome de Arquivo Seguro. Crie uma função que remova qualquer caractere especial de uma string, exceto letras, números e underscore, utilizando `string.ascii_letters`, `string.digits` e `'_`.
1. Contando o Número de Dígitos em uma String. Crie uma função que conte quantos dígitos existem em uma string usando `string.digits`.
1. Validando um Identificador. Crie uma função que valide se um identificador contém apenas letras, números e underscores utilizando `string.ascii_letters`, `string.digits`, e `'_'`.
1. Separando Palavras de uma Frase. Utilize `string.whitespace` para separar as palavras de uma frase em uma lista, ignorando os espaços em branco.
1. Gerando uma Frase sem Espaços. Crie uma função que remova todos os espaços de uma frase utilizando `string.whitespace`.
1. Gerando um Token de Sessão Aleatório. Crie uma função que gere um token aleatório de 16 caracteres utilizando `string.printable`.
1. Formatando um Texto em Blocos de 4 Dígitos. Crie uma função que pegue uma sequência de números e formate em blocos de 4 dígitos separados por hífens (ex.: "1234-5678-9012").
1. Verificando se uma String é uma Data Válida. Crie uma função que verifique se uma string contém uma data no formato "dd/mm/yyyy" usando `string.digits` e `string.punctuation`.
1. Criando uma String de Números Sequenciais. Crie uma função que gere uma string contendo todos os números de 0 a 9 em sequência usando `string.digits`.
1. Convertendo um Texto para Código Morse. Crie uma função que converta uma string para código Morse, utilizando `string.ascii_uppercase` e `string.digits` para mapear os caracteres.
1. Formatando uma String com Pontuação e Espaçamento. Utilize `string.capwords()` para formatar uma frase, ajustando os espaços em branco e a capitalização de cada palavra.
1. Criando uma Função de Busca de Palavras. Crie uma função que receba um texto e uma palavra e retorne quantas vezes a palavra aparece no texto, ignorando a pontuação com `string.punctuation`.
1. Verificando se uma String é um Número Binário. Crie uma função que verifique se uma string contém apenas os caracteres '0' e '1', utilizando `string.digits`.
1. Formatando um Texto para Ficar Legível. Use `string.capwords()` para formatar um texto inteiro, capitalizando as primeiras letras de cada palavra.
1. Gerando uma String de Símbolos Aleatórios. Crie uma função que gere uma string de 10 caracteres contendo apenas símbolos de `string.punctuation`.
1. Verificando se uma String é Imprimível. Crie uma função que verifique se todos os caracteres de uma string são imprimíveis, utilizando `string.printable`.
1. Contando Caracteres Não Imprimíveis em uma String. Crie uma função que conte quantos caracteres não imprimíveis existem em uma string, utilizando `string.printable`.
1. Gerando uma Senha Segura. Crie uma função que gere uma senha aleatória contendo letras maiúsculas, minúsculas, números e símbolos, utilizando `string.ascii_letters`, `string.digits`, e `string.punctuation`.
1. Verificando se uma Senha é Segura. Crie uma função que verifique se uma senha contém pelo menos uma letra maiúscula, uma minúscula, um número e um símbolo de pontuação.
1. Contando a Frequência de Letras em uma String. Crie uma função que conte quantas vezes cada letra aparece em uma string utilizando `string.ascii_lowercase` ou `string.ascii_uppercase`.
1. Gerando uma Sequência de Caracteres Alternados. Crie uma função que gere uma string alternando entre letras maiúsculas e minúsculas, utilizando `string.ascii_uppercase` e `string.ascii_lowercase`.
1. Verificando Caracteres Permitidos em Identificadores. Crie uma função que verifique se uma string é um identificador válido (apenas letras, números e underscores), utilizando `string.ascii_letters` e `string.digits`.
1. Removendo Pontuação e Espaços de uma String. Crie uma função que remova todos os espaços e pontuações de uma string, utilizando `string.whitespace` e `string.punctuation`.
1. Verificando se uma String Contém Apenas Letras e Espaços. Crie uma função que verifique se uma string contém apenas letras e espaços, utilizando `string.ascii_letters` e `string.whitespace`.
1. Gerando uma Chave de Produto Aleatória. Crie uma função que gere uma chave de produto no formato "ABCD-EFGH-IJKL", utilizando `string.ascii_uppercase` e `string.digits`.
1. Formatando um Número de Cartão de Crédito. Crie uma função que formate um número de cartão de crédito no formato "XXXX-XXXX-XXXX-XXXX", usando `string.digits`.
1. Verificando se uma String Contém Apenas Caracteres de Controle. Crie uma função que verifique se uma string contém apenas caracteres de controle (não imprimíveis), utilizando `string.whitespace` e verificando com `string.printable`.
1. Substituindo Dígitos por Palavras. Crie uma função que substitua cada dígito em uma string pela respectiva palavra (ex.: "1" por "um", "2" por "dois"), utilizando `string.digits`.
1. Gerando um Código de Desconto Aleatório. Crie uma função que gere um código de desconto de 8 caracteres, utilizando letras maiúsculas e números, com `string.ascii_uppercase` e `string.digits`.
1. Validando um Nome de Usuário. Crie uma função que valide um nome de usuário, verificando se contém apenas letras, números e underscores, utilizando `string.ascii_letters` e `string.digits`.
1. Contando Caracteres de Espaçamento. Crie uma função que conte quantos caracteres de espaçamento existem em uma string, utilizando `string.whitespace`.

</details>
