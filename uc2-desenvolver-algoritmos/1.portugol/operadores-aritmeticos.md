# Operações Aritméticas
As operações aritméticas são nossas velhas conhecidas da matemática. Em algoritmos, é muito comum utilizarmos operadores aritméticos para realizar cálculos.

Os símbolos usados para os operadores em algoritmos mudam ligeiramente em relação à matemática. A multiplicação, que na matemática é representada por um "×" ou um ponto "·", torna-se um asterisco `*` em algoritmos. Essa mudança evita confusão com o "x" (que pode representar uma variável) e com o ponto decimal em números reais.

A tabela a seguir mostra os operadores utilizados no Portugol e suas prioridades:

| Operação | Símbolo | Prioridade |
| :----: | :----: | :----: |
| Adição | `+` | 1 |
| Subtração | `-` | 1 |
| Multiplicação | `*` | 2 |
| Divisão | `/` | 2 |
| Resto da divisão inteira<br>(Módulo) | `%` | 2 |

A **prioridade** indica qual operação deve ser realizada primeiro em expressões com múltiplas operações. Quanto maior a prioridade, mais cedo a operação é executada.

**Exemplo**:
```portugol
6 + 7 * 9
```
Nesse caso, a multiplicação (`7 * 9`) é realizada antes da adição, pois tem prioridade maior. O resultado será **69**.

### parênteses e ordem de execução
Para alterar a ordem padrão das operações, utilizamos parênteses `()`. Na matemática, usamos colchetes `[]` e chaves `{}`, mas em algoritmos apenas parênteses são válidos. Os parênteses mais internos são resolvidos primeiro.

**exemplo com parênteses**:
```portugol
(6 + 7) * 9  // Resultado = 117
6 + (7 * 9)  // Resultado = 69
```

