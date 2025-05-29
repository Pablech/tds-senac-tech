Índice

1. [o que uma função?](#o-que-e-uma-funcao)
1. [por que usar fuções](#por-que-usar-funcoes)
1. [tipos de funções](#tipos-de-funcoes)
1. [boas práticas na definição de funções](#boas-praticas-na-definicao-de-funcoes)
1. [comando def](#comando-def)
1. [exercícios de funções](#exercicios-de-funcoes)
1. [argumentos posicionais](#argumentos-posicionais)
1. [exercícios argumentos posicionais](#exercícios-argumentos-posicionais)
1. [comando return](#comando-return)
1. [exercícios comando return](#exercícios-comando-return)
1. [argumentos com valor padrão](#argumentos-com-valor-padrão)
1. [argumentos nomeados](#argumentos-nomeados)
1. [exercícios valor padrão e argumentos nomeados](#exercicios-valor-padrao-e-argumentos-nomeados)
1. [recursão](#recursão)
1. [exercícios recursão](#exercícios-recursão)

# funções

As funções em Python são blocos de código reutilizáveis que realizam uma tarefa específica. Elas permitem que se organize e modularize o código, facilitando a manutenção, reutilização e a legibilidade.

## o que é uma função?

Uma função em Python é um trecho de código que é definido uma vez e pode ser executado (ou "chamado") quantas vezes for necessário. As funções podem receber entradas (chamadas de parâmetros ou argumentos) e podem retornar saídas (resultado). Elas são uma maneira de agrupar código que realiza uma tarefa específica, o que torna o programa mais estruturado e modular.

## por que usar funções?

- **reutilização de código** : uma função é definida uma vez e é possível usá-la em diferentes partes do programa sem precisar reescrever o código;
- **modularidade** : funções permitem dividir um programa grande em partes menores e mais manejáveis, cada uma responsável por uma tarefa específica;
- **facilidade de manutenção** : como o código é organizado em blocos lógicos, ele se torna mais fácil de entender, corrigir e atualizar;
- **redução de erros** : evitar repetição de código reduz a probabilidade de erros. se for necessário corrigir um bug, só precisará fazer isso em um lugar, na definição da função;

## tipos de funções

O Python, e outras linguagens de programação, podem usar funções de diferentes modos :

- funções sem parâmetros e sem retorno : elas não recebem dados externos e não retornam valores. Elas apenas executam um bloco de código;
- funções com parâmetros e sem retorno : recebem dados (argumentos) e realizam operações, mas não retornam valores;
- funções sem parâmetros e com retorno : não recebem dados, mas realizam operações e retornam um valor;
- funções com parâmetros e com retorno : recebem dados e retornam um valor após realizar operações;

## boas práticas na definição de funções

- **escolha bons nomes para funções e parâmetros** : nomes devem ser descritivos e refletir o propósito da função;
- **mantenha as funções curtas** : funções devem ser curtas e realizar apenas uma tarefa específica;
- **documente suas funções** : use docstrings para explicar o que a função faz, quais são seus parâmetros e o que ela retorna;
- **evite efeitos colaterais** : uma função idealmente deve receber entradas, processá-las e retornar um resultado sem alterar o estado externo;

## comando `def`

O comando `def` em Python é utilizado para declarar funções. Ele é uma das palavras-chave mais importantes na linguagem, pois permite que se defina blocos de código que podem ser chamados e reutilizados em diferentes partes de um programa.

### o que é o comando `def`?

O `def` é uma abreviação de "define" e é usado para definir uma nova função. Uma função, no contexto da programação, é um bloco de código que realiza uma tarefa específica e pode ser reutilizado sempre que necessário. Quando se usa `def`, se está essencialmente criando um novo comando personalizado que pode ser executado em qualquer ponto do seu código.

### sintaxe do comando `def`

A sintaxe básica do `def` para criar uma função é a seguinte :

```python
def nome_da_funcao(parâmetros_opcionais):
    """Docstring opcional"""
    corpo_da_funcao
```

O que é cada parte :

- **`def`** : esta palavra-chave inicia a definição da função;
- **`nome_da_funcao`** : este é o nome que se dá à função. Deve ser descritivo e seguir as regras de nomenclatura do Python (não pode começar com números, não pode conter espaços, e não pode ser uma palavra reservada);
- **`parâmetros_opcionais`** : entre parênteses, pode-se definir parâmetros que a função aceita. Eles são opcionais, o que significa que pode-se ter funções sem parâmetros;
- **`:`** : Os dois-pontos marcam o fim da linha de declaração e indicam que o corpo da função começa na linha seguinte;
- **`"""Docstring opcional"""`** : uma string entre três aspas, usada para documentar o que a função faz. Essa parte é opcional, mas é uma boa prática incluí-la;
- **`corpo_da_funcao`** : este é o bloco de código que define o que a função faz. Esse bloco deve ser indentado (geralmente com quatro espaços) em relação à linha de declaração;

### exemplo básico de definição de função

Abaixo está um exemplo de como definir uma função simples que imprime uma mensagem de saudação :

```python
def saudacao():
    """Esta função imprime uma saudação simples."""
    print("Olá, bem-vindo ao Python!")
```

Neste exemplo :
- **`def saudacao():`** : define uma função chamada `saudacao` que não aceita parâmetros;
- **`"""Esta função imprime uma saudação simples."""`** : é uma docstring que descreve a função;
- **`print("Olá, bem-vindo ao python!")`** : é o corpo da função, que será executado quando a função for chamada;

### execução do comando `def`

Quando o Python encontra o comando `def` durante a execução do programa, ele não executa imediatamente o código dentro da função. Em vez disso, ele "registra" a função com o nome fornecido, o que significa que a função existe na memória e pode ser chamada posteriormente no código.

Exemplo :

```python
def saudacao():
    print("Olá, bem-vindo ao Python!")

print("Antes de chamar a função.")
# saída : Antes de chamar a função.
saudacao()
# saída : Olá, bem-vindo ao Python!
print("Depois de chamar a função.")
# saída : Depois de chamar a função.
```

Neste exemplo :
- o python passa pela definição da função `saudacao` e a armazena;
- a função `saudacao()` é chamada, o que faz com que o código dentro da função seja executado;

### docstrings e comentários

As docstrings são usadas para documentar funções, tornando o código mais legível e fácil de entender. Elas podem ser acessadas usando a função `help()` ou o atributo `.__doc__` da função.

Exemplo :

```python
def multiplicar(a, b):
    """Esta função mostra o produto de dois números."""
    print(f'{a * b = }')

print(multiplicar.__doc__)
# saída : Esta função mostra o produto de dois números.
```

## exercícios de funções

<details>
<summary>Lista de Exercícios</summary>

1. funções sem argumentos
    1. Crie uma função chamada `mostrar_boas_vindas` que imprime "Bem-vindo ao Python!".
    1. Defina uma função chamada `exibir_data_atual` que imprime a data atual.
    1. Escreva uma função chamada `mostrar_linha` que imprime uma linha de 40 asteriscos.
    1. Crie uma função chamada `exibir_mensagem_padrao` que imprime uma mensagem motivacional.
    1. Defina uma função chamada `mostrar_nota_maxima` que imprime a nota máxima possível em um exame.
    1. Crie uma função chamada `imprimir_autor` que imprime o nome do autor de um livro fictício.
    1. Escreva uma função chamada `exibir_versao_software` que imprime a versão atual de um software.
    1. Crie uma função chamada `mostrar_horario` que imprime o horário atual.
    1. Defina uma função chamada `exibir_pi` que imprime o valor de π (pi).
    1. Escreva uma função chamada `mostrar_linguagem_programacao` que imprime "Python" como a linguagem de programação favorita.

</details>

## argumentos posicionais

Em Python, funções podem aceitar entradas na forma de **parâmetros**. Quando uma função é definida, pode-se especificar os parâmetros, que atuam como variáveis que recebem valores quando a função é chamada. Esses valores são chamados de **argumentos**.

- **parâmetros** são os nomes usados na definição da função;
- **argumentos** são os valores que você passa para a função quando a chama;

**Argumentos posicionais** são a maneira mais comum de passar valores para uma função. Eles são chamados de "posicionais" porque os valores passados são associados aos parâmetros com base na posição.

Exemplo básico :

```python
def soma(a, b):
    print(f'{a + b = }')
```

Aqui :
- **`a` e `b`** são os parâmetros da função;
- quando a função é chamada, são fornecidos dois argumentos que serão mapeados para `a` e `b` com base em sua ordem;

Chamando a função :

```python
soma(3, 5)
# saída : a + b = 8
```

Neste exemplo :
- **`3`** é o primeiro argumento, que é mapeado para o parâmetro `a`;
- **`5`** é o segundo argumento, que é mapeado para o parâmetro `b`;
- a função mostra a soma dos dois valores, `8`;

### como funciona a ordem dos argumentos?

A ordem dos argumentos é crucial em funções que utilizam parâmetros posicionais. O Python associa cada argumento ao seu respectivo parâmetro pela ordem em que são fornecidos. Se inverter a ordem dos argumentos, os valores atribuídos aos parâmetros mudam.

Exemplo :

```python
def dividir(dividendo, divisor):
    print(f'{dividendo / divisor = }')

dividir(10, 2)
# saída : dividendo / divisor = 5.0
dividir(2, 10)
# saída : dividendo / divisor = 0.2
```

Aqui :
- em **`resultado1 = dividir(10, 2)`**, `10` é mapeado para `dividendo` e `2` é mapeado para `divisor`;
- em **`resultado2 = dividir(2, 10)`**, `2` é mapeado para `dividendo` e `10` é mapeado para `divisor`;

A ordem dos argumentos influencia diretamente o resultado da operação.

### número de argumentos e parâmetros

A função deve ser chamada com o mesmo número de argumentos que o número de parâmetros definidos, ou o Python levantará um erro.

Exemplo :

```python
def multiplicar(a, b, c):
    print(f'{a * b * c = }')

multiplicar(2, 3)
# saída :
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# TypeError: multiplicar() missing 1 required positional argument: 'c'
```

Neste exemplo :
- A função `multiplicar` espera três argumentos. Se for fornecido menos ou mais, o Python levantará um erro `TypeError`;

### quando usar argumentos posicionais

Os argumentos posicionais são ideais quando :
- a ordem dos argumentos faz sentido para a operação da função;
- todos os parâmetros devem ser fornecidos para a função operar corretamente;
- a clareza do código é mantida quando os argumentos são passados em uma ordem específica;

## exercícios argumentos posicionais

<details>
<summary>Lista de Exercícios</summary>

1. funções com argumentos posicionais (sem valor padrão)
    1. Crie uma função chamada `saudacao` que recebe um nome e imprime uma saudação personalizada.
    1. Escreva uma função chamada `calcular_area_retangulo` que recebe a largura e a altura de um retângulo e imprima a área.
    1. Defina uma função chamada `calcular_perimetro` que recebe o comprimento e a largura de um retângulo e imprima o perímetro.
    1. Crie uma função chamada `multiplicar_numeros` que recebe dois números e imprima o produto deles.
    1. Escreva uma função chamada `converter_para_dolar` que recebe um valor em reais e a taxa de câmbio, e retorna o valor convertido para dólares.
    1. Crie uma função chamada `calcular_velocidade_media` que recebe a distância e o tempo, e retorna a velocidade média.
    1. Defina uma função chamada `calcular_desconto` que recebe o preço original e a porcentagem de desconto, e retorna o valor com desconto aplicado.
    1. Crie uma função chamada `exibir_nome_completo` que recebe o primeiro e o último nome de uma pessoa, e imprime o nome completo.
    1. Escreva uma função chamada `calcular_media` que recebe três notas e retorna a média aritmética.
    1. Crie uma função chamada `calcular_volume_cilindro` que recebe o raio e a altura de um cilindro, e retorna o volume.

</details>

## comando `return`

O comando `return` em Python é utilizado dentro de funções para indicar que a função deve devolver um valor ao ponto onde foi chamada. Quando uma função atinge o `return`, ela termina imediatamente sua execução e o controle do programa retorna para o código que chamou a função. Esse valor retornado pode ser usado, armazenado em uma variável, ou mesmo ignorado.

### o que é o comando `return`?

O `return` é uma palavra-chave em Python que serve para duas finalidades principais :
- **encerrar a execução da função** : quando o `return` é executado, a função para de executar, mesmo que haja código após o `return`;
- **retornar um valor** : o `return` pode devolver um valor específico, que pode ser utilizado no código que chamou a função;

### como o `return` funciona em funções?

Quando uma função tem um `return`, ela se comporta de forma diferente de uma função que apenas executa código sem `return`. Com `return`, a função pode fornecer resultados que podem ser armazenados e usados posteriormente.

Exemplo simples :

```python
def soma(a, b):
    return a + b

# chamando a função
resultado = soma(3, 5)
print(resultado)
# saída : 8
```

Aqui, a função `soma` aceita dois argumentos `a` e `b`, e retorna a soma deles.

Neste exemplo :
- **`soma(3, 5)`** : chama a função e passa os valores 3 e 5 como argumentos;
- **`return a + b`** : calcula a soma de 3 e 5, que é 8, e retorna esse valor;
- **`resultado = soma(3, 5)`** : armazena o valor retornado, 8, na variável `resultado`;

### funções com `return` sem valor específico

Se `return` for utilizado sem nenhum valor, ele simplesmente encerra a função, mas não retorna nenhum dado. Essa prática é mais comum para indicar o fim prematuro de uma função, dependendo de uma condição específica.

Exemplo :

```python
def verificar_par(n):
    if n % 2 == 0:
        print(f"{n} é par.")
        return
    print(f"{n} é ímpar.")

# chamando a função
verificar_par(4)
# saída : 4 é par.
verificar_par(7)
# saída : 7 é ímpar.
```

Aqui, quando o número é par, a função imprime que o número é par e usa `return` para encerrar a função. Quando o número é ímpar, o código continua até o próximo `print`.

### retornando múltiplos valores

Python permite que retorne múltiplos valores de uma função, utilizando uma vírgula para separá-los. Esses valores são retornados como uma tupla.

Exemplo :

```python
def operacoes(a, b):
    soma = a + b
    diferenca = a - b
    return soma, diferenca

resultado_soma, resultado_diferenca = operacoes(10, 5)
print(f"Soma: {resultado_soma}, Diferença: {resultado_diferenca}")
# saída : Soma: 15, Diferença: 5
```

Neste exemplo :
- **`return soma, diferenca`** : retorna dois valores, `soma` e `diferenca`;
- **`resultado_soma, resultado_diferenca = operacoes(10, 5)`** : os valores retornados são desembrulhados em duas variáveis;

### retornando estruturas de dados

Funções podem retornar qualquer tipo de dado, incluindo listas, dicionários, tuplas, etc.

Exemplo :

```python
def criar_lista(a, b, c):
    return [a, b, c]

minha_lista = criar_lista(1, 2, 3)
print(minha_lista)
# saída : [1, 2, 3]
```

### comportamento de `return` dentro de laços e condicionais

O `return` pode ser usado dentro de laços (`for`, `while`) ou condicionais (`if`, `else`). Ao ser executado, o `return` imediatamente encerra a função, mesmo que ainda existam laços ou código após o `return`.

Exemplo :

```python
def encontrar_numero(lista, alvo):
    for numero in lista:
        if numero == alvo:
            return True
    return False

encontrado = encontrar_numero([1, 2, 3, 4, 5], 3)
print(encontrado)
# saída : True
```

Neste exemplo:
- se o número `alvo` for encontrado na lista, a função retorna `true` e para a execução;
- se o laço terminar sem encontrar o `alvo`, a função retorna `false`;

### retorno implícito de `None`

Se uma função não tiver um `return` explícito, ou se o `return` não especificar um valor, a função retorna `None` por padrão.

Exemplo :

```python
def funcao_sem_return():
    pass

resultado = funcao_sem_return()
print(resultado)
# saída : None
```

Neste exemplo, como não há `return` na função, o Python retorna automaticamente `None`.

## exercícios comando return

<details>
<summary>Lista de Exercícios</summary>

1. funções com retorno de um ou mais valores
    1. Defina uma função chamada `calcular_soma_e_produto` que recebe dois números e retorna a soma e o produto deles.
    1. Escreva uma função chamada `converter_temperatura` que recebe uma temperatura em Celsius e retorna a temperatura em Fahrenheit e Kelvin.
    1. Crie uma função chamada `calcular_diferenca_e_divisao` que recebe dois números e retorna a diferença e o quociente deles.
    1. Defina uma função chamada `calcular_potencia` que recebe uma base e um expoente, e retorna a base elevada ao expoente e a raiz quadrada da base.
    1. Escreva uma função chamada `calcular_min_e_max` que recebe três números e retorna o menor e o maior valor entre eles.
    1. Crie uma função chamada `calcular_imc` que recebe o peso e a altura de uma pessoa, e retorna o IMC (Índice de Massa Corporal) e a classificação (abaixo do peso, normal, sobrepeso, obesidade).
    1. Defina uma função chamada `calcular_distancias` que recebe duas coordenadas (x1, y1) e (x2, y2), e retorna a distância horizontal e vertical entre elas.
    1. Escreva uma função chamada `calcular_hipotenusa` que recebe os comprimentos dos dois catetos de um triângulo retângulo, e retorna o comprimento da hipotenusa.
    1. Crie uma função chamada `calcular_area_perimetro_retangulo` que recebe a largura e a altura de um retângulo, e retorna a área e o perímetro.
    1. Defina uma função chamada `calcular_media_variancia` que recebe uma lista de números, e retorna a média e a variância dos números.
1. retorno de estruturas mais complexas (listas, tuplas, sets e dicionários)
    1. Escreva uma função chamada `criar_lista_numeros` que recebe três números e retorna uma lista contendo esses números.
    1. Crie uma função chamada `criar_tupla_nomes` que recebe três nomes e retorna uma tupla contendo esses nomes.
    1. Defina uma função chamada `criar_set_numeros` que recebe três números e retorna um set contendo esses números.
    1. Escreva uma função chamada `criar_dicionario_pessoa` que recebe nome, idade e cidade, e retorna um dicionário contendo essas informações.
    1. Crie uma função chamada `criar_lista_quadrados` que recebe uma lista de números e retorna uma lista contendo o quadrado de cada número.
    1. Defina uma função chamada `criar_tupla_cubos` que recebe uma lista de números e retorna uma tupla contendo o cubo de cada número.
    1. Escreva uma função chamada `criar_set_palavras_unicas` que recebe uma lista de palavras e retorna um set contendo as palavras únicas.
    1. Crie uma função chamada `criar_dicionario_quantidade_letras` que recebe uma lista de palavras e retorna um dicionário onde as chaves são as palavras e os valores são a quantidade de letras em cada palavra.
    1. Defina uma função chamada `criar_lista_pares_impares` que recebe uma lista de números e retorna duas listas, uma contendo os números pares e outra os ímpares.
    1. Escreva uma função chamada `criar_dicionario_contagem_caracteres` que recebe uma string e retorna um dicionário onde as chaves são os caracteres e os valores são o número de vezes que cada caractere aparece na string.
1. retorno implícito
    1. Crie uma função chamada `verificar_positivo` que recebe um número e retorna True se o número for positivo, e False caso contrário.
    1. Defina uma função chamada `verificar_par` que recebe um número e retorna True se o número for par, e False se for ímpar.
    1. Escreva uma função chamada `verificar_palindromo` que recebe uma palavra e retorna True se a palavra for um palíndromo, e False caso contrário.
    1. Crie uma função chamada `verificar_maioridade` que recebe a idade de uma pessoa e retorna True se a pessoa for maior de idade, e False caso contrário.
    1. Defina uma função chamada `verificar_letra` que recebe uma string e uma letra, e retorna True se a letra estiver na string, e False caso contrário.
    1. Escreva uma função chamada `verificar_substring` que recebe duas strings, e retorna True se a segunda string for uma substring da primeira, e False caso contrário.
    1. Crie uma função chamada `verificar_numero_primo` que recebe um número e retorna True se o número for primo, e False caso contrário.
    1. Defina uma função chamada `verificar_lista_vazia` que recebe uma lista e retorna True se a lista estiver vazia, e False caso contrário.
    1. Escreva uma função chamada `verificar_todos_pares` que recebe uma lista de números e retorna True se todos os números forem pares, e False caso contrário.
    1. Crie uma função chamada `verificar_palavras_mesma_tamanho` que recebe duas palavras e retorna True se ambas tiverem o mesmo número de caracteres, e False caso contrário.

</details>

## argumentos com valor padrão

No Python, ao definir uma função, é possível atribuir valores padrão a alguns dos parâmetros. Isso permite que a função seja chamada sem a necessidade de fornecer explicitamente um valor para esses parâmetros, usando um valor predefinido caso o argumento não seja passado.

### o conceito de argumentos com valor padrão

Quando uma função é definida, é possível especificar valores padrão para um ou mais parâmetros. Esses valores são usados automaticamente se não fornecer um argumento correspondente quando chamar a função. Isso torna as funções mais flexíveis e fáceis de usar.

Veja um exemplo simples :

```python
def saudar(nome, mensagem="Olá!"):
    print(f"{mensagem} {nome}")
```

Aqui, o parâmetro `mensagem` tem um valor padrão de `"Olá!"`. Isso significa que pode-se chamar a função `saudar` de duas maneiras diferentes:

1. **passando ambos os argumentos**:

```python
saudar("João", "Bem-vindo")
# saída : Bem-vindo João
```

2. **usando o valor padrão para `mensagem`**:

```python
saudar("João")
# saída : Olá! João
```

No segundo caso, como nenhum valor foi passado para `mensagem`, o valor padrão `"Olá!"` foi utilizado.

### vantagens dos argumentos com valor padrão

Os argumentos com valor padrão oferecem diversas vantagens, incluindo maior flexibilidade e simplicidade na chamada de funções.

#### 1. simplificação de chamada

Em funções com muitos parâmetros, os valores padrão permitem que o usuário da função forneça apenas os argumentos que são realmente necessários, simplificando a chamada.

#### 2. redução de erros

Ao fornecer valores padrão para parâmetros comuns, é possível evitar erros que ocorrem quando os usuários esquecem de passar um argumento importante.

#### 3. manutenção facilitada

Funções com valores padrão são mais fáceis de manter e atualizar, pois pode-se alterar os padrões para refletir mudanças nas necessidades sem exigir que todas as chamadas à função sejam modificadas.

### regras e comportamentos de argumentos com valor padrão

Existem algumas regras importantes e comportamentos a serem considerados ao usar valores padrão:

#### 1. ordem dos argumentos

Os argumentos com valor padrão devem vir após os argumentos sem valor padrão na definição da função. Isso porque o Python precisa saber quais argumentos são obrigatórios e quais são opcionais.

**Exemplo Correto**:

```python
def conectar(host, porta=8080):
    print(f"Conectando a {host} na porta {porta}")
```

**Exemplo Incorreto**:

```python
def conectar(porta=8080, host):
    print(f"Conectando a {host} na porta {porta}")
```

Este exemplo resultará em um erro de sintaxe porque um argumento obrigatório (`host`) vem após um argumento opcional (`porta`).

#### 2. argumentos com valor padrão e argumentos nomeados

Quando se define uma função com valores padrão, pode-se usar tanto argumentos posicionais quanto nomeados ao chamá-la.

```python
def criar_conta(nome, tipo="Padrão", saldo_inicial=0):
    print(f"Conta criada para {nome} do tipo {tipo} com saldo inicial de {saldo_inicial}")
```

Essa função pode ser chamada de várias maneiras :

- **usando apenas argumentos posicionais** :

```python
criar_conta("Maria", "Premium", 1000)
```

- **misturando argumentos posicionais e nomeados** :

```python
criar_conta("Carlos", saldo_inicial=500)
```

Aqui, o valor de `saldo_inicial` foi alterado, mas o valor padrão de `tipo` foi mantido.

- **usando apenas argumentos nomeados** :

```python
criar_conta(nome="Ana", saldo_inicial=250)
```

#### 3. avaliação de valores padrão

Os valores padrão dos argumentos são avaliados apenas uma vez, no momento em que a função é definida. Isso significa que se o valor padrão for um objeto mutável (como uma lista ou dicionário), ele será compartilhado entre todas as chamadas da função, o que pode levar a comportamentos inesperados.

**exemplo de comportamento inesperado**:

```python
def adicionar_item(item, lista=[]):
    lista.append(item)
    return lista

print(adicionar_item("maçã"))
# saída : ['maçã']
print(adicionar_item("banana"))
# saída : ['maçã', 'banana']
```

Aqui, o valor padrão da lista foi modificado entre as chamadas, porque a lista é um objeto mutável e é compartilhada entre as chamadas da função. Para evitar esse problema, uma prática comum é usar `None` como valor padrão e, em seguida, criar uma nova lista dentro da função, se necessário:

```python
def adicionar_item(item, lista=None):
    if lista is None:
        lista = []
    lista.append(item)
    return lista

print(adicionar_item("maçã"))
# saída : ['maçã']
print(adicionar_item("banana"))
# saída : ['banana']
```

##### 4. usando `None` como valor padrão

Usar `None` como valor padrão é uma prática comum para argumentos que podem ter valores dinâmicos ou que devem ser inicializados dentro da função:

```python
def conectar(host, porta=None):
    if porta is None:
        porta = 8080

    print(f"Conectando a {host} na porta {porta}")
```

Neste exemplo, `porta` só será definido como `8080` se não for fornecido um valor ao chamar a função.

### exemplos práticos e comuns

Vamos ver alguns exemplos práticos onde os valores padrão são extremamente úteis.

#### 1. configurações de funções

Funções que lidam com configurações geralmente usam valores padrão para tornar a função mais versátil:

```python
def configurar_banco_de_dados(host="localhost", usuario="root", senha=""):
    print(f"Conectando ao banco de dados em {host} com o usuário {usuario}")
```

Essa função pode ser chamada sem argumentos se quiser usar as configurações padrão:

```python
configurar_banco_de_dados()
# saída : Conectando ao banco de dados localhost com o usuário root
```

#### 2. funções com múltiplos cenários

Funções que podem ser usadas em múltiplos cenários podem ter valores padrão para tornar seu uso mais simples:

```python
def calcular_preco(valor, desconto=0, taxa=0.1):
    preco_final = valor - (valor * desconto) + (valor * taxa)
    return preco_final

print(calcular_preco(100))
# saída : 110.0
print(calcular_preco(100, desconto=0.2))
# saída : 90.0
```

Neste exemplo, o desconto e a taxa são opcionais, permitindo que a função seja usada em diferentes contextos sem exigir que todos os argumentos sejam sempre fornecidos.

## argumentos nomeados

No Python, funções podem receber argumentos de várias formas, e uma das mais flexíveis é o uso de **argumentos nomeados** (também conhecidos como **argumentos keyword**). Esse tipo de argumento permite que se especifique quais valores deseja passar para parâmetros específicos, utilizando o nome do parâmetro.

### o básico dos argumentos nomeados

Quando uma função é definida, é possível criar parâmetros que receberão valores quando a função for chamada. Esses parâmetros podem ser passados de duas maneiras:

- **argumentos posicionais** : os valores são passados na ordem em que os parâmetros foram definidos na função;
- **argumentos nomeados** : os valores são passados utilizando o nome do parâmetro, o que permite maior flexibilidade na ordem dos argumentos;

Veja um exemplo básico :

```python
def saudar(nome, mensagem):
    print(f"Olá, {nome}! {mensagem}")

saudar("João", "Bem-vindo ao nosso curso!")
# saída : Olá, João! Bem-vindo ao nosso curso!
```

No exemplo acima, `"João"` é o valor para o parâmetro `nome` e `"Bem-vindo ao nosso curso!"` é o valor para o parâmetro `mensagem`. Esses valores são passados de forma posicional, ou seja, na ordem em que os parâmetros foram definidos na função.

Agora, veja o mesmo exemplo usando argumentos nomeados:

```python
saudar(nome="João", mensagem="Bem-vindo ao nosso curso!")
# saída : Olá, João! Bem-vindo ao nosso curso!
```

Aqui, estamos explicitamente dizendo que `nome` deve receber o valor `"João"` e `mensagem` deve receber `"Bem-vindo ao nosso curso!"`. A ordem dos argumentos não importa mais:

```python
saudar(mensagem="Bem-vindo ao nosso curso!", nome="João")
# saída : Olá, João! Bem-vindo ao nosso curso!
```

Esse código produzirá o mesmo resultado, independentemente da ordem.

### vantagens dos argumentos nomeados

Os argumentos nomeados oferecem várias vantagens, especialmente em funções com muitos parâmetros ou com parâmetros que têm valores padrão.

#### clareza

Quando argumentos nomeados são usados, o código se torna mais legível, pois é claro qual valor está sendo passado para qual parâmetro. Considere a função abaixo:

```python
def criar_usuario(nome, idade, ativo=True, admin=False):
    print(f"Usuário: {nome}, Idade: {idade}, Ativo: {ativo}, Admin: {admin}")
```

É possível chamar assim essa função :

```python
criar_usuario("Maria", 28, False, True)
# saída : Usuário: Maria, Idade: 28, Ativo: False, Admin: True
```

Esse código funciona, mas não é imediatamente óbvio o que cada `True` ou `False` representa. Usando argumentos nomeados, fica muito mais claro:

```python
criar_usuario(nome="Maria", idade=28, ativo=False, admin=True)
# saída : Usuário: Maria, Idade: 28, Ativo: False, Admin: True
```

#### flexibilidade

Outra vantagem é a flexibilidade. Em funções com muitos parâmetros, pode-se especificar apenas os que deseja alterar, sem se preocupar com a ordem ou ter que passar valores para todos os parâmetros.

Considere a função `criar_usuario` novamente:

```python
criar_usuario(nome="Carlos", idade=30)
# saída : Usuário: Carlos, Idade: 30, Ativo: True, Admin: False
```

Aqui, `ativo` e `admin` usarão seus valores padrão (`True` e `False`, respectivamente), e apenas `nome` e `idade` foram explicitamente definidos.

### combinando argumentos posicionais e nomeados

É possível combinar argumentos posicionais e nomeados em uma única chamada de função, mas existem algumas regras a seguir:

1. **argumentos posicionais devem vir antes dos argumentos nomeados**;
1. **argumentos nomeados podem vir em qualquer ordem, desde que não sejam duplicados com argumentos posicionais**;

Exemplo:

```python
criar_usuario("Ana", 22, admin=True)
# saída : Usuário: Ana, Idade: 22, Ativo: True, Admin: True
```

Neste exemplo, `nome` e `idade` são passados como argumentos posicionais, enquanto `admin` é um argumento nomeado.

### erros comuns e considerações

- **duplicação de argumentos** : se tentar passar o mesmo argumento tanto posicionalmente quanto nomeado, o python levantará um erro:

```python
criar_usuario("Pedro", 35, nome="João")
# saída :
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# TypeError: criar_usuario() got multiple values for argument 'nome'
```

- **argumentos faltando**: se esquecer de passar um argumento obrigatório (sem valor padrão), o python levantará um erro indicando que o argumento está faltando:

```python
criar_usuario(idade=25, admin=True)
# saída :
# Traceback (most recent call last):
#   File "<stdin>", line 1, in <module>
# TypeError: criar_usuario() missing 1 required positional argument: 'nome'
```

### funções com muitos parâmetros e argumentos nomeados

Funções que recebem muitos parâmetros se beneficiam particularmente dos argumentos nomeados. Em APIs ou bibliotecas complexas, essa prática é comum para garantir que o código do usuário final seja mais legível e menos propenso a erros.

Imagine uma função que configura uma conexão de banco de dados:

```python
def configurar_conexao(host, porta, usuario, senha, usar_ssl=False, timeout=30):
    print(f"Conectando ao banco em {host}:{porta} como {usuario} com SSL={usar_ssl} e timeout={timeout}")
```

Aqui, o uso de argumentos nomeados facilita muito a chamada dessa função:

```python
configurar_conexao(
    host="localhost",
    porta=5432,
    usuario="admin",
    senha="senha123",
    usar_ssl=True,
    timeout=10
)
Conectando ao banco em localhost:5432 como admin com SSL=True e timeout=10
```

## exercícios valor padrão e argumentos nomeados

<details>
<summary>Lista de Exercícios</summary>

1. Exercícios Básicos
    1. Crie uma função `saudar` que receba um nome e uma mensagem de saudação com valor padrão `"Olá!"`. Chame a função passando apenas o nome.
    1. Modifique a função `saudar` do exercício anterior para permitir que o usuário passe uma mensagem personalizada além do nome.
    1. Crie uma função `exibir_informacoes` que receba o nome de uma pessoa, idade (com valor padrão de 25 anos) e cidade (com valor padrão `"Porto Alegre"`). Chame a função sem passar a cidade.
    1. Crie uma função `calcular_desconto` que receba o valor de um produto e um desconto com valor padrão de 10%. Calcule o valor final do produto após aplicar o desconto.
    1. Crie uma função `mostrar_mensagem` que receba uma mensagem e um número de repetições (com valor padrão de 1). A função deve imprimir a mensagem o número de vezes especificado.
1. Exercícios Intermediários
    1. Crie uma função `criar_usuario` que receba `nome`, `idade` (valor padrão 18) e `ativo` (valor padrão True). A função deve imprimir os detalhes do usuário.
    1. Crie uma função `imprimir_lista` que receba uma lista e um separador (com valor padrão de vírgula). A função deve imprimir os elementos da lista separados pelo separador especificado.
    1. Crie uma função `conectar` que receba `host`, `porta` (com valor padrão 8080) e `usar_ssl` (com valor padrão False). A função deve imprimir as informações da conexão.
    1. Crie uma função `calcular_imposto` que receba o valor de um produto e uma taxa de imposto (com valor padrão de 5%). A função deve retornar o valor final do produto com o imposto aplicado.
    1. Crie uma função `formar_grupo` que receba uma lista de nomes e um número máximo de membros (com valor padrão de 5). A função deve dividir a lista de nomes em grupos do tamanho especificado.
    1. Crie uma função `calcular_media` que receba uma lista de notas e um parâmetro `peso` com valor padrão de 1. A função deve calcular e retornar a média ponderada das notas.
    1. Crie uma função `definir_cor` que receba um parâmetro `cor` com valor padrão `"azul"`. A função deve imprimir a cor definida.
    1. Crie uma função `enviar_email` que receba `destinatario`, `assunto` (com valor padrão `"Sem Assunto"`) e `corpo` (com valor padrão `"Sem Corpo"`). A função deve simular o envio de um e-mail.
    1. Crie uma função `calcular_preco` que receba o preço de um produto e uma taxa de desconto (com valor padrão de 10%). A função deve retornar o preço final após o desconto.
    1. Crie uma função `configurar_sistema` que receba `idioma` (com valor padrão `"Português"`) e `tema` (com valor padrão `"Claro"`). A função deve imprimir as configurações do sistema.
1. Exercícios Avançados
    1. Crie uma função `gerar_senha` que receba um comprimento e um caractere opcional (com valor padrão `None`). Se o caractere não for `None`, a senha gerada deve conter apenas esse caractere repetido o número de vezes especificado pelo comprimento.
    1. Crie uma função `formatar_texto` que receba um texto e um tamanho máximo (com valor padrão de 80 caracteres). A função deve truncar o texto se ele ultrapassar o tamanho máximo.
    1. Crie uma função `encontrar_maior` que receba uma lista de números e um valor mínimo opcional (com valor padrão `None`). A função deve retornar o maior número na lista maior que o valor mínimo, se especificado.
    1. Crie uma função `ordenar_lista` que receba uma lista e um parâmetro `reversa` com valor padrão `False`. A função deve ordenar a lista de forma crescente ou decrescente, dependendo do valor de `reversa`.
    1. Crie uma função `converter_temperatura` que receba uma temperatura e uma escala (`Celsius` ou `Fahrenheit`) com valor padrão `"Celsius"`. A função deve converter a temperatura para a outra escala.
    1. Crie uma função `contar_palavras` que receba um texto e um parâmetro `ignorar_case` (com valor padrão `True`). A função deve retornar a contagem de palavras, ignorando a diferença entre maiúsculas e minúsculas, se `ignorar_case` for True.
    1. Crie uma função `calcular_potencia` que receba uma base e um expoente (com valor padrão 2). A função deve retornar o resultado da base elevada ao expoente.
    1. Crie uma função `dividir_numero` que receba um número e um divisor (com valor padrão 1). A função deve retornar o quociente da divisão, mas levantar uma exceção se o divisor for 0.
    1. Crie uma função `criar_dicionario` que receba uma lista de chaves e um valor padrão (com valor padrão `None`). A função deve retornar um dicionário onde todas as chaves possuem o valor padrão.
    1. Crie uma função `substituir_vogais` que receba um texto e uma vogal (com valor padrão `"a"`). A função deve substituir todas as vogais no texto pela vogal especificada.
1. Exercícios de Desafios
    1. Crie uma função `soma_acumulada` que receba uma lista de números e um valor inicial (com valor padrão 0). A função deve retornar a soma acumulada de todos os números na lista, iniciando pelo valor inicial.
    1. Crie uma função `filtrar_palavras` que receba uma lista de palavras e um comprimento mínimo (com valor padrão 3). A função deve retornar uma nova lista contendo apenas as palavras com o comprimento igual ou maior que o mínimo.
    1. Crie uma função `calcular_fatorial` que receba um número e um parâmetro `mostrar_passos` (com valor padrão `False`). A função deve calcular e retornar o fatorial do número, mostrando os passos se `mostrar_passos` for True.
    1. Crie uma função `multiplicar_lista` que receba uma lista de números e um fator de multiplicação (com valor padrão 2). A função deve retornar uma nova lista com todos os elementos multiplicados pelo fator.
    1. Crie uma função `atualizar_configuracoes` que receba um dicionário de configurações e atualize valores usando argumentos nomeados com valores padrão. A função deve retornar o dicionário atualizado.

</details>

## recursão

A **recursão** é uma técnica de programação onde uma função chama a si mesma para resolver um problema. É usada quando um problema pode ser dividido em subproblemas menores de forma semelhante ao problema original, permitindo que o código se repita até alcançar uma condição de parada (base case), que é quando o problema não pode mais ser dividido ou resolvido por chamadas subsequentes.

### como funciona

A recursão segue um padrão em que uma função realiza duas ações principais:

1. **condição base (ou condição de parada)** : esta é a condição que determina quando a recursão deve parar. Sem uma condição base, a recursão continuaria indefinidamente, causando um erro de "stack overflow" (estouro da pilha) porque a memória reservada para as chamadas da função ficaria esgotada;

2. **chamada recursiva** : a função chama a si mesma com um novo argumento, que é uma versão reduzida ou alterada do problema original. Essa chamada recursiva é o que permite que a função repita o processo para resolver o subproblema;

A cada vez que uma função é chamada, o Python cria um novo **frame de execução** na pilha de chamadas (call stack), o que significa que cada chamada recursiva aguarda a conclusão da chamada anterior. Quando a condição base é atingida, o resultado é retornado e a pilha de chamadas começa a "desenrolar", retornando os resultados de volta pelas chamadas anteriores até o ponto inicial.

### exemplos de uso

#### fatorial

Um exemplo clássico de recursão é o cálculo do fatorial de um número. O fatorial de um número (n) (denotado como (n!)) é o produto de todos os números inteiros positivos até (n).

**definição matemática** :
- n! = n * (n - 1) * (n - 2) * * 1

- Ou, recursivamente :
  - n! = n * (n - 1)! (com (1! = 1) como caso base)

Em Python, isso pode ser escrito assim:

```python
def fatorial(n):
    # condição base: fatorial de 0 ou 1 é 1
    if n == 0 or n == 1:
        return 1
    # chamada recursiva: n * fatorial de (n - 1)
    return n * fatorial(n - 1)

print(fatorial(5))
120
```

Aqui, o `fatorial(5)` chamará `fatorial(4)`, que chamará `fatorial(3)`, e assim por diante até chegar em `fatorial(1)`. A partir daí, os valores são retornados até a função original.

#### sequência de fibonacci

Outro exemplo clássico é a **Sequência de Fibonacci**, onde o próximo número na sequência é a soma dos dois anteriores. A sequência começa com 0 e 1.

**definição recursiva** :
- Fibonacci(n) = Fibonacci(n-1) + Fibonacci(n-2)
- Caso base: Fibonacci(0) = 0, Fibonacci(1) = 1

A implementação em Python seria :

```python
def fibonacci(n):
    # condição base: fibonacci(0) é 0 e fibonacci(1) é 1
    if n == 0:
        return 0
    elif n == 1:
        return 1
    # chamada recursiva: fibonacci(n-1) + fibonacci(n-2)
    return fibonacci(n - 1) + fibonacci(n - 2)

print(fibonacci(6))
8
```

Nesse exemplo, `fibonacci(6)` chamará `fibonacci(5)` e `fibonacci(4)`, e assim por diante, até que os casos base sejam alcançados.

### para que se usa

A recursão é útil em várias situações onde um problema pode ser dividido de forma natural em subproblemas menores que podem ser resolvidos da mesma maneira. Alguns exemplos incluem:

1. **problemas de divisão e conquista** : como algoritmos de ordenação como merge sort e quick sort, que dividem um problema grande em partes menores e resolvem essas partes recursivamente;

2. **problemas com árvores ou grafos** : a recursão é frequentemente usada em estruturas de dados como árvores e grafos, onde cada nó pode ser tratado de maneira recursiva;

3. **soluções elegantes para problemas matemáticos** : muitos problemas matemáticos, como o cálculo de potências, combinações, ou recorrências, podem ser resolvidos recursivamente;

4. **algoritmos de busca** : como a busca em profundidade (depth first search) em grafos, onde cada vizinho é visitado recursivamente;

### como usar

Para usar recursão de forma eficaz, siga estas etapas :

1. **defina a condição base** : esta é a parte mais importante para evitar loops infinitos. Sempre certifique-se de que a função possui uma condição clara que encerra a recursão;

2. **reduza o problema** : a cada chamada recursiva, reduza o problema, de forma que ele se aproxime da condição base. Isso pode ser feito alterando o argumento da função;

3. **chame a função recursivamente** : chame a função novamente com o argumento modificado para resolver o subproblema;

### ponto de atenção

#### pilha de chamadas e limite de recursão

Cada chamada recursiva consome memória na **pilha de chamadas** (call stack). Em Python, há um limite de profundidade de recursão (padrão de 1000 chamadas), que pode ser verificado e alterado, se necessário:

```python
import sys
print(f'{sys.getrecursionlimit() = }')
sys.getrecursionlimit() = 1000

sys.setrecursionlimit(2000)

print(f'{sys.getrecursionlimit() = }')
sys.getrecursionlimit() = 2000

```

Isso evita o "stack overflow" em situações onde a recursão não termina ou o número de chamadas recursivas é muito grande.

### quando evitar

Embora a recursão possa ser elegante e direta, nem sempre é a solução mais eficiente. Recursões mal planejadas podem levar a desperdício de memória e tempo, especialmente em problemas onde as chamadas se repetem muitas vezes, como no exemplo da sequência de Fibonacci. Nestes casos, técnicas como **memorização** ou transformar a recursão em **iteração** podem ser mais eficientes.

### recursão vs. iteração

- **recursão** : resolve o problema chamando a função repetidamente e dividindo o problema em subproblemas;
- **iteração** : resolve o problema usando laços (como `while` ou `for`) e controlando diretamente o fluxo com variáveis de estado;

Exemplo da sequência de Fibonacci de forma iterativa:

```python
def fibonacci_iterativo(n):
    a, b = 0, 1
    for _ in range(n):
        a, b = b, a + b
    return a

print(fibonacci_iterativo(6))
8
```

A versão iterativa costuma ser mais eficiente em termos de uso de memória e tempo de execução.

### exemplos

Abaixo há 5 exemplos que mostram como resolver problemas tanto de forma **recursiva** quanto **iterativa**. Cada problema é resolvido com essas duas abordagens.

---

#### 1. soma de uma lista de números

##### versão recursiva :

```python
def soma_recursiva(lista):
    # condição base : lista vazia
    if len(lista) == 0:
        return 0
    # chamada recursiva : soma o primeiro elemento com a soma do restante da lista
    return lista[0] + soma_recursiva(lista[1:])

print(soma_recursiva([1, 2, 3, 4]))
10
```

##### versão iterativa :

```python
def soma_iterativa(lista):
    soma = 0
    for num in lista:
        soma += num
    return soma

print(soma_iterativa([1, 2, 3, 4]))
10
```

---

#### 2. contagem regressiva

##### versão recursiva :

```python
def contagem_regressiva_recursiva(n):
    if n == 0:
        print("Lançar!")
    else:
        print(n)
        contagem_regressiva_recursiva(n - 1)

contagem_regressiva_recursiva(5)
5, 4, 3, 2, 1, Lançar!
```

##### versão iterativa :

```python
def contagem_regressiva_iterativa(n):
    while n > 0:
        print(n)
        n -= 1
    print("Lançar!")

contagem_regressiva_iterativa(5)
5, 4, 3, 2, 1, Lançar!
```

---

#### 3. produto dos elementos de uma lista

##### versão recursiva :

```python
def produto_recursivo(lista):
    if len(lista) == 0:
        return 1
    return lista[0] * produto_recursivo(lista[1:])

print(produto_recursivo([1, 2, 3, 4]))
24
```

##### versão iterativa :

```python
def produto_iterativo(lista):
    produto = 1
    for num in lista:
        produto *= num
    return produto

print(produto_iterativo([1, 2, 3, 4]))
24
```

---

#### 4. reverter uma string

##### versão recursiva :

```python
def reverter_string_recursiva(s):
    if len(s) == 0:
        return ""
    return s[-1] + reverter_string_recursiva(s[:-1])

print(reverter_string_recursiva("python"))
nohtyp
```

##### versão iterativa :

```python
def reverter_string_iterativa(s):
    resultado = ""
    for char in s:
        resultado = char + resultado
    return resultado

print(reverter_string_iterativa("python"))
nohtyp
```

---

#### 5. verificar se um número é par

##### versão recursiva :

```python
def eh_par_recursivo(n):
    if n == 0:
        return True
    elif n == 1:
        return False
    return eh_par_recursivo(n - 2)

print(eh_par_recursivo(8))
True
print(eh_par_recursivo(7))
False
```

##### versão iterativa :

```python
def eh_par_iterativo(n):
    while n > 1:
        n -= 2
    return n == 0

print(eh_par_iterativo(8))
True
print(eh_par_iterativo(7))
False
```

## exercícios `recursão`

<details>
<summary>Lista de Exercícios</summary>

Para cada exercício abaixo, primeiro monte uma função de sua versão usando a iteração e depois sua versão usando a recursão.

1. **Soma dos primeiros N números naturais** : Escreva uma função recursiva que calcule a soma dos primeiros N números naturais.
1. **Fatorial de um número** : Crie uma função recursiva que calcule o fatorial de um número \(n!\).
1. **Soma dos elementos de uma lista** : Escreva uma função recursiva que receba uma lista de números e retorne a soma de seus elementos.
1. **Produto dos elementos de uma lista** : Crie uma função recursiva que calcule o produto dos elementos de uma lista.
1. **Contagem regressiva** : Implemente uma função recursiva que faça uma contagem regressiva de um número N até 0.
1. **Sequência de Fibonacci** : Escreva uma função recursiva para calcular o N-ésimo número da sequência de Fibonacci.
1. **Inverter uma string** : Crie uma função recursiva que inverta uma string.
1. **Contar ocorrências de um caractere em uma string** : Implemente uma função recursiva que conte quantas vezes um determinado caractere aparece em uma string.
1. **Número de dígitos de um número** : Escreva uma função recursiva que determine o número de dígitos de um número inteiro.
1. **Verificar se um número é par** : Crie uma função recursiva para verificar se um número é par sem usar operadores aritméticos além de subtração.
1. **Máximo divisor comum (MDC)** : Implemente o algoritmo de Euclides para encontrar o MDC entre dois números usando recursão.
1. **Imprimir os elementos de uma lista de trás para frente** : Escreva uma função recursiva que imprima os elementos de uma lista em ordem inversa.
1. **Somar todos os dígitos de um número** : Crie uma função recursiva que receba um número inteiro e retorne a soma de seus dígitos.
1. **Verificar se uma palavra é palíndromo** : Implemente uma função recursiva que verifique se uma string é um palíndromo (lê-se da mesma forma de trás para frente).
1. **Exponenciação** : Escreva uma função recursiva que calcule o valor de \(a^b\), onde \(a\) é a base e \(b\) é o expoente.
1. **Soma dos números pares de uma lista** : Crie uma função recursiva que receba uma lista de números e retorne a soma de todos os números pares.
1. **Somar elementos de uma lista de listas** : Escreva uma função recursiva que some todos os elementos de uma lista que contém outras listas.
1. **Encontrar o menor elemento de uma lista** : Implemente uma função recursiva que encontre o menor número em uma lista de números.
1. **Substituir um caractere em uma string** : Crie uma função recursiva que substitua todas as ocorrências de um caractere específico em uma string por outro caractere.
1. **Contar elementos em uma lista aninhada** : Escreva uma função recursiva que conte quantos elementos (incluindo os das sublistas) existem em uma lista aninhada.

</details>
