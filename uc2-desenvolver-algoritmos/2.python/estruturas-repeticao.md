Índice

1. [while](#while)
1. [contador e acumulador](#contador-e-acumulador)

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