### tópicos abordados nesta seção
1. [Operação de Adição](#operação-de-adição)
2. [Operação de Subtração](#operação-de-subtração)
3. [Operação de Multiplicação](#operação-de-multiplicação)
4. [Operação de Divisão](#operação-de-divisão)
5. [Operação de Módulo](#operação-de-módulo)

---

## operação de adição
A adição é uma das operações básicas da **aritmética**. Em sua forma mais simples, ela combina dois números (chamados de **termos**, **parcelas** ou **somandos**) em um único número, denominado **soma** ou **total**. A adição de múltiplos números corresponde à repetição sucessiva dessa operação.

### sintaxe
A sintaxe é simples: os operandos são posicionados **separados pelo sinal de adição** (`+`).

### exemplo
```portugol
// exibe o resultado da operação 1 + 5 diretamente
escreva(1 + 5)

// armazena o resultado de 50 + 30 na variável "numero"
real numero = 50 + 30
```
O resultado pode ser atribuído a uma variável ou usado diretamente em comandos como `escreva`.

### propriedades importantes
- **comutatividade**: A ordem das parcelas não altera o resultado.
    Exemplo: `2 + 3 = 5` e `3 + 2 = 5`.
- **associatividade**: O agrupamento das parcelas não afeta o resultado.
    Exemplo: `(2 + 3) + 1 = 6` e `2 + (3 + 1) = 6`.
- **elemento neutro**: O número **0** não altera o resultado.
    Exemplo: `5 + 0 = 5` e `0 + 12 = 12`.
- **fechamento**: A soma de dois números reais resulta sempre em um número real.
- **inverso aditivo**: A soma de um número com seu oposto é zero.
    Exemplos:
    ```portugol
    2 + (-2) = 0       // resultado: 0
    -999 + 999 = 0     // resultado: 0
    ```

### tabela de compatibilidade de tipos
A tabela abaixo define o comportamento da adição entre diferentes tipos de dados no Portugol:

| Operando Esquerdo | Operando Direito | Tipo Resultante | Exemplo                             | Resultado                 |
| :---------------: | :--------------: | :-------------: | :---------------------------------- | :------------------------ |
| `cadeia`          | `cadeia`         | `cadeia`        | `"Oi" + " mundo"`                   | `"Oi mundo"`              |
| `cadeia`          | `caracter`       | `cadeia`        | `"Banan" + 'a'`                     | `"Banana"`                |
| `cadeia`          | `inteiro`        | `cadeia`        | `"Faz um" + 21`                     | `"Faz um 21"`             |
| `cadeia`          | `real`           | `cadeia`        | `"Altura: " + 1.78`                 | `"Altura: 1.78"`          |
| `cadeia`          | `logico`         | `cadeia`        | `"Help bom = " + verdadeiro`        | `"Help bom = verdadeiro"` |
| `caracter`        | `cadeia`         | `cadeia`        | `'P' + "anqueca"`                   | `"Panqueca"`              |
| `caracter`        | `caracter`       | `cadeia`        | `'C' + 'a' + 'd' + 'e' + 'i' + 'a'` | `"Cadeia"`                |
| `inteiro`         | `cadeia`         | `cadeia`        | `22 + " de agosto"`                 | `"22 de agosto"`          |
| `inteiro`         | `inteiro`        | `inteiro`       | `12 + 34`                           | `46`                      |
| `inteiro`         | `real`           | `real`          | `76 + 3.25`                         | `79.25`                   |
| `real`            | `cadeia`         | `cadeia`        | `3.24 + " Kg"`                      | `"3.24 Kg"`               |
| `real`            | `inteiro`        | `real`          | `9.87 + 1`                          | `10.87`                   |
| `real`            | `real`           | `real`          | `9.87 + 0.13`                       | `10.0`                    |
| `logico`          | `cadeia`         | `cadeia`        | `verdadeiro + " amigo"`             | `"verdadeiro amigo"`      |

### exemplo prático
```portugol
programa
{
    funcao inicio()
    {
        inteiro valor

        // exibe o resultado de 5 + 8 (13)
        escreva(5 + 8, "\n")

        // armazena o resultado na variável "valor"
        valor = 5 + 8

        // exibe o valor armazenado (13)
        escreva(valor)
    }
}
```

---

## operação de subtração
A subtração é uma operação aritmética que representa a diferença entre dois valores numéricos: o **minuendo** (valor inicial) e o **subtraendo** (valor a ser removido). Ela equivale à adição por um número de sinal oposto, sendo a operação inversa da adição.

**Representação dos elementos**:
```portugol
 3900   // minuendo
- 700   // subtraendo
-----
 3200   // resultado (diferença)
```

### sintaxe
A sintaxe segue o padrão: `operando_esquerdo - operando_direito`.

### exemplo
```portugol
// exibe o resultado de 1 - 5 diretamente
escreva(1 - 5)  // Resultado: -4

// armazena o resultado de 50 - 30 na variável "numero"
real numero = 50 - 30  // numero = 20.0
```
O resultado pode ser armazenado em uma variável ou usado diretamente em comandos como `escreva`.

### propriedades importantes
- **fechamento**: A diferença entre dois números reais resulta sempre em um número real.
- **ausência de elemento neutro**: Não existe um número `n` tal que, para qualquer real `a`,
  ```portugol
  a - n = a  // Exemplo: 5 - 0 = 5 (funciona apenas no lado esquerdo)
  n - a = a  // 0 - 5 ≠ 5 (não é válido)
  ```
- **resultado zero**: Se minuendo e subtraendo são iguais, a diferença é zero.
  Exemplo: `15 - 15 = 0`.

### tabela de compatibilidade de tipos
A subtração só é válida para tipos numéricos no Portugol:

| Operando Esquerdo | Operando Direito | Tipo Resultante | Exemplo          | Resultado  |
| :---------------: | :--------------: | :-------------: | :--------------- | :--------- |
| `inteiro`         | `inteiro`        | `inteiro`       | `20 - 10`        | `10`       |
| `inteiro`         | `real`           | `real`          | `90 - 0.5`       | `89.5`     |
| `real`            | `inteiro`        | `real`          | `11.421 - 3`     | `8.421`    |
| `real`            | `real`           | `real`          | `12.59 - 24.59`  | `-12.0`    |

### exemplo prático
```portugol
programa
{
    funcao inicio()
    {
        inteiro valor

        // exibe o resultado de 10 - 3 (7)
        escreva(10 - 3, "\n")

        // armazena o resultado na variável "valor"
        valor = 10 - 3

        // exibe o valor armazenado (7)
        escreva(valor)
    }
}
```

---

## operação de multiplicação
A multiplicação é uma operação aritmética que representa a soma repetida de um número (multiplicando) por uma quantidade específica de vezes (multiplicador). O resultado é chamado de **produto**. Os números envolvidos são denominados **fatores**.

**Representação dos elementos**:
```portugol
   3        // multiplicador
 × 7        // multiplicando
-----
  21        // produto (equivalente a 7 + 7 + 7)
```

### sintaxe
A sintaxe segue o padrão: `operando_esquerdo * operando_direito`.

### exemplo
```portugol
// exibe o resultado de 1 * 5 diretamente
escreva(1 * 5)  // resultado: 5

// armazena o resultado de 50 * 30 na variável "numero"
real numero = 50 * 30  // numero = 1500.0
```
O resultado pode ser armazenado em uma variável ou usado diretamente em comandos como `escreva`.

### propriedades importantes
- **comutatividade**: A ordem dos fatores não altera o produto.
    Exemplo: `6 * 3 = 18` e `3 * 6 = 18`.
- **associatividade**: O agrupamento dos fatores não afeta o resultado.
    Exemplo: `(2 * 3) * 4 = 24` e `2 * (3 * 4) = 24`.
- **distributividade**: Permite distribuir a multiplicação sobre a adição.
    Exemplo: `2 * (3 + 4) = (2 * 3) + (2 * 4) = 14`.
- **elemento neutro**: O número **1** não altera o produto.
    Exemplo: `5 * 1 = 5` e `1 * 9 = 9`.
- **elemento inverso**: Multiplicar por **-1** inverte o sinal do número.
    Exemplo: `-1 * 7 = -7` e `-1 * -5 = 5`.
- **fechamento**: O produto de dois números reais resulta sempre em um número real.
- **elemento absorvente**: O número **0** anula o produto.
    Exemplo: `42 * 0 = 0` e `0 * -3.14 = 0`.

### tabela de compatibilidade de tipos
A multiplicação só é válida para tipos numéricos no Portugol:

| Operando Esquerdo | Operando Direito | Tipo Resultante | Exemplo           | Resultado    |
| :---------------: | :--------------: | :-------------: | :---------------- | :----------- |
| `inteiro`         | `inteiro`        | `inteiro`       | `6 * 8`           | `48`         |
| `inteiro`         | `real`           | `real`          | `4 * 1.11`        | `4.44`       |
| `real`            | `inteiro`        | `real`          | `6.712 * 174`     | `1167.888`   |
| `real`            | `real`           | `real`          | `207.65 * 1.23`   | `255.4095`   |

---

### exemplo prático
```portugol
programa
{
    funcao inicio()
    {
        inteiro valor

        // exibe o resultado de 3 * 4 (12)
        escreva(3 * 4, "\n")

        // armazena o resultado na variável "valor"
        valor = 3 * 4

        // exibe o valor armazenado (12)
        escreva(valor)
    }
}
```

---

## operação de divisão
A divisão é a operação aritmética **inversa da multiplicação**. Seu objetivo é repartir um valor (dividendo) em partes iguais, conforme especificado por outro valor (divisor).

### Elementos da Divisão
```portugol
  20       // dividendo
 ÷ 2       // divisor
-----
  10       // quociente
Resto: 0   // parte que não foi dividida
```

### sintaxe
A sintaxe segue o padrão: `dividendo / divisor`.

### exemplo
```portugol
// exibe o resultado de 15 ÷ 5 diretamente
escreva(15 / 5)  // resultado: 3

// armazena o resultado de 50 ÷ 25.6 na variável "numero"
real numero = 50 / 25.6  // numero ≈ 1.953125
```
O resultado pode ser armazenado em uma variável ou usado diretamente em comandos como `escreva`.

### propriedades importantes
- **reversibilidade**: Multiplicando o quociente pelo divisor, obtém-se o dividendo.
    Exemplo:
    ```portugol
    20 / 5 = 4    →    4 * 5 = 20
    ```
- **divisão por 1**: Qualquer número dividido por 1 resulta no próprio número.
    Exemplo:
    ```portugol
    20 / 1 = 20    →    -3.14 / 1 = -3.14
    ```
- **não comutatividade**: A ordem dos operandos altera o resultado.
    Exemplo: `10 / 2 ≠ 2 / 10`.
- **absorção pelo zero**: Divisão por zero é indefinida e gera erro.

### tabela de compatibilidade de tipos
A divisão só é válida para tipos numéricos no Portugol. Resultados inteiros são truncados (não arredondados):

| Operando Esquerdo | Operando Direito | Tipo Resultante | Exemplo          | Resultado      |
| :---------------: | :--------------: | :-------------: | :--------------- | :------------- |
| `inteiro`         | `inteiro`        | `inteiro`       | `5 / 2`          | `2`            |
| `inteiro`         | `real`           | `real`          | `125 / 4.5`      | `≈27.777777`   |
| `real`            | `inteiro`        | `real`          | `785.4 / 3`      | `≈261.8`       |
| `real`            | `real`           | `real`          | `40.351 / 3.12`  | `≈12.9333333`  |

---

### exemplo prático
```portugol
programa
{
    funcao inicio()
    {
        inteiro valor

        // exibe o resultado de 20 ÷ 10 (2)
        escreva(20 / 10, "\n")

        // armazena o resultado na variável "valor"
        valor = 20 / 10

        // exibe o valor armazenado (2)
        escreva(valor)
    }
}
```

---

## operação de módulo
A operação de módulo (ou **resto da divisão inteira**) é utilizada para obter o resto de uma divisão entre dois números inteiros. É especialmente útil para verificar propriedades numéricas, como paridade (se um número é par ou ímpar) ou ciclos matemáticos.

### funcionamento
Dados dois números inteiros `a` (dividendo) e `b` (divisor), `a % b` retorna o resto da divisão de `a` por `b`. Por exemplo:
- `7 % 3 = 1` (pois 7 ÷ 3 = 2 com resto 1)
- `9 % 3 = 0` (pois 9 é divisível por 3)

### sintaxe
A sintaxe segue o padrão: `dividendo % divisor`.

### exemplo
```portugol
// exibe o resto da divisão de 13 por 5 (3)
escreva(13 % 5)

// armazena o resto da divisão de 50 por 4 na variável "numero"
inteiro numero = 50 % 4  // numero = 2
```
O resultado pode ser armazenado em uma variável (inclusive do tipo `real`) ou usado diretamente em comandos como `escreva`.

### propriedades importantes
- **Sinal do Resultado**: O resto tem o **mesmo sinal que o dividendo**.
    Exemplo:
    ```portugol
    (-7) % 3 = -1    // Sinal segue o dividendo (-7)
    7 % (-3) = 1     // Divisor negativo não afeta o sinal do resto
    ```
- **Módulo por 1**: Qualquer número módulo 1 resulta em 0.
    Exemplo: `5 % 1 = 0`.
- **Divisor maior que dividendo**: O resultado é o próprio dividendo.
    Exemplo: `3 % 5 = 3`.
- **Divisão por zero**: Causa erro em tempo de execução.

### tabela de compatibilidade de tipos
A operação de módulo só é válida para operandos do tipo `inteiro` no Portugol:

| Operando Esquerdo | Operando Direito | Tipo Resultante | Exemplo       | Resultado  |
| :---------------: | :--------------: | :-------------: | :------------ | :--------- |
| `inteiro`         | `inteiro`        | `inteiro`       | `45 % 7`      | `3`        |
| `inteiro`         | `inteiro`        | `inteiro`       | `-10 % 3`     | `-1`       |
| `inteiro`         | `inteiro`        | `inteiro`       | `8 % 12`      | `8`        |

### exemplo prático
```portugol
programa
{
    funcao inicio()
    {
        inteiro valor

        // Exibe o resto de 7 % 3 (1)
        escreva(7 % 3, "\n")

        // Armazena o resultado na variável "valor"
        valor = 7 % 3

        // Exibe o valor armazenado (1)
        escreva(valor)
    }
}
```
