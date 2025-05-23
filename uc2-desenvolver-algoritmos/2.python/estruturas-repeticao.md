Índice

1. [while](#while)
1. [contador e acumulador](#contador-e-acumulador)
1. [exercícios while](#exercícios-while)
1. [comando for](#comando-for)
1. [exercícios for](#exercícios-for)
1. [loops aninhados](#loops-aninhados)
1. [exercícios loops aninhados](#exercícios-loops-aninhados)
1. [for vs while](#for-vs-while)
1. [exercícios for vs while](#exercícios-for-vs-while)

# estruturas de repetição

## while

A estrutura de repetição `while` em Python é usada para executar um bloco de código repetidamente, desde que uma condição seja verdadeira. A cada iteração (a cada repetição), a condição é avaliada; se continuar sendo verdadeira, o loop continua, caso contrário, ele para.

Veja a sintaxe básica :

```python
while condicao:
    # Bloco de código a ser repetido
```

- **`condicao`**: uma expressão que será avaliada como `True` ou `False`;
- **bloco de código**: o conjunto de instruções que será executado repetidamente enquanto a condição for `true`;

### exemplo de contagem

Veja como fica uma contagem simples, iniciando em 1 e terminando em 5 :

```python
contador = 1

while contador <= 5:
    print("Contagem : ", contador)
    contador = contador + 1
```

O código inicia com a definição da variável `contador` e o valor 1 é atribuída a ela. Em seguida, o comando `while` testa a condição especificada nele, se `contador <= 5`. Enquanto a condição for verdadeira, seu bloco de código interno será executado. No bloco de código, é utilizado um `print` para exibir uma string e o valor da variável `contador`. Logo depois, é somado 1 ao conteúdo da variável contador usando `contador = contador + 1`.

Esse código terá como resultado :

```
Contagem : 1
Contagem : 2
Contagem : 3
Contagem : 4
Contagem : 5
```

Após `contador` chegar a 6, a condição `contador <= 5` se tornará `False`, e o loop será interrompido.

### exemplo com entrada do usuário

O `while` é frequentemente usado para repetir ações até que o usuário forneça uma resposta específica.

```python
resposta = ""

while resposta != "sair":
    resposta = input("Digite algo (ou 'sair' para encerrar): ")
    print('Você digitou :', resposta)
```

- O loop continuará pedindo uma entrada do usuário e imprimindo-a até que o usuário digite "sair";
- Quando a entrada for "sair", a condição `resposta != "sair"` será `False`, e o loop será interrompido;

### exemplo com uma condição complexa

Às vezes, a condição dentro de um `while` pode ser mais complexa e envolver múltiplas variáveis.

```python
numero = 10
divisor = 2

while numero % divisor == 0:
    print(numero, 'é divisível por', divisor)
    numero = numero / 2
```

- A condição `numero % divisor == 0` verifica se `numero` é divisível por `divisor`;
- Enquanto o `numero` for divisível por `2`, ele será dividido por 2 a cada iteração, e a mensagem será impressa;
- O loop para quando `numero` não for mais divisível por 2;

### cuidados com o `while`

Um cuidado importante ao usar `while` é evitar loops infinitos, que acontecem quando a condição nunca se torna `False`. Por exemplo:

```python
contador = 1

while contador <= 5:
    print("Contagem : ", contador)
    # Esquecemos de incrementar o contador!
```

Esse código nunca sairá do loop porque `contador` nunca muda, fazendo com que a condição seja sempre verdadeira. Isso pode travar o programa.

## contador e acumulador

Os conceitos de **acumulador** e **contador** são amplamente usados em loops, especialmente com `while`, para realizar operações repetitivas como somar valores ou contar ocorrências.

### contador

Um **contador** é uma variável que é usada para contar quantas vezes um evento ocorre. Geralmente, ele é incrementado por um valor fixo (como 1) a cada iteração do loop.

É possível contar quantas vezes um loop `while` é executado. Veja o código abaixo :

```python
contador = 0
resposta = ''

while resposta != "sair":
    resposta = input("Digite algo (ou 'sair' para encerrar): ")
    print('Você digitou :', resposta)
    contador = contador + 1

print('o loop while foi executado', contador, 'vezes')
```

O código acima começa declarando as variáveis `contador` e `resposta`. Em seguida, o comando `while` testa se a resposta é diferente a `sair`. Enquanto a condição for verdadeira, o bloco de código dentro do `while` é executado. Dentro dele, a cada iteração, é feita uma pergunta (`input("Digite algo (ou 'sair' para encerrar): ")`) para o usuário e salvar o for digitado na variável `resposta`. Em seguida, é mostrado o que o usuário digitou com usando um `print` e o contador é incrementado em 1.

Ao final, quando o usuário finalmente digitar **sair**, o loop (laço de repetição) será encerrado e o `print` final irá mostrar a quantidade de vezes que a pergunta fora feita ao usuário.

### acumulador

Um **acumulador** é uma variável que acumula valores ao longo das iterações de um loop. Geralmente, ele começa em um valor inicial (como 0) e a cada iteração, um novo valor é adicionado a ele.

Veja como somar os números de 1 a 5 usando um acumulador :

```python
soma = 0
numero = 1

while numero <= 5:
    soma = soma + numero
    print('Adicionando', numero, ', a soma agora é', soma)
    numero = numero + 1

print('a soma final é', soma)
```

A variável `soma` é inicializada com o valor 0 e a variável `numero` é inicializada com o valor 1. Depois, o comando `while` testa se a condição `numero <= 5` é verdadeira. Enquanto for, o bloco de código é executado. Dentro dele, a cada iteração, o valor e `numero` é adicionado a `soma` (`soma = soma + numero`). Em seguida, o `numero` é incrementado em 1 a cada iteração.

Ao final, é mostrado o valor final da variável `soma`.

### combinando acumulador e contador

É possível combinar um contador e um acumulador no mesmo loop.

Considere o seguinte, é preciso somar os números pares de 1 a 10 e contar quantos números pares existem nesse intervalo.

```python
contador_pares = 0
soma_pares = 0
numero = 1

while numero <= 10:
    if numero % 2 == 0:
        contador_pares = contador_pares + 1
        soma_pares = soma_pares + numero
    numero = numero + 1

print('Quantidade de números pares :', contador_pares)
print('Soma dos números pares :', soma_pares)
```

O código acima inicia com a declaração das variáveis `contador_pares`, `soma_pares` e `numero`. O comando `while` testa se `numero <= 10` é verdadeiro, se for o bloco de código é executado. Em seguida, é feito um testes para número par (`numero % 2 == 0`). Quando o teste der verdadeiro, o `contador_pares` é incrementado em 1 e a `soma_pares` é somado com o valor da variável `numero`. Em seguida, mesmo que a condição do `if` seja falsa, a variável `numero` é incrementada em 1.

Ao finalizar o loop, é mostrado os valores das variáveis `contador_pares` e `soma_pares`.

Veja agora um uso de um acumulador, mas agora usando com multiplicação :

```python
# algoritmo para calcular o fatorial de 5
produto = 1
numero = 1

while numero <= 5:
    produto = produto * numero
    print('Multiplicando por',numero,', produto agora é', produto)
    numero = numero + 1

print('o fatorial de 5 é', produto)
```

### exercícios `while`

<details>
<summary>Lista de Exercícios</summary>

1. Nível Simples
    1. Crie um programa que peça ao usuário para digitar um número inteiro positivo e continue pedindo até que o número digitado seja maior que 10.
    1. Crie um programa que peça ao usuário para digitar números inteiros e some esses números até que o usuário digite um número negativo.
    1. Crie um programa que peça ao usuário para digitar uma senha (string) até que ele acerte a senha correta "Python123".
    1. Crie um programa que peça ao usuário para digitar um número decimal até que ele digite um valor maior que 0.5.
    1. Crie um programa que exiba "Olá!" 5 vezes utilizando um while e uma variável contador.
1. Nível Simples com if-elif-else
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número maior que 50. Se o número for ímpar, exiba "Ímpar". Caso contrário, exiba "Par".
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite "sair". Se a palavra contiver a letra "a", exiba "Contém a letra 'a'". Caso contrário, exiba "Não contém a letra 'a'".
    1. Crie um programa que peça ao usuário para digitar números decimais até que a soma dos números seja maior que 100. Se o número digitado for maior que 10, exiba "Número grande". Caso contrário, exiba "Número pequeno".
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "False". Se for "True", exiba "Verdadeiro". Caso contrário, exiba "Falso".
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número negativo. Se o número for divisível por 3, exiba "Divisível por 3". Caso contrário, exiba "Não divisível por 3".
1. Nível Intermediário
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número maior que 20. Em seguida, exiba todos os números digitados em uma lista.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número menor que 1.5. Em seguida, exiba a média dos números digitados.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite "stop". Em seguida, exiba todas as palavras em uma única string concatenada.
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "True". Em seguida, exiba quantas vezes o valor "False" foi digitado.
    1. Crie um programa que peça ao usuário para digitar números inteiros e adicione-os a uma lista até que a lista tenha 5 elementos. Em seguida, exiba a lista completa.
1. Nível Intermediário com if-elif-else
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número par. Se o número for maior que 10, adicione-o a uma lista de "números grandes". Caso contrário, adicione-o a uma lista de "números pequenos". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite "fim". Se a palavra tiver mais de 5 caracteres, adicione-a a uma lista de "palavras longas". Caso contrário, adicione-a a uma lista de "palavras curtas". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número negativo. Se o número for maior que 1, exiba "Grande". Se for menor que 1, exiba "Pequeno". Se for igual a 1, exiba "Igual a 1".
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "False" duas vezes seguidas. Exiba quantas vezes "True" foi digitado.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número maior que 100. Se o número for múltiplo de 5, adicione-o a uma lista de "múltiplos de 5". Caso contrário, adicione-o a uma lista de "não múltiplos de 5". Exiba as duas listas ao final.
        ```python
        mult_cinco = []
        nao_mult_cinco = []

        numero = 0

        while numero <= 100:
            print("digite apenas numeros inteiros")
            numero = int(input(' >> '))

            if numero % 5 == 0:
                mult_cinco = mult_cinco + [numero]
            else:
                nao_mult_cinco = nao_mult_cinco + [numero]


        print('fim do programa')
        print('conteudo da lista mult_cinco : ', mult_cinco)
        print("conteudo da lista nao_mult_cinco : ", nao_mult_cinco)
        ```
1. Nível Avançado
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número primo. Exiba todos os números digitados até então.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número igual a 0. Em seguida, exiba o maior número digitado.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite uma palavra que comece com a letra "z". Em seguida, exiba a palavra mais longa digitada.
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "True" três vezes. Exiba a quantidade total de valores digitados.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número negativo. Em seguida, exiba a soma de todos os números digitados.
1. Nível Avançado com if-elif-else
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um múltiplo de 7. Se o número for par, adicione-o a uma lista de "pares". Se for ímpar, adicione-o a uma lista de "ímpares". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite "exit". Se a palavra contiver a letra "e", adicione-a a uma lista de "palavras com e". Caso contrário, adicione-a a uma lista de "palavras sem e". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número menor que 0. Se o número for positivo, exiba "Positivo". Se for negativo, exiba "Negativo". Se for zero, exiba "Zero".
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "False" três vezes seguidas. Exiba a quantidade total de "True" digitados.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que a soma dos números seja maior que 50. Se o número digitado for maior que 10, exiba "Grande". Caso contrário, exiba "Pequeno".
1. Nível Complexo
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número divisível por 4. Em seguida, exiba o menor número digitado.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número entre 0 e 1. Em seguida, exiba a média dos números digitados.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite "fim". Em seguida, exiba as palavras digitadas em ordem inversa.
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "True" cinco vezes. Em seguida, exiba quantas vezes "False" foi digitado.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que a soma dos números seja maior que 100. Em seguida, exiba todos os números digitados que sejam divisíveis por 5.
1. Nível Complexo com if-elif-else
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número primo. Se o número for maior que 50, adicione-o a uma lista de "números grandes". Caso contrário, adicione-o a uma lista de "números pequenos". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite uma palavra que tenha exatamente 5 letras. Se a palavra começar com "a", adicione-a a uma lista de "palavras com a". Caso contrário, adicione-a a uma lista de "outras palavras". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número menor que 0. Se o número for maior que 5, adicione-o a uma lista de "números altos". Caso contrário, adicione-o a uma lista de "números baixos". Exiba as duas listas ao final.
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite "True" quatro vezes seguidas. Se o valor for "True", adicione-o a uma lista de "verdadeiros". Caso contrário, adicione-o a uma lista de "falsos". Exiba ambas as listas ao final.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número que seja a soma dos dois números anteriores. Se o número digitado for maior que 20, adicione-o a uma lista de "números grandes". Caso contrário, adicione-o a uma lista de "números pequenos". Exiba as duas listas ao final.
1. Nível Muito Complexo
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número que seja divisível por todos os números anteriormente digitados. Exiba a lista completa de números ao final.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número que seja a média de todos os números anteriormente digitados. Exiba o maior e o menor número digitado ao final.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite uma palavra que tenha as mesmas letras (em qualquer ordem) que a primeira palavra digitada. Em seguida, exiba a quantidade total de palavras digitadas.
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite uma sequência de "True", "False", "True", "False". Exiba quantas vezes "True" e "False" foram digitados ao final.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que a soma dos números digitados seja igual ao produto dos números digitados. Em seguida, exiba todos os números digitados e a soma total.
1. Nível Muito Complexo com if-elif-else
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número que seja divisível pelo número de elementos já digitados. Se o número for maior que 100, adicione-o a uma lista de "números muito grandes". Caso contrário, adicione-o a uma lista de "outros números". Exiba ambas as listas ao final.
    1. Crie um programa que peça ao usuário para digitar palavras até que ele digite uma palavra que tenha um número de letras igual ao número total de palavras digitadas anteriormente. Se a palavra começar com uma vogal, adicione-a a uma lista de "palavras com vogal". Caso contrário, adicione-a a uma lista de "palavras com consoante". Exiba ambas as listas ao final.
    1. Crie um programa que peça ao usuário para digitar números decimais até que ele digite um número que seja o dobro de algum dos números já digitados. Se o número for maior que 10, adicione-o a uma lista de "números grandes". Caso contrário, adicione-o a uma lista de "números pequenos". Exiba ambas as listas ao final.
    1. Crie um programa que peça ao usuário para digitar valores booleanos (True ou False) até que ele digite um padrão alternado de "True" e "False" três vezes seguidas. Exiba a quantidade total de "True" e "False" digitados ao final.
    1. Crie um programa que peça ao usuário para digitar números inteiros até que ele digite um número que seja múltiplo da soma dos dígitos de um dos números anteriormente digitados. Se o número for par, adicione-o a uma lista de "pares". Caso contrário, adicione-o a uma lista de "ímpares". Exiba ambas as listas ao final.
</details>

## comando `for`

O comando `for` em Python é uma estrutura de repetição que permite iterar sobre elementos de uma sequência (como listas, tuplas, strings ou intervalos) ou qualquer outro objeto iterável. A cada iteração, ele atribui o próximo elemento da sequência a uma variável e executa um bloco de código.

```python
# sintaxe básica
for variável in sequência:
    # bloco de código
```

- **variável** : uma variável que assume o valor de cada item da sequência durante cada iteração;
- **sequência** : pode ser qualquer tipo de coleção, como uma lista, string, tupla, conjunto, ou até mesmo um intervalo (usando `range()`);
- **bloco de código** : o código que será executado para cada item na sequência;

Veja alguns exemplos

1. iterando sobre uma lista :

    Uma lista, nada mais é que uma sequência de itens. Então, é possível usar o comando `for` para passar por cada elemento individualmente.
    ```python
    frutas = ["maçã", "banana", "laranja"]
    for fruta in frutas:
        print(fruta)
    # maçã
    # banana
    # laranja
    ```

1. iterando sobre uma string :
    ```python
    palavra = 'Arnold'
    for letra in palavra:
        print(letra)
    # A
    # r
    # n
    # o
    # l
    # d
    ```

### `for` e `if-elif-else`

É possível incluir declarações condicionais dentro de um loop `for` para controlar o fluxo de execução :

```python
numeros = [1, 2, 3, 4, 5, 6]
for num in numeros:
    if num % 2 == 0:
        print(f'{num} é par')
    else:
        print(f'{num} é ímpar')
# 1 é ímpar
# 2 é par
# 3 é ímpar
# 4 é par
# 5 é ímpar
# 6 é par
```

### exercícios `for`

<details>
<summary>Lista de Exercícios</summary>

1. Itere sobre uma lista de números e imprima cada número.
1. Itere sobre uma string e imprima cada caractere.
1. Itere sobre uma lista de palavras e imprima cada palavra em maiúsculas.
1. Itere sobre uma lista de números e imprima o quadrado de cada número.
1. Itere sobre uma string e conte quantas letras "a" ela possui.
1. Crie uma lista de números e use um loop `for` para criar uma nova lista com o dobro de cada número.
1. Itere sobre uma lista de strings e imprima cada uma em ordem reversa.
1. Itere sobre uma lista de números e imprima apenas os números pares.
1. Itere sobre uma lista de palavras e imprima apenas as palavras que começam com a letra "p".
1. Itere sobre uma lista de números e imprima o cubo de cada número.
1. Crie uma lista de números e use `for` para somar todos os números da lista.
1. Itere sobre uma string e crie uma nova string com todas as vogais removidas.
1. Itere sobre uma lista de palavras e imprima o comprimento de cada uma.
1. Itere sobre uma lista de números e imprima a metade de cada número.
1. Itere sobre uma string e imprima cada caractere junto com seu índice.
1. Crie uma lista de palavras e use `for` para criar uma nova lista com cada palavra em maiúsculas.
1. Itere sobre uma lista de números e imprima apenas os números ímpares.
1. Itere sobre uma string e imprima apenas as letras que aparecem mais de uma vez.
1. Itere sobre uma lista de números e imprima o produto de todos os números.
1. Itere sobre uma lista de palavras e imprima apenas as palavras que contêm a letra "e".
1. Itere sobre uma lista de números e crie uma nova lista com apenas os números que são divisíveis por 3.
1. Itere sobre uma string e imprima cada caractere junto com a quantidade de vezes que ele aparece na string.
1. Itere sobre uma lista de palavras e imprima cada palavra com suas letras em ordem alfabética.
1. Itere sobre uma lista de números e imprima a soma de todos os números maiores que 10.
1. Itere sobre uma lista de strings e crie uma nova string que seja a concatenação de todas as strings da lista.

</details>

## loops aninhados

Loops aninhados em Python ocorrem quando se coloca um loop dentro de outro. Isso permite percorrer estruturas de dados mais complexas, como listas de listas (ou matrizes) e realizar operações em camadas diferentes de iteração.

### usando o loop `for` aninhado

Quando se aninha loops `for`, o loop externo inicia e, para cada iteração do loop externo, o loop interno percorre completamente sua estrutura.

1. iterando sobre uma matriz

```python
matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

for linha in matriz:
    for coluna in linha:
        print(coluna, end=' ')
    print()
# 1 2 3
# 4 5 6
# 7 8 9
```

1. O loop externo `for linha in matriz` percorre cada lista dentro da lista principal `matriz`;
1. O loop interno `for coluna in linha` percorre cada elemento dentro da lista atual (`linha`);
1. O `print(coluna, end=' ')` imprime cada elemento da linha na mesma linha;
1. O `print()` fora do loop interno quebra a linha, garantindo que cada linha da matriz seja impressa em uma linha separada;

### usando o loop `while` aninhado

No caso do `while`, é necessário controlar explicitamente as condições de parada tanto do loop externo quanto do interno.

1. iterando sobre uma matriz com `while`

```python
matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

i = 0
while i < len(matriz):
    j = 0
    while j < len(matriz[i]):
        print(matriz[i][j], end=' ')
        j += 1
    print()
    i += 1
# 1 2 3
# 4 5 6
# 7 8 9
```

1. O loop externo `while i < len(matriz)` controla a iteração sobre as linhas da matriz.
1. O loop interno `while j < len(matriz[i])` controla a iteração sobre os elementos dentro da linha atual.
1. O `print(matriz[i][j], end=' ')` imprime cada elemento da linha.
1. Após o loop interno, o `print()` cria uma nova linha.
1. `i += 1` e `j += 1` atualizam os contadores para mover-se para a próxima linha e próximo elemento, respectivamente.

### usando `for` e `while` juntos

É também possível combinar `for` e `while` em loops aninhados, dependendo da lógica que deseja implementar.

1. `for` e `while` juntos

```python
matriz = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
]

for linha in matriz:
    j = 0
    while j < len(linha):
        print(linha[j], end=' ')
        j += 1
    print()
# 1 2 3
# 4 5 6
# 7 8 9
```

1. O loop externo `for linha in matriz` percorre cada linha da matriz;
1. O loop interno `while j < len(linha)` percorre cada elemento da linha usando um contador manual `j`;
1. O `print(linha[j], end=' ')` imprime cada elemento;
1. O `print()` no final quebra a linha;

### exercícios loops aninhados

<details>
<summary>Lista de Exercícios</summary>

1. exercícios com `for` aninhado
    1. crie um programa que imprime o seguinte padrão utilizando loops aninhados `for`:
    ```
    *
    * *
    * * *
    * * * *
    * * * * *
    ```
    1. dda uma matriz 3x3, crie um programa que soma todos os elementos da matriz usando loops `for` aninhados.
    1. crie uma lista de listas onde cada sublista contém os números de 1 a 5. Use loops `for` aninhados para imprimir todos os elementos.
    1. dada uma matriz 4x4, use loops `for` aninhados para imprimir a diagonal principal (elementos onde o índice da linha é igual ao índice da coluna).
    1. escreva um programa que crie um tabuleiro de xadrez 8x8 utilizando loops `for` aninhados, onde o tabuleiro é representado por "X" e "O".
1. exercícios com `while` aninhado
    1. crie um programa que imprime o seguinte padrão utilizando loops aninhados `while`:
    ```
    1
    1 2
    1 2 3
    1 2 3 4
    1 2 3 4 5
    ```
    1. dada uma matriz 3x3, escreva um programa que encontra o maior valor da matriz utilizando loops `while` aninhados.
    1. usando loops `while` aninhados, crie um programa que imprime uma matriz identidade 4x4.
    1. escreva um programa que cria uma matriz 5x5 e preenche-a com números aleatórios entre 1 e 100. Use loops `while` aninhados para encontrar e imprimir o menor valor da matriz.
    1. crie um programa que usa loops `while` aninhados para imprimir todos os números pares de uma matriz 3x3.
1. exercícios com combinação de `for` e `while`
    1. dada uma lista de listas, use um loop `for` externo e um loop `while` interno para imprimir todos os elementos das sublistas.
    1. crie um programa que use um loop `while` externo para iterar sobre os índices de uma lista de listas e um loop `for` interno para somar os elementos de cada sublista.
    1. escreva um programa que leia uma matriz 4x4 e use um loop `for` para iterar sobre as linhas e um loop `while` para contar o número de elementos pares em cada linha.
    1. dada uma matriz 3x3, use um loop `for` externo para iterar sobre as linhas e um loop `while` interno para calcular o produto dos elementos de cada linha.
    1. crie um programa que usa um loop `while` para iterar sobre uma lista de listas e um loop `for` para encontrar a soma dos elementos ímpares em cada sublista.
1. Exercícios Avançados
    1. escreva um programa que gere uma matriz 3x3 com números aleatórios entre 1 e 50. Use loops `for` aninhados para transpor a matriz (trocar linhas por colunas).
    1. dada uma matriz `NxN`, escreva um programa que utilize loops aninhados `while` para calcular a soma dos elementos acima da diagonal principal.
    1. crie um programa que leia duas matrizes 3x3 e use loops `for` aninhados para calcular a soma dessas matrizes.
    1. dada uma matriz `M x N`, crie um programa que use loops `for` e `while` aninhados para imprimir os elementos na forma de espiral.
    1. crie um programa que usa um loop `for` para iterar sobre os índices de uma lista de listas e um loop `while` para encontrar o maior número primo em cada sublista.

</details>

## for vs while

No Python, os loops `for` e `while` são estruturas de repetição que permitem executar um bloco de código várias vezes, mas funcionam de maneiras diferentes.

### loop `for`

O loop `for` é utilizado para iterar sobre uma sequência (como uma lista, tupla, string ou range). Ele percorre cada elemento da sequência, um por um, até que todos os elementos tenham sido processados.

```python
estrutura básica
for elemento in sequencia:
    # Bloco de código a ser repetido
```

- **`elemento`** : uma variável que assume o valor de cada item da sequência em cada iteração;
- **`sequencia`** : a sequência de elementos que será iterada;

#### características do `for`
1. **iteração pré-definida** : o número de iterações é conhecido desde o início, baseado no tamanho da sequência;
2. **fácil manipulação de sequências** : ideal para trabalhar com listas, strings, tuplas, etc;
3. **menos propenso a loops infinitos** : como o número de iterações é determinado pela sequência, é menos provável que o loop entre em um estado infinito;

### loop `while`

O loop `while` repete um bloco de código enquanto uma condição booleana é verdadeira. Ele é útil quando o número de iterações não é conhecido de antemão, mas depende de uma condição que pode mudar durante a execução do loop.

```python
# estrutura básica
while condicao:
    # Bloco de código a ser repetido
```

- **`condicao`** : uma expressão que é avaliada antes de cada iteração. Se for `True`, o loop continua; se for `False`, o loop para;

#### características do `while`
1. **iteração não definida** : o número de iterações depende da condição, e pode não ser conhecido antecipadamente;
2. **flexibilidade** : permite loops mais complexos, onde a condição de término pode depender de várias variáveis;
3. **propenso a loops infinitos** : se a condição nunca se tornar `false`, o loop continuará indefinidamente;


### comparação `for` vs `while`

| característica | `for` | `while` |
| ---- | ---- | ---- |
| **uso principal** | iteração sobre sequências conhecidas | condições complexas ou indefinidas |
| **número de iterações** | pré-determinado (baseado na sequência) | indeterminado (baseado na condição)|
| **sintaxe** | mais concisa para iterar sequências | mais flexível, mas potencialmente mais longa |
| **segurança** | menos propenso a loops infinitos | maior risco de loops infinitos |
| **aplicabilidade** | ideal para listas, strings, tuplas, etc. | ideal para loops dependentes de condições variáveis |
| **controle do loop** | controlado pela sequência | controlado pela condição booleana |

### quando usar `for`?
- quando o número de iterações é conhecido ou pode ser determinado com base na sequência (como iterar sobre uma lista ou usando `range()`).
- quando se deseja iterar sobre cada elemento de uma estrutura de dados.

### quando usar `while`?
- quando o número de iterações não é conhecido antecipadamente e depende de uma condição que pode variar durante a execução.
- quando é necessário repetir uma ação até que uma determinada condição seja atendida.

### exemplos

1. iterar uma lista de números e imprimir cada elemento :
    ```python
    numeros = [1, 2, 3, 4, 5]

    # iterando com for
    for numero in numeros:
        print(numero)
    # 1
    # 2
    # 3
    # 4
    # 5

    # iterando com o while
    i = 0

    while i < len(numeros):
        numero = numeros[i]
        print(numero)
        i += 1

    # 1
    # 2
    # 3
    # 4
    # 5
    ```

1. somar os números de 1 a 5 :
    ```python
    # iterando com for
    soma = 0

    for i in range(1, 6):
        soma += i
    print(soma)
    # 15

    # iterando com while
    soma = 0
    i = 1

    while i <= 5:
        soma += i
        i += 1
    print(soma)
    # 15
    ```

1. encontrar o primeiro número par em uma lista :
    ```python
    numeros = [1, 3, 5, 6, 7, 9]

    # iterando com for
    for numero in numeros:
        if numero % 2 == 0:
            print(f"Primeiro número par : {numero}")
            break
    # Primeiro número par : 6

    # iterando com while
    i = 0

    while i < len(numeros):
        numero = numeros[i]
        if numero % 2 == 0:
            print(f"Primeiro número par : {numero}")
            break
        i += 1
    # Primeiro número par : 6
    ```

1. contar até que um número aleatório seja maior que 5 :

    Esse exemplo é mais adequado para `while`, mas pode ser adaptado com um loop controlado.

    ```python
    import random

    # iterando com for
    for _ in range(100):  # define um limite arbitrário para evitar loop infinito
        numero = random.randint(1, 10)
        print(numero)
            if numero > 5:
            break
    # 3
    # 1
    # 2
    # 6

    # iterando com while
    numero = 0
    while numero <= 5:
        numero = random.randint(1, 10)
        print(numero)

    # 1
    # 4
    # 7
    ```

1. repetir uma string 5 vezes
    ```python
    # iterando com for
    for _ in range(5):
        print("Olá")
    # Olá
    # Olá
    # Olá
    # Olá
    # Olá

    # iterando com while
    i = 0
    while i < 5:
        print("Olá")
        i += 1
    # Olá
    # Olá
    # Olá
    # Olá
    # Olá
    ```

## exercícios for vs while

<details>
<summary>Lista de Exercícios</summary>

Para cada exercício abaixo, crie as duas versões, isto é, use tanto o loop `for` quanto o loop `while`.

Exemplo :
```python
# imprimir cada elemento de uma lista de frutas :
# dada a lista frutas = ['maçã', 'banana', 'cereja'],
# imprima cada fruta;
frutas = ['maçã', 'banana', 'cereja']

# iterando com for
for fruta in frutas:
    print(fruta)

# iterando com while
i = 0
while i < len(frutas):
    fruta = frutas[i]
    print(fruta)
    i += 1
```

1. **imprimir cada elemento de uma lista de frutas** : dada a lista `frutas = ['maçã', 'banana', 'cereja']`, imprima cada fruta;
1. **somar todos os números em uma tupla** : dada a tupla `numeros = (1, 2, 3, 4, 5)`, calcule e imprima a soma de todos os elementos;
1. **contar o número de vogais em uma string** : dada a string `texto = "programacao"`, conte quantas vogais existem no texto;
1. **reverter uma lista de números** : dada a lista `numeros = [1, 2, 3, 4, 5]`, imprima os números na ordem inversa;
1. **concatenar todas as strings em uma lista** : dada a lista `palavras = ['Eu', 'gosto', 'de', 'programar']`, concatene todas as strings em uma única string e imprima o resultado;
1. **encontrar o maior número em uma lista** : dada a lista `numeros = [4, 7, 1, 9, 3]`, encontre e imprima o maior número;
1. **contar quantos números pares existem em uma tupla** : dada a tupla `numeros = (2, 5, 8, 11, 14)`, conte quantos números são pares;
1. **imprimir cada caractere de uma string** : dada a string `nome = "Python"`, imprima cada caractere em uma linha separada;
1. **somar os números ímpares em uma lista** : dada a lista `numeros = [1, 2, 3, 4, 5, 6, 7]`, calcule a soma de todos os números ímpares;
1. **verificar se uma lista contém um número específico** : dada a lista `numeros = [10, 20, 30, 40, 50]` e o número `30`, verifique se o número está presente na lista;
1. **contar quantas vezes uma letra específica aparece em uma string** : dada a string `frase = "banana"` e a letra `a`, conte quantas vezes a letra `a` aparece;
1. **imprimir os elementos de uma tupla que estão em posições pares** : dada a tupla `numeros = (10, 20, 30, 40, 50, 60)`, imprima os elementos que estão em posições pares;
1. **criar uma nova lista apenas com os elementos ímpares de uma lista** : dada a lista `numeros = [1, 2, 3, 4, 5, 6]`, crie e imprima uma nova lista contendo apenas os números ímpares;
1. **concatenar os caracteres de uma string em ordem inversa** : dada a string `texto = "abcd"`, crie e imprima uma nova string com os caracteres em ordem inversa;
1. **multiplicar todos os elementos de uma lista por 2** : dada a lista `numeros = [2, 4, 6, 8]`, crie uma nova lista onde cada elemento é o dobro do valor original;
1. **contar quantos números negativos existem em uma lista** : dada a lista `numeros = [-3, -2, 0, 1, 4]`, conte quantos números são negativos;
1. **verificar se uma string é um palíndromo** : dada a string `palavra = "radar"`, verifique se a palavra é um palíndromo (lê-se da mesma forma de trás para frente);
1. **imprimir os elementos de uma tupla até encontrar um valor específico** : dada a tupla `numeros = (5, 10, 15, 20, 25)` e o número `15`, imprima os elementos até encontrar o número 15 (inclusive);
1. **substituir todas as vogais de uma string por `*`** : dada a string `frase = "substituir vogais"`, crie e imprima uma nova string onde todas as vogais são substituídas por `*`;
    ```python
    frase = "SUBSTITUIR VOGAIS"
    vogais = "aeiou"
    copia = ""

    for i in range(len(frase)):
        if frase[i].lower() in vogais:
            copia += "*"
            continue
        copia += frase[i]
    print(frase)
    print(copia)
    ```
1. **imprimir o índice e o valor de cada elemento em uma lista** : dada a lista `numeros = [10, 20, 30, 40]`, imprima o índice e o valor de cada elemento;
1. **criar uma nova tupla apenas com os números maiores que 10** : dada a tupla `numeros = (3, 10, 15, 7, 20)`, crie e imprima uma nova tupla contendo apenas os números maiores que 10;
1. **imprimir uma string em formato de pirâmide** : dada a string `texto = "PYTHON"`, imprima a string em formato de pirâmide :
    ```
    P
    PY
    PYT
    PYTH
    PYTHO
    PYTHON
    ```
    ```python
    texto = "python eh muito legal"
    texto = texto.upper()

    print("print com for")
    for i in range(len(texto)):
        print(texto[:i+1])

    print("print com while")
    i = 0
    while i < len(texto):
        print(texto[:i+1])
        i += 1

    print("print com for e while")
    for i in range(len(texto)):
        qtd_letra = 0
        while qtd_letra < i + 1:
            print(texto[qtd_letra], end='')
            qtd_letra += 1
        # print("\nqtd de letras :", qtd_letra)
        print()
    ```
1. **remover todos os elementos duplicados de uma lista**: dada a lista `numeros = [1, 2, 2, 3, 4, 4, 5]`, crie e imprima uma nova lista sem elementos duplicados;
1. **imprimir apenas os caracteres que são letras maiúsculas de uma string**: dada a string `texto = "Programação Em Python"`, imprima apenas as letras maiúsculas;
1. **imprimir todos os elementos de uma lista de trás para frente**: dada a lista `numeros = [1, 2, 3, 4, 5]`, imprima os elementos começando do último até o primeiro;

</details>
