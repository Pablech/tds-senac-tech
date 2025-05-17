Índice

1. [estutura sequencial](#estrutura-sequencial)
1. [if](#if)
1. [else](#else)
1. [elif](#elif)
1. [if aninhado](#if-aninhado)
1. [comparando if simples e if aninhado](#comparando-if-simples-e-if-aninhado)

# Estruturas Condicionais em Python

## Estrutura Sequencial

A estrutura sequencial de um algoritmo corresponde ao fato de que um conjunto de ações será executado em uma sequência linear de cima para baixo e da esquerda para a direita.

Veja um exemplo :

```python
# como calcular o valor de x de uma função quadrática usando a fórmula de
# Bhaskara
# considere a equação quadrática : x^2 + 2x - 3 = 0, encontre os dois valores
# possíveis para o X
a = 1
b = 2
c = -3

delta = b ** 2 - 4 * a * c

x1 = (-b + (delta ** (1/2))) / (2 * a)
x2 = (-b - (delta ** (1/2))) / (2 * a)

print('Os valores de X são',x1,'e',x2,'.')
```

Nesse exemplo, pode-se ver que o algoritmo inicia na primeira linha, executa sucessivamente cada uma e termina quando chega na última linha. Nenhuma linha foi ignorada.

Há algumas estruturas das linguagens de programação que permitem alterar esse fluxo.

Provavelmente a estrutura condicional mais conhecida seja a `if-else`.

## `if`

Em Python, o `if` é usado para fazer uma decisão baseada em uma condição. A palavra `if` significa **se** em inglês. Quando usamos `if` em Python, estamos dizendo ao computador para fazer algo **se** uma determinada condição for verdadeira.

Veja sua estrutura básica :

```python
if <condição>:
    # código a ser executado se a condição for verdadeira
```

- **condição**: uma expressão que o Python avalia como verdadeira (True) ou falsa (False);
- **código a ser executado**: um bloco de código que será executado apenas se a condição for verdadeira;

Agora veja alguns exemplos simples :

```python
idade = 18

if idade >= 18:
    print('Você já pode dirigir.')
```

Neste exemplo, a condição `idade >= 18` é verdadeira, pois a variável `idade` é igual a 18. Portanto, o Python executa o código dentro do bloco `if` e imprime "Você já pode dirigir."

```python
idade = 15

if idade >= 18:
    print('Você já pode dirigir.')
```

Neste outro exemplo, a condição `idade >= 18` é falsa, pois a variável `idade` é igual a 15. Portanto, o Python não irá executar o código dentro do bloco `if`.

## `else`

O `else` é usado em conjunto com o `if` para definir o que deve ser feito quando a condição do `if` não é verdadeira. A palavra `else` significa **senão** em inglês. Portanto, estamos dizendo ao computador para fazer algo se a condição do `if` for falsa. Seu uso é opcional.

Veja sua estrutura básica :

```python
if condição:
    # código a ser executado se a condição for verdadeira
else:
    # código a ser executado se a condição for falsa
```

- **código a ser executado se a condição for falsa**: um bloco de código que será executado apenas se a condição do `if` for falsa;

Veja agora alguns exemplos :

```python
idade = 15

if idade >= 18:
    print("Você já pode dirigir.")
else:
    print("Você está proibido de dirigir.")
```

Neste exemplo, a condição `idade >= 18` é falsa, pois a variável `idade` é igual a 15. Portanto, o Python não executa o código dentro do bloco `if`, mas sim o código dentro do bloco `else`, imprimindo "Você está proibido de dirigir."

## `elif`

Em Python, o `elif` é uma combinação de `else` e `if`, que significa `senão se` em inglês. Ele permite verificar múltiplas condições em uma estrutura condicional, adicionando alternativas ao `if` inicial. Se a condição do `if` for falsa, o Python verifica a condição do `elif`. Você pode usar quantos `elif` precisar para cobrir todas as possibilidades. Assim como o `else`, o uso do `elif` também é opcional.

Veja sua estrutura básica :

```python
if condição1:
    # código a ser executado se condição1 for verdadeira
elif condição2:
    # código a ser executado se condição1 for falsa e condição2 for verdadeira
elif condição3:
    # código a ser executado se condição1 e condição2 forem falsas e condição3 for verdadeira
else:
    # código a ser executado se todas as condições anteriores forem falsas
```

- **condição1, condição2, condição3, ...**: expressões que o Python avalia como verdadeiras (True) ou falsas (False);
- **código a ser executado**: blocos de código que serão executados se a condição correspondente for verdadeira;

Veja um exemplo simples :

```python
nota = 75

if nota >= 90:
    print("Você tirou um A.")
elif nota >= 80:
    print("Você tirou um B.")
elif nota >= 70:
    print("Você tirou um C.")
else:
    print("Você está de recuperação.")
```

Neste exemplo, o Python verifica a condição `nota >= 90`. Como ela é falsa, ele passa para a próxima condição `nota >= 80`, que também é falsa. Em seguida, ele verifica `nota >= 70`, que é verdadeira. Portanto, ele executa o código dentro desse bloco "elif" e imprime "Você tirou um C.".

É possível usar quantos "elif" precisar para cobrir todas as possíveis condições. Veja um exemplo mais detalhado:

```python
dia_da_semana = "quarta-feira"

if dia_da_semana == "segunda-feira":
    print("Hoje é segunda-feira.")
elif dia_da_semana == "terça-feira":
    print("Hoje é terça-feira.")
elif dia_da_semana == "quarta-feira":
    print("Hoje é quarta-feira.")
elif dia_da_semana == "quinta-feira":
    print("Hoje é quinta-feira.")
elif dia_da_semana == "sexta-feira":
    print("Hoje é sexta-feira.")
else:
    print("Hoje é fim de semana.")
```

Neste exemplo, o Python verifica cada condição `elif` na ordem em que aparecem. Quando ele encontra a condição verdadeira (`dia_da_semana == "quarta-feira"`), ele executa o bloco de código correspondente e ignora os demais.

## Lista de Exercícios `if-elif-else`

<details>
    <summary>Lista de Exercícios</summary>

1. Exercícios Simples
    1. Verifique se um número é positivo. Caso seja, exiba "Positivo".
    1. Verifique se um número é negativo. Caso seja, exiba "Negativo".
    1. Verifique se um número é igual a zero. Caso seja, exiba "Zero".
    1. Verifique se um número é maior que 10. Caso seja, exiba "Maior que 10".
    1. Verifique se um número é menor que 5. Caso seja, exiba "Menor que 5".
    1. Verifique se um número é par. Caso seja, exiba "Par".
    1. Verifique se um número é ímpar. Caso seja, exiba "Ímpar".
    1. Verifique se uma pessoa é maior de idade (idade >= 18). Caso seja, exiba "Maior de idade".
    1. Verifique se uma pessoa é menor de idade (idade < 18). Caso seja, exiba "Menor de idade".
    1. Verifique se um número é positivo, negativo ou zero. Exiba a mensagem correspondente.
1. Exercícios Intermediários
    1. Verifique se um número é maior que outro. Caso seja, exiba "Maior".
    1. Verifique se um número é menor que outro. Caso seja, exiba "Menor".
    1. Verifique se dois números são iguais. Caso sejam, exiba "Iguais".
    1. Verifique se um número é maior ou igual a outro. Caso seja, exiba "Maior ou igual".
    1. Verifique se um número é menor ou igual a outro. Caso seja, exiba "Menor ou igual".
    1. Verifique se um número está entre 1 e 10. Exiba "Entre 1 e 10" ou "Fora do intervalo".
    1. Verifique se uma pessoa pode votar (idade >= 16). Exiba "Pode votar" ou "Não pode votar".
    1. Verifique se um número é divisível por 3. Exiba "Divisível por 3" ou "Não é divisível por 3".
    1. Verifique se um ano é bissexto (divisível por 4, mas não por 100, exceto se for divisível por 400). Exiba "Bissexto" ou "Não bissexto".
    1. Verifique se um número é positivo, negativo ou zero e exiba a mensagem correspondente.
1. Exercícios Avançados
    1. Verifique se a média das notas de um aluno é maior ou igual a 7. Caso seja, exiba "Aprovado". Caso contrário, exiba "Reprovado".
    1. Verifique se a temperatura está abaixo de 0. Caso esteja, exiba "Congelante". Se estiver entre 0 e 20, exiba "Frio". Se estiver acima de 20, exiba "Quente".
        ```python
        # vai ser recebida como string
        temp = input("digite uma temperatura : ")

        # convertendo de string para inteiro
        temp = int(temp)

        if temp < 0:
            print("Congelante")
        # elif temp >= 0 and temp <= 20:
        elif 0 <= temp <= 20:
            print("Frio")
        # elif temp > 20:
        else:
            print("Quente")
        ```
    1. Verifique se um número é par ou ímpar, e se é maior ou menor que 10. Exiba as mensagens correspondentes.
    1. Verifique se um aluno passou de ano. As notas finais de três matérias devem ser todas maiores ou iguais a 6. Caso seja, exiba "Passou". Caso contrário, exiba "Não passou".
    1. Verifique se um número está entre 1 e 100. Se estiver entre 1 e 50, exiba "Entre 1 e 50". Se estiver entre 51 e 100, exiba "Entre 51 e 100". Caso contrário, exiba "Fora do intervalo".
    1. Verifique se uma pessoa é maior de idade (idade >= 18) e se é aposentada (idade >= 65). Exiba "Maior de idade" ou "Aposentado" ou "Menor de idade".
    1. Verifique se um número é múltiplo de 5 ou de 10. Exiba "Múltiplo de 5", "Múltiplo de 10" ou "Não é múltiplo de 5 nem de 10".
    1. Verifique se a nota final de um aluno é maior ou igual a 7. Se for, exiba "Aprovado". Se for menor que 5, exiba "Reprovado". Se estiver entre 5 e 7, exiba "Recuperação".
    1. Verifique se a temperatura está abaixo de 0. Caso esteja, exiba "Congelante". Se estiver entre 0 e 15, exiba "Frio". Se estiver entre 16 e 30, exiba "Agradável". Se estiver acima de 30, exiba "Quente".
    1. Verifique se uma pessoa pode votar (idade >= 16) e se é obrigada a votar (idade >= 18 e < 70). Exiba "Não pode votar", "Pode votar" ou "Obrigada a votar".
1. Exercícios Complexos
    1. Verifique se um triângulo é equilátero, isósceles ou escaleno com base nos comprimentos de seus lados.
    1. Verifique se uma pessoa pode se aposentar. Ela deve ter pelo menos 65 anos ou ter trabalhado por pelo menos 30 anos. Exiba "Pode se aposentar" ou "Não pode se aposentar".
        ```python
        idade = int(input("digite sua idade : "))
        tempo_trabalho = int(input("digite seu tempo de trabalho : "))

        # forma 1
        if idade >= 65 or tempo_trabalho >= 30:
            print('Pode se aposentar')
        else:
            print('Nao pode se aposentar')

        # forma 2
        if idade >= 65:
            print("Pode se aposentar")
        elif tempo_trabalho >= 30:
            print("Pode se aposentar")
        else:
            print("nao pode se aposentar")
        ```
    1. Verifique se uma nota está entre 0 e 10. Se estiver fora, exiba "Nota inválida". Caso contrário, verifique se é maior ou igual a 7 (Aprovado), entre 5 e 6.9 (Recuperação) ou menor que 5 (Reprovado).
    1. Verifique se um ponto (x, y) informado pelo usuário está dentro, fora ou sobre a borda de um círculo de raio 5 centrado na origem.
    1. Verifique se um número é positivo, negativo ou zero. Além disso, verifique se é par ou ímpar e exiba as mensagens correspondentes.
        ```python
        num = input("digite um numero : ")
        num = int(num)

        if num == 0:
            print("eh igual a zero")
        elif num > 0:
            print("eh positivo")
        else:
            print("eh negativo")

        if num % 2 == 0:
            print("e o numero eh par")
        else:
            print("e o num eh impar")
        ```
    1. Verifique se uma data (dia, mês, ano) é válida. Considere anos bissextos e meses com diferentes números de dias. Exiba "Data válida" ou "Data inválida".
    1. Verifique se um ano é bissexto. Se for, exiba "Bissexto". Caso contrário, verifique se é par ou ímpar e exiba a mensagem correspondente.
    1. Verifique se três valores podem formar um triângulo. Caso possam, verifique se é equilátero, isósceles ou escaleno.
    1. Verifique se um número é par ou ímpar. Além disso, verifique se está entre 1 e 100 e exiba as mensagens correspondentes.

</details>

## `if` Aninhado

Um `if` aninhado é uma estrutura condicional que está dentro de outro `if`, `elif` ou `else`. Em outras palavras, é um `if` dentro de um `if`. Isso permite criar decisões mais complexas, verificando condições dentro de outras condições.

Veja um exemplo básico :

```python
if condição1:
    # código a ser executado se condição1 for verdadeira
    if condição2:
        # código a ser executado se condição2 também for verdadeira
    else:
        # código a ser executado se condição2 for falsa
else:
    # código a ser executado se condição1 for falsa
```

### `if` Aninhado em Dois Níveis

Veja um exemplo onde é verificado a idade e, dentro disso, é verificafo a cidadania para determinar se uma pessoa pode votar :

```python
idade = 20
cidadania = "brasileira"

if idade >= 18:
    if cidadania == "brasileira":
        print("Você pode votar.")
    else:
        print("Você não pode votar porque não é cidadão brasileiro.")
else:
    print("Você não pode votar porque é menor de idade.")
```

Neste exemplo, temos duas condições a serem verificadas:
1. A idade deve ser maior ou igual a 18;
1. A cidadania deve ser "brasileira";

Se a idade é maior ou igual a 18, o Python verifica a cidadania. Se ambas as condições forem verdadeiras, ele imprime "Você pode votar". Se a idade for menor que 18, ele imprime "Você não pode votar porque é menor de idade".

### `if` Aninhado em Três Níveis

Veja ver um exemplo mais complexo com três níveis de "if" aninhado :

```python
idade = 25
cidadania = "brasileira"
residencia = "São Paulo"

if idade >= 18:
    if cidadania == "brasileira":
        if residencia == "São Paulo":
            print("Você pode votar em São Paulo.")
        else:
            print("Você pode votar, mas não em São Paulo.")
    else:
        print("Você não pode votar porque não é cidadão brasileiro.")
else:
    print("Você não pode votar porque é menor de idade.")
```

Neste exemplo, verificamos três condições:
1. A idade deve ser maior ou igual a 18;
1. A cidadania deve ser "brasileira";
1. A residência deve ser "São Paulo";

Se todas as condições forem verdadeiras, ele imprime "Você pode votar em São Paulo". Se a cidadania for "brasileira" mas a residência não for "São Paulo", ele imprime "Você pode votar, mas não em São Paulo". Se a cidadania não for "brasileira", ele imprime "Você não pode votar porque não é cidadão brasileiro". Se a idade for menor que 18, ele imprime "Você não pode votar porque é menor de idade".

### Mais Exemplos

1. **verificando múltiplas condições aninhadas em uma compra**

```python
saldo = 1000
preco_item = 500
quantidade_em_estoque = 10

if saldo >= preco_item:
    if quantidade_em_estoque > 0:
        print("Compra realizada com sucesso!")
    else:
        print("Item fora de estoque.")
else:
    print("Saldo insuficiente.")
```

Neste exemplo, a compra só será realizada se houver saldo suficiente e o item estiver em estoque.

2. **verificando aninhamentos para determinar a faixa etária e o período do dia**

```python
idade = 16
periodo_do_dia = "tarde"

if idade < 18:
    if periodo_do_dia == "manhã":
        print("Você é menor de idade e está na escola de manhã.")
    elif periodo_do_dia == "tarde":
        print("Você é menor de idade e está na escola à tarde.")
    else:
        print("Você é menor de idade e está em casa à noite.")
else:
    if periodo_do_dia == "manhã":
        print("Você é adulto e está trabalhando de manhã.")
    elif periodo_do_dia == "tarde":
        print("Você é adulto e está trabalhando à tarde.")
    else:
        print("Você é adulto e está descansando à noite.")
```

Este exemplo determina a mensagem a ser exibida com base na idade e no período do dia.

## Comparando `if` Simples e `if` Aninhado

### Exemplo 1: verificação de senha e nome de usuário

**com `if` aninhado**

```python
usuario = "admin"
senha = "1234"

if usuario == "admin":
    if senha == "1234":
        print("Acesso permitido.")
    else:
        print("Senha incorreta.")
else:
    print("Usuário não encontrado.")
```

**sem `if` aninhado**

```python
usuario = "admin"
senha = "1234"

if usuario == "admin" and senha == "1234":
    print("Acesso permitido.")
elif usuario == "admin":
    print("Senha incorreta.")
else:
    print("Usuário não encontrado.")
```

### Exemplo 2: verificação de temperatura e umidade

**com `if` aninhado**

```python
temperatura = 30
umidade = 70

if temperatura > 25:
    if umidade > 60:
        print("Está quente e úmido.")
    else:
        print("Está quente e seco.")
else:
    if umidade > 60:
        print("Está frio e úmido.")
    else:
        print("Está frio e seco.")
```

**sem `if` aninhado**

```python
temperatura = 30
umidade = 70

if temperatura > 25 and umidade > 60:
    print("Está quente e úmido.")
elif temperatura > 25 and umidade <= 60:
    print("Está quente e seco.")
elif temperatura <= 25 and umidade > 60:
    print("Está frio e úmido.")
else:
    print("Está frio e seco.")
```

### Exemplo 3: verificação de estoque e saldo para compra

**com `if` aninhado**

```python
saldo = 200
preco_item = 150
estoque = 5

if estoque > 0:
    if saldo >= preco_item:
        print("Compra realizada com sucesso!")
    else:
        print("Saldo insuficiente.")
else:
    print("Item fora de estoque.")
```

**sem `if` aninhado**

```python
saldo = 200
preco_item = 150
estoque = 5

if estoque > 0 and saldo >= preco_item:
    print("Compra realizada com sucesso!")
elif estoque > 0:
    print("Saldo insuficiente.")
else:
    print("Item fora de estoque.")
```

## Lista de Exercícios

<details>
    <summary>Lista de Exercícios</summary>

Para os exercícios abaixo, use a estrutura de `if` que achar mais conveniente.

1. Exercícios Simples
    1. Verifique se um número é positivo. Caso seja, verifique se é maior que 10.
    1. Verifique se um número é negativo. Caso seja, verifique se é menor que -10.
    1. Verifique se um número é zero. Caso não seja, verifique se é positivo ou negativo.
    1. Verifique se um número é par. Caso seja, verifique se é maior que 20.
    1. Verifique se uma pessoa é maior de idade (idade >= 18). Se for, verifique se tem 65 anos ou mais.
1. Exercícios Intermediários
    1. Verifique se um número é maior que 10. Caso seja, verifique se é menor que 20.
    1. Verifique se um número é positivo. Caso seja, verifique se é ímpar.
    1. Verifique se uma pessoa pode votar (idade >= 16). Se puder, verifique se é obrigatória a votação (idade >= 18 e < 70).
    1. Verifique se uma string não está vazia. Caso não esteja, verifique se o primeiro caracter é uma vogal.
    1. Verifique se um número é divisível por 3. Caso seja, verifique se também é divisível por 5.
1. Exercícios Avançados
    1. Verifique se a média das notas de um aluno é maior ou igual a 7. Caso seja, verifique se a nota em matemática é maior que 5.
    1. Verifique se a temperatura está abaixo de 0. Caso esteja, exiba "Congelante". Se não, verifique se está entre 0 e 20, exiba "Frio".
    1. Verifique se um número é par ou ímpar. Se for par, verifique se é maior que 10. Se for ímpar, verifique se é menor que 5.
    1. Verifique se um número está entre 1 e 100. Se estiver, verifique se é múltiplo de 10.
    1. Verifique se a média das notas de um aluno é maior ou igual a 7. Caso seja, exiba "Aprovado". Caso contrário, verifique se está entre 5 e 6.9 e exiba "Recuperação".
1. Exercícios Complexos
    1. Verifique se três valores podem formar um triângulo. Caso possam, verifique se é equilátero, isósceles ou escaleno.
    1. Verifique se uma pessoa pode se aposentar. Ela deve ter pelo menos 65 anos. Se não tiver, verifique se trabalhou por pelo menos 30 anos.
    1. Verifique se uma data (dia, mês, ano) é válida. Considere anos bissextos. Se o ano for bissexto, verifique se o mês é fevereiro e o dia é 29.
    1. Verifique se um número é positivo, negativo ou zero. Se for positivo, verifique se é maior que 100. Se for negativo, verifique se é menor que -100.
    1. Verifique se um aluno passou de ano. As notas finais de três matérias devem ser todas maiores ou iguais a 6. Caso seja, verifique se a média é maior ou igual a 7.

</details>
