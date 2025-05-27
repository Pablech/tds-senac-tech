Índice

1. [`in`](#in)
1. [exercícios `in`](#exercicios-in)
1. [`pass`](#pass)
1. [`break`](#break)
1. [`continue`](#continue)
1. [`break` e `continue`](#break-e-continue)
1. [exercícios `break` e `continue`](#exercícios-break-e-continue)

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
1. exercícios com tuplas
    1. Crie uma tupla `(1, 2, 3, 4, 5)` e verifique se o número `3` está presente. Imprima o resultado.
    1. Dada a tupla `("a", "b", "c", "d")`, verifique se a letra `"e"` está presente na tupla e imprima `True` ou `False`.
    1. Crie uma tupla com as cores `("vermelho", "verde", "azul")`. Verifique se a cor `"amarelo"` está na tupla e imprima o resultado.
    1. Verifique se o número `100` está na tupla `(10, 20, 30, 40, 50)` e imprima o resultado.
    1. Dada a tupla `(7, 14, 21, 28)`, verifique se o número `14` está presente e imprima o resultado.
1. exercícios com sets
    1. Crie um set `{"maçã", "banana", "uva"}` e verifique se `"laranja"` está presente no set. Imprima o resultado.
    1. Dado o set `{1, 3, 5, 7}`, verifique se o número `5` está presente e imprima `True` ou `False`.
    1. Verifique se o elemento `"Python"` está presente no set `{"Java", "C++", "Python", "JavaScript"}` e imprima o resultado.
    1. Crie um set com números `{2, 4, 6, 8}` e verifique se o número `10` está no set. Imprima o resultado.
    1. Dado o set `{"cachorro", "gato", "coelho"}`, verifique se o animal `"cavalo"` está presente e imprima `True` ou `False`.
1. exercícios com dicionários
    1. Crie um dicionário `aluno = {"nome": "João", "idade": 20, "curso": "Engenharia"}`. Verifique se a chave `"idade"` está presente no dicionário e imprima o resultado.
    1. Dado o dicionário `cidades = {"SP": "São Paulo", "RJ": "Rio de Janeiro", "MG": "Belo Horizonte"}`, verifique se a chave `"BA"` está no dicionário e imprima `True` ou `False`.
    1. Crie um dicionário `carro = {"marca": "Toyota", "modelo": "Corolla", "ano": 2020}`. Verifique se a chave `"cor"` está presente no dicionário e imprima o resultado.
    1. Dado o dicionário `estoque = {"caneta": 100, "caderno": 50, "borracha": 30}`, verifique se a chave `"lápis"` está presente no dicionário e imprima o resultado.
    1. Crie um dicionário `pessoa = {"nome": "Ana", "altura": 1.70, "peso": 65}`. Verifique se a chave `"idade"` está presente no dicionário e imprima `True` ou `False`.

</details>

## `pass`

O comando `pass` em Python é uma instrução nula; quando é executado, nada acontece. Ele é utilizado em situações onde uma declaração é necessária sintaticamente, mas onde nenhum código precisa ser executado.

### formas de uso

1. **estrutura de código em desenvolvimento** : durante o desenvolvimento, pode ser usado para estruturar funções, classes ou blocos condicionais que ainda não foram implementados, mas deseja evitar erros de sintaxe. O `pass` é uma forma de “marcar” esses locais, sem precisar escrever o código definitivo imediatamente.
    ```python
    >>> def minha_funcao():
    >>>     pass  # vai ser implementado depois
    >>>
    >>> class MinhaClasse:
    >>>     pass  # classe em desenvolvimento
    >>>
    >>> if condicao:
    >>>     pass  # Ainda não sei o que fazer aqui
    ```

1. **blocos de código condicional**: em certos casos, pode ser necessário ter uma condicional que não faz nada, por exemplo, ao tratar um caso onde nenhuma ação é necessária.
    ```python
    >>> for item in minha_lista:
    >>>     if item == "pular":
    >>>         pass  # não faço nada para 'pular'
    >>>     else:
    >>>         print(item)
    ```

1. **estruturas de controle sem implementação imediata**: o `pass` é útil em loops, funções ou outras estruturas de controle onde ainda não se sabe qual será a lógica final, mas quer estruturar o código de forma que ele seja executável.
    ```python
    >>> while True:
    >>>     pass  # loop infinito em desenvolvimento, sem lógica definida
    ```

### exemplos

1. classe em desenvolvimento
    ```python
    >>> class Animal:
    >>>     pass  # classe animal a ser definida depois
    >>>
    >>> # não gera erro e a classe pode ser instanciada
    >>> cachorro = Animal()
    ```

1. função em desenvolvimento
    ```python
    >>> def funcao_complexa():
    >>>     pass  # lógica a ser implementada depois
    >>>
    >>> # função chamada, mas sem erros
    >>> funcao_complexa()
    ```

1. estrutura condicional
    ```python
    >>> x = 10
    >>>
    >>> if x > 0:
    >>>     pass  # sem ação específica para números positivos
    >>> else:
    >>>     print("Número não positivo")
    ```

### observações

- **evitar uso excessivo** : o `pass` é útil para o desenvolvimento inicial ou para marcar futuras implementações, mas em um código final, ele deve ser removido ou substituído por código funcional.

- **leitura do código** : o uso de `pass` pode indicar a necessidade de implementação futura, mas em código de produção, deixar blocos de código com `pass` pode sugerir funcionalidades incompletas ou mal implementadas.

### conclusão

O `pass` é uma ferramenta essencial em Python para a criação de esboços de código e para manter a estrutura do código correta durante o desenvolvimento. Ele garante que seja possível continuar a desenvolver outras partes do código sem ser interrompido por erros de sintaxe.


## `break`

O comando `break` em Python é utilizado dentro de loops (`for` e `while`) para interromper o loop imediatamente. Quando o Python encontra um `break`, ele sai do loop, ignorando todas as iterações restantes, e a execução do código continua após o bloco do loop.

Quando o comando `break` é executado dentro de um loop, ele interrompe o loop inteiro, não importa em qual ponto da iteração o `break` esteja. Isso é útil quando é preciso sair de um loop antes que ele termine todas as iterações, com base em uma condição específica.

```python
>>> # estrutura básica
>>> for item in sequencia:
>>>     if condicao:
>>>         break  # sai do loop completamente
>>>     # código que é executado até que o break seja chamado
```

### exemplos

1. interrompendo um loop ao encontrar um valor específico : vamos supor que tenha uma lista de números e queira parar a iteração assim que encontrar o número 5 :
    ```python
    >>> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    >>>
    >>> for numero in numeros:
    >>>     if numero == 5:
    >>>         break  # interrompe o loop quando o número 5 é encontrado
    >>>     print(numero)
    1
    2
    3
    4
    >>> |
    ```
    Neste exemplo, o loop é interrompido assim que o número 5 é encontrado, e o Python sai do loop, ignorando os números restantes na lista.

1. encontrando um item em uma lista : pode usar o `break` para interromper a busca em uma lista assim que encontrar um item específico :
    ```python
    >>> frutas = ["maçã", "banana", "laranja", "abacaxi", "uva"]
    >>>
    >>> for fruta in frutas:
    >>>     print(f"Verificando {fruta}")
    >>>     if fruta == "laranja":
    >>>         print("Laranja encontrada, interrompendo a busca.")
    >>>         break  # Para a busca quando a laranja é encontrada
    Verificando maçã
    Verificando banana
    Verificando laranja
    Laranja encontrada, interrompendo a busca.
    >>> |
    ```
    Aqui, o loop para de executar assim que encontra "laranja", evitando verificar as frutas restantes.

1. interrompendo um loop infinito : um `break` é frequentemente usado para sair de um loop infinito quando uma certa condição é atendida :
    ```python
    >>> i = 1
    >>>
    >>> while True:
    >>>     print(i)
    >>>     if i == 10:
    >>>         break  # Interrompe o loop infinito quando i é igual a 10
    >>>     i += 1
    1
    2
    3
    4
    5
    6
    7
    8
    9
    10
    >>> |
    ```
    Neste exemplo, o loop `while` é infinito (`while True:`), mas o comando `break` faz com que o loop seja interrompido quando `i` atinge o valor 10.

### quando usar `break`

1. **interromper a busca** : quando está procurando por algo em uma lista ou sequência e deseja parar a busca assim que encontrar o que precisa;

1. **sair de loops infinitos** : em loops `while` que podem, teoricamente, rodar para sempre, o `break` pode ser usado para sair do loop quando uma condição específica é atingida;

1. **prevenir iterações desnecessárias** : se sabe que não precisa continuar o loop após encontrar um certo valor, o `break` pode melhorar a eficiência do código;

### conclusão

O `break` é uma ferramenta essencial para controle de fluxo em loops. Ele permite que você saia de loops imediatamente quando uma condição específica é atendida, evitando iterações desnecessárias e melhorando a eficiência do seu código.


## `continue`

O comando `continue` em Python é utilizado dentro de loops (`for` e `while`) para pular a iteração atual e passar para a próxima iteração do loop. Ele é útil quando se deseja ignorar o restante do código no bloco do loop para certas condições, sem interromper o loop completamente.

Quando o Python encontra o comando `continue` dentro de um loop, ele interrompe a execução do código restante na iteração atual e imediatamente volta ao início do loop, verificando a condição do loop novamente. Se a condição for verdadeira, uma nova iteração começa.

```python
>>> # estrurua básica
>>> for item in sequencia:
>>>     if condicao:
>>>         continue  # pula o resto do código no loop e vai para a próxima iteração
>>>     # código que será ignorado se a condição for verdadeira
```

### exemplos

1. pular números pares : vamos supor que se queira iterar por uma lista de números e imprimir apenas os números ímpares:
    ```python
    >>> numeros = list(range(1,11))
    >>>
    >>> for numero in numeros:
    >>>     if numero % 2 == 0:  # verifica se o número é par
    >>>          continue  # pula a iteração se o número for par
    >>>     print(numero)
    1
    3
    5
    7
    9
    >>> |
    ```
    Neste exemplo, o comando `continue` faz com que o loop pule a impressão dos números pares.

1. ignorar palavras específicas : pode usar `continue` para ignorar palavras específicas em uma lista de palavras :
    ```python
    >>> palavras = ["maçã", "banana", "laranja", "abacaxi", "uva"]
    >>>
    >>> for palavra in palavras:
    >>>     if palavra == "laranja":
    >>>         continue  # ignora a palavra "laranja"
    >>>     print(palavra)
    maçã
    banana
    abacaxi
    uva
    >>> |
    ```
    Aqui, a palavra "laranja" é ignorada e não é impressa.

1. contando iterações válidas : em um loop `while`, o `continue` pode ser usado para ignorar certos valores e continuar a contagem ou execução das iterações :
    ```python
    >>> i = 0
    >>> while i < 10:
    >>>     i += 1
    >>>     if i % 2 == 0:  # se i for par, pula para a próxima iteração
    >>>         continue
    >>>     print(i)
    1
    3
    5
    7
    9
    ```
    Neste exemplo, `continue` faz com que os números pares sejam pulados no loop `while`.

### quando usar `continue`

1. **filtragem de dados**: quando se deseja processar apenas certos itens de uma lista ou sequência e ignorar outros com base em uma condição específica;

2. **ignorar erros**: pode ser usado para pular uma iteração se uma operação específica falhar (por exemplo, um cálculo que pode causar uma exceção);

3. **simplificar estruturas de controle**: em vez de usar `else` ou aninhar múltiplas condições, `continue` pode simplificar o código, especialmente quando a lógica principal deve ser executada apenas para alguns casos;

### conclusão

O `continue` é uma ferramenta poderosa em Python para controle de fluxo dentro de loops. Ele permite que pular certas iterações com base em condições específicas, tornando o código mais flexível e legível.


## `break` e `continue`

Os comandos `break` e `continue` são ambos utilizados para controlar o fluxo de execução dentro de loops em Python. Embora possam ser usados de forma independente, existem situações em que é útil combiná-los dentro do mesmo loop para criar lógica mais complexa.

Quando combinado `break` e `continue` em um loop, por exemplo, é possível criar uma lógica em que determinadas condições pulem a iteração atual, enquanto outras condições interrompem completamente o loop.

### exemplos

1. filtragem e interrupção de processamento : suponha que tenha uma lista de números e queira processar apenas os números ímpares. Se um número for maior que 15, quer interromper o processamento completamente.
    ```python
    >>> numeros = [3, 7, 2, 9, 12, 17, 19, 6, 11]
    >>>
    >>> for numero in numeros:
    >>>     if numero % 2 == 0:  # se o número for par
    >>>         continue  # pula para a próxima iteração, ignorando o número par
    >>>
    >>>     if numero > 15:  # se o número for maior que 15
    >>>         print("Número maior que 15 encontrado. Interrompendo.")
    >>>         break  # interrompe o loop completamente
    >>>
    >>>     print(f"Processando número ímpar: {numero}")
    >>> Processando número ímpar: 3
    >>> Processando número ímpar: 7
    >>> Processando número ímpar: 9
    >>> Número maior que 15 encontrado. Interrompendo.
    >>> |
    ```
    Neste exemplo:
    - O `continue` é usado para pular números pares, ignorando-os;
    - O `break` é usado para interromper o loop assim que um número maior que 15 é encontrado;

1. looping com condições múltiplas : considere uma situação em que se precisa iterar sobre uma lista de números, mas deseja:
    1. Ignorar números negativos (`continue`);
    1. Interromper o loop ao encontrar um número que é um múltiplo de 7 (`break`);
    ```python
    >>> numeros = [5, -3, 10, 6, -1, 14, 12, -8, 20]
    >>>
    >>> for numero in numeros:
    >>>     if numero < 0:  # ignora números negativos
    >>>         continue  # pula para a próxima iteração
    >>>
    >>>     if numero % 7 == 0:  # encontra o primeiro múltiplo de 7
    >>>         print(f"Número múltiplo de 7 encontrado: {numero}. Interrompendo o loop.")
    >>>         break  # interrompe o loop ao encontrar múltiplo de 7
    >>>
    >>>     print(f"Processando número: {numero}")
    >>> Processando número: 5
    >>> Processando número: 10
    >>> Processando número: 6
    >>> Número múltiplo de 7 encontrado: 14. Interrompendo o loop.
    >>> |
    ```
    Neste exemplo:
    - O `continue` é utilizado para pular números negativos.
    - O `break` é utilizado para interromper o loop assim que um múltiplo de 7 é encontrado.

1. verificando condições em uma lista de strings : imagine que está processando uma lista de palavras e:
    1. Deseja pular qualquer palavra que comece com a letra "a" (`continue`);
    1. Quer interromper completamente o loop se encontrar a palavra "parar" (`break`);
    ```python
    >>> palavras = ["maçã", "banana", "abacate", "uva", "parar", "laranja"]
    >>>
    >>> for palavra in palavras:
    >>>     if palavra.startswith("a"):  # Ignora palavras que começam com "a"
    >>>         continue  # Pula para a próxima iteração
    >>>
    >>>     if palavra == "parar":  # Interrompe o loop se encontrar "parar"
    >>>         print("Palavra 'parar' encontrada. Interrompendo o loop.")
    >>>         break  # Interrompe o loop
    >>>
    >>>     print(f"Processando palavra: {palavra}")
    >>> Processando palavra: banana
    >>> Processando palavra: uva
    >>> Palavra 'parar' encontrada. Interrompendo o loop.
    >>> |
    ```
    Neste exemplo:
    - O `continue` ignora palavras que começam com a letra "a";
    - O `break` interrompe o loop ao encontrar a palavra "parar";

### considerações importantes

- **ordem importa**: a ordem que se coloca `continue` e `break` dentro do loop é crucial, pois determinará a lógica do fluxo de execução;
- **leitura do código**: usar `continue` e `break` no mesmo loop pode tornar o código mais difícil de ler, então é importante usar comentários claros ou refatorar o código para que a lógica seja intuitiva;

### conclusão

Combinar `break` e `continue` em um loop Python permite um controle granular sobre o fluxo de execução, permitindo que se pule iterações específicas enquanto também fornece uma maneira de sair completamente do loop quando certas condições são atendidas. Usados juntos, esses comandos podem tornar o código mais eficiente e focado, dependendo das necessidades da aplicação.

## exercícios `break` e `continue`

<details>
<summary>Lista de Exercícios</summary>

### `break`

1. **Interrupção em Lista de Números**: Crie um loop `for` que percorra uma lista de números de 1 a 10. Use `break` para interromper o loop quando o número 5 for encontrado.
1. **Busca em String**: Escreva um loop `for` que percorra uma string. Use `break` para parar o loop assim que a letra "a" for encontrada e imprima as letras anteriores.
1. **Loop com Condição**: Crie um loop `while` que incrementa uma variável `x` começando em 0. Use `break` para parar o loop quando `x` for igual a 10.
1. **Interrupção em Lista de Strings**: Escreva um loop `for` que percorra uma lista de strings. Use `break` para sair do loop assim que encontrar uma string vazia.
1. **Número Múltiplo**: Crie um loop `for` que percorra uma lista de números. Use `break` para interromper o loop assim que encontrar um número divisível por 7.
1. **Interromper com Condicional**: Crie um loop `while` que soma números inteiros a partir de 1. Use `break` para sair do loop assim que a soma ultrapassar 50.
1. **Busca de Palavras**: Escreva um loop `for` que percorra uma lista de palavras. Use `break` para interromper o loop se encontrar uma palavra que começa com "Z".
1. **Busca em String**: Crie um loop `while` que percorra uma string caractere por caractere. Use `break` para parar o loop se encontrar um dígito numérico.
1. **Interrupção em Sublista**: Escreva um loop `for` que percorra uma lista de listas. Use `break` para sair do loop principal se encontrar uma sublista que contém um valor negativo.
1. **Interromper com Condição Complexa**: Crie um loop `for` que percorra uma lista de números e use `break` para sair do loop se encontrar um número maior que 100 ou menor que -100.
1. **Interrupção Condicional**: Crie um loop `while` que percorra os caracteres de uma string. Use `break` se encontrar duas vogais consecutivas e imprima o que foi lido até esse ponto.
1. **Busca de Substring**: Escreva um loop `for` que percorra uma lista de strings. Use `break` se encontrar uma string que contenha a substring "python".
1. **Parada em Número Específico**: Crie um loop `while` que gera números aleatórios entre 1 e 100. Use `break` para sair do loop quando um número específico (por exemplo, 42) for gerado.
1. **Interromper em Condição Composta**: Escreva um loop `for` que percorra uma lista de números. Use `break` para sair do loop se encontrar um número negativo seguido de um positivo.
1. **Interromper após Concatenar**: Crie um loop `for` que percorra uma lista de strings e as concatene em uma única string. Use `break` quando o comprimento total da string concatenada ultrapassar 50 caracteres.
1. **Interromper em Sequência**: Escreva um loop `for` que percorra uma lista de números. Use `break` se encontrar uma sequência de três números ímpares consecutivos.
1. **Interromper em Condição de Soma**: Crie um loop `while` que adicione números de uma lista a uma variável soma. Use `break` para interromper a adição se a soma exceder um valor limite (por exemplo, 100).
1. **Interrupção em String**: Escreva um loop `for` que percorra uma string caractere por caractere. Use `break` se encontrar uma combinação específica de caracteres (por exemplo, "ab").
1. **Parada em Condição Composta**: Crie um loop `for` que percorra uma lista de números. Use `break` para sair do loop se encontrar um número maior que 50 seguido de um número menor que 10.
1. **Interrupção em Verificação de Substring**: Escreva um loop `while` que verifique se uma substring existe em uma string. Use `break` para sair do loop quando encontrar a substring "stop".

### `continue`

1. **Lista de Números**: Crie um loop `for` que percorra uma lista de números de 1 a 10. Use `continue` para pular os números pares e imprima os ímpares.
1. **String com Vogais**: Escreva um loop `for` que percorra uma string. Use `continue` para pular as vogais e imprima as consoantes.
1. **Números Negativos**: Crie um loop `while` que diminua o valor de uma variável `x` a partir de 10. Use `continue` se `x` for negativo e imprima o restante.
1. **Strings com Espaços**: Escreva um loop `for` que percorra uma lista de strings. Use `continue` para pular as strings que contêm espaços e imprima as demais.
1. **Divisíveis por 3**: Crie um loop `for` que percorra uma lista de números. Use `continue` para pular os números divisíveis por 3 e imprima os outros.
1. **Índices Pares**: Escreva um loop `for` que percorra uma lista de palavras e seus índices. Use `continue` para pular as palavras nos índices pares e imprima as outras.
1. **Contagem Regressiva**: Crie um loop `while` que conta de 20 até 0. Use `continue` para pular os números ímpares e imprima os pares.
1. **Nomes Longos**: Escreva um loop `for` que percorra uma lista de nomes. Use `continue` para pular os nomes com mais de 5 caracteres e imprima os menores.
1. **String com Dígitos**: Crie um loop `for` que percorra uma string. Use `continue` para pular os caracteres que são dígitos e imprima os demais.
1. **Listas Vazias**: Escreva um loop `for` que percorra uma lista de listas. Use `continue` para pular listas vazias e imprima as outras.
1. **Soma de Números**: Crie um loop `for` que percorra uma lista de números e calcule a soma deles. Use `continue` para ignorar os números negativos.
1. **String Alternada**: Escreva um loop `for` que percorra uma string e use `continue` para pular os caracteres nas posições ímpares. Imprima apenas os caracteres nas posições pares.
1. **Números Primos**: Crie um loop `while` que verifica números de 2 a 50. Use `continue` para pular números que não são primos e imprima apenas os primos.
1. **Palavras Compostas**: Escreva um loop `for` que percorra uma lista de palavras. Use `continue` para pular palavras que contêm mais de uma vogal e imprima as demais.
1. **Listas com Zeros**: Crie um loop `for` que percorra uma lista de listas de números. Use `continue` para pular listas que contenham o número 0 e imprima as outras listas.
1. **Comparação de Strings**: Escreva um loop `for` que percorra duas listas de strings de tamanho igual. Use `continue` para pular a comparação se as strings não tiverem o mesmo comprimento.
1. **Nomes e Idades**: Crie um loop `for` que percorra duas listas (nomes e idades). Use `continue` para pular a impressão se a idade for menor que 18 e imprima apenas os nomes das pessoas maiores de idade.
1. **Soma de Dígitos**: Escreva um loop `while` que receba uma string de números. Use `continue` para pular caracteres que não são dígitos e calcule a soma dos dígitos.
1. **Filtros em Listas**: Crie um loop `for` que percorra uma lista de números. Use `continue` para ignorar números que são múltiplos de 5 e imprima os restantes.
1. **String Invertida**: Escreva um loop `for` que percorra uma string de trás para frente. Use `continue` para pular os caracteres nas posições ímpares e imprima apenas os caracteres nas posições pares.

### `break` e `continue`

1. **Interrupção com Condição**: Crie um loop `for` que percorra uma lista de números de 1 a 10. Use `continue` para pular números pares e `break` para sair do loop quando encontrar o número 7.
2. **Busca em String**: Escreva um loop `for` que percorra uma string. Use `continue` para pular os espaços em branco e `break` para sair do loop quando encontrar a letra "z".
3. **Loop com Condição**: Crie um loop `while` que incrementa uma variável `x` a partir de 0. Use `continue` para pular os números divisíveis por 3 e `break` para parar o loop quando `x` atingir 15.
4. **Lista de Strings**: Escreva um loop `for` que percorra uma lista de strings. Use `continue` para pular as strings que contêm o caractere "a" e `break` para sair do loop ao encontrar uma string com mais de 5 caracteres.
5. **Interrupção Condicional**: Crie um loop `for` que percorra uma lista de números. Use `continue` para pular números negativos e `break` para sair do loop ao encontrar um número maior que 50.
6. **Filtro de Números**: Crie um loop `while` que gera números aleatórios entre 1 e 50. Use `continue` para pular números menores que 10 e `break` para parar o loop quando um número maior que 40 for gerado.
7. **Verificação de String**: Escreva um loop `for` que percorra uma lista de strings. Use `continue` para pular strings que não começam com a letra "P" e `break` para sair do loop ao encontrar uma string que começa com "Python".
8. **Interrupção Condicional em String**: Crie um loop `while` que percorra uma string caractere por caractere. Use `continue` para pular vogais e `break` para sair do loop ao encontrar a letra "e".
9. **Filtragem em Sublistas**: Escreva um loop `for` que percorra uma lista de listas de números. Use `continue` para pular sublistas vazias e `break` para sair do loop ao encontrar uma sublista contendo um número negativo.
10. **Condicionais Múltiplas**: Crie um loop `for` que percorra uma lista de números. Use `continue` para pular números divisíveis por 2 ou 5 e `break` para sair do loop ao encontrar um número maior que 30.
11. **Verificação de Consoantes**: Crie um loop `while` que percorre uma string. Use `continue` para pular caracteres que são vogais e `break` para parar o loop ao encontrar uma consoante específica (por exemplo, "r").
12. **Busca em Lista**: Escreva um loop `for` que percorra uma lista de números. Use `continue` para pular números ímpares e `break` para sair do loop ao encontrar um número divisível por 4.
13. **Interrupção Condicional em Nomes**: Crie um loop `for` que percorra uma lista de nomes. Use `continue` para pular nomes com menos de 4 letras e `break` para sair do loop ao encontrar um nome começando com "A".
14. **Substituição em String**: Escreva um loop `while` que percorra uma string caractere por caractere. Use `continue` para pular caracteres que não são letras e `break` para sair do loop ao encontrar um espaço.
15. **Filtro de Listas**: Crie um loop `for` que percorra uma lista de listas de números. Use `continue` para pular listas que não contêm números maiores que 10 e `break` para sair do loop ao encontrar uma lista com mais de 3 números.
16. **Filtro de Substring**: Escreva um loop `for` que percorra uma lista de strings. Use `continue` para pular strings que não contêm a letra "x" e `break` para sair do loop ao encontrar uma string com mais de 8 caracteres.
17. **Verificação de Números**: Crie um loop `while` que percorra uma lista de números de 1 a 100. Use `continue` para pular números que não são primos e `break` para sair do loop ao encontrar um número primo maior que 50.
18. **Busca em String**: Escreva um loop `for` que percorra uma string. Use `continue` para pular os caracteres que não são dígitos e `break` para sair do loop ao encontrar dois dígitos consecutivos.
19. **Filtro em Listas**: Crie um loop `for` que percorra uma lista de listas de números. Use `continue` para pular listas que contêm números negativos e `break` para sair do loop ao encontrar uma lista com apenas números positivos.
20. **Verificação de Caracteres**: Escreva um loop `while` que percorra uma string. Use `continue` para pular os caracteres que não são letras maiúsculas e `break` para sair do loop ao encontrar três letras maiúsculas consecutivas.

</details>
