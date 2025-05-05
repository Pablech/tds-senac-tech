# Bibliotecas

Em qualquer algoritmo que se deseje elaborar, é possível utilizar um conjunto de funções e comandos já existentes. Esses conjuntos são chamados de **bibliotecas**.

As bibliotecas contêm códigos e dados auxiliares que oferecem serviços a programas de forma independente. Isso permite o **reaproveitamento de código**, além de facilitar a organização do programa de forma **modular**. Existem diversos tipos de bibliotecas, cada uma projetada para resolver um tipo específico de problema, como manipulação de arquivos, operações gráficas, cálculos matemáticos, entrada de dados, entre outros.

## Como importar uma biblioteca

Para utilizar uma biblioteca no Portugol, é necessário **importá-la** no início do programa, antes da função `inicio` e depois da abertura de chaves do `programa`. A sintaxe utiliza as palavras reservadas `inclua biblioteca` seguidas do **nome da biblioteca**. Opcionalmente, é possível atribuir um **apelido (alias)** à biblioteca usando o operador `-->`.

### Sintaxe

```portugol
inclua biblioteca NomeDaBiblioteca
inclua biblioteca NomeDaBiblioteca --> apelido
```

## Bibliotecas disponíveis no Portugol

- `Arquivos`
- `Graficos`
- `Matematica`
- `Mouse`
- `Sons`
- `Teclado`
- [`Texto`](#biblioteca-texto)
- [`Tipos`](#biblioteca-tipos)
- [`Util`](#biblioteca-util)

Cada uma dessas bibliotecas oferece um conjunto de funções relacionadas ao seu domínio. Veja abaixo um exemplo mais completo:

### Exemplo completo com `Matematica` e `Texto`

```portugol
programa
{
    inclua biblioteca Matematica
    inclua biblioteca Texto --> t
    funcao inicio()
    {
        real resultado
        resultado = Matematica.arredondar(Matematica.PI, 5)
        escreva("Valor de PI arredondado: ", resultado, "\n")
        escreva(t.caixa_alta("texto em maiúsculas"))
    }
}
```

---

## Biblioteca `Texto`

Esta biblioteca contém funções para manipulação de texto (dados do tipo `cadeia`).

### Função: `numero_caracteres`

```portugol
funcao inteiro numero_caracteres(cadeia texto)
```

**Descrição**:
Conta o número de **caracteres** existentes em uma cadeia (string).

**Parâmetros**:

* `texto`: a cadeia cujo número de caracteres será contado.

**Retorna**:
O número total de caracteres na cadeia.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Texto
    funcao inicio()
    {
        cadeia frase
        inteiro tamanho

        frase = "Olá, mundo!"
        tamanho = Texto.numero_caracteres(frase)

        escreva("A frase possui ", tamanho, " caracteres.")
    }
}
```

### Função: `obter_caracter`

```portugol
funcao caracter obter_caracter(cadeia cad, inteiro indice)
```

**Descrição**:
Obtém um **caractere** da cadeia (string) a partir do índice especificado.

O índice deve estar entre `0` e o tamanho da cadeia menos 1 (lembrando que a contagem começa em 0).

**Parâmetros**:

* `cad`: a cadeia da qual o caractere será obtido;
* `indice`: o índice do caractere que se deseja obter.

**Retorna**:
O caractere localizado no índice informado.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Texto
    funcao inicio()
    {
        cadeia frase
        caracter letra

        frase = "Portugol"
        letra = Texto.obter_caracter(frase, 0)

        escreva("Primeiro caractere: ", letra)
    }
}
```

---

## Biblioteca `Tipos`

A biblioteca `Tipos` contém funções que permitem **converter** ou **verificar** os tipos de dados no Portugol. Ela é útil para validar e manipular dados dinamicamente durante a execução de programas.

### Função: `cadeia_e_caracter`

```portugol
funcao logico cadeia_e_caracter(cadeia cad)
```

**Descrição**:
Verifica se a cadeia passada representa **um valor do tipo `caracter`**.

**Parâmetros**:

* `cad`: a cadeia a ser verificada.

**Retorna**:
`verdadeiro` se a cadeia representar um valor do tipo `caracter`, caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia valor = "'A'"
        escreva("É caracter? ", Tipos.cadeia_e_caracter(valor)) // falso

        valor = "A"
        escreva("\nÉ caracter? ", Tipos.cadeia_e_caracter(valor)) // verdadeiro
    }
}
```

### Função: `cadeia_e_inteiro`

```portugol
funcao logico cadeia_e_inteiro(cadeia cad, inteiro base)
```

**Descrição**:
Verifica se a cadeia representa **um número inteiro** na base informada (binária, decimal ou hexadecimal).

**Parâmetros**:

* `cad`: a cadeia a ser verificada.
* `base`: a base numérica (2, 10 ou 16).

**Exemplos de bases**:

* **2**: binário → `"1010"`, `"0b1101"`.
* **10**: decimal → `"52"`, `"-34"`.
* **16**: hexadecimal → `"0xFF5AC"`, `"A0B5"`.

> ⚠️ Se a base for diferente de 2, 10 ou 16, ocorre erro de execução.

**Retorna**:
`verdadeiro` se a cadeia representar um número inteiro na base especificada; caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia valor = "0b1101"
        escreva("É inteiro binário? ", Tipos.cadeia_e_inteiro(valor, 2))

        valor = "42"
        escreva("\nÉ inteiro decimal? ", Tipos.cadeia_e_inteiro(valor, 10))

        valor = "0x1A3F"
        escreva("\nÉ inteiro hexadecimal? ", Tipos.cadeia_e_inteiro(valor, 16))
    }
}
```

### Função: `cadeia_e_logico`

```portugol
funcao logico cadeia_e_logico(cadeia cad)
```

**Descrição**:
Verifica se a cadeia representa **um valor do tipo `logico`** (`verdadeiro` ou `falso`).

**Parâmetros**:

* `cad`: a cadeia a ser verificada.

**Retorna**:
`verdadeiro` se a cadeia representar um valor do tipo `logico`; caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia valor = "verdadeiro"
        escreva("É logico? ", Tipos.cadeia_e_logico(valor))
    }
}
```

### Função: `cadeia_e_real`

```portugol
funcao logico cadeia_e_real(cadeia cad)
```

**Descrição**:
Verifica se a cadeia representa **um valor do tipo `real`** (número com parte decimal).

**Parâmetros**:

* `cad`: a cadeia a ser verificada.

**Retorna**:
`verdadeiro` se a cadeia representar um número real; caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia valor = "3.1415"
        escreva("É real? ", Tipos.cadeia_e_real(valor))
    }
}
```

### Função: `caracter_e_inteiro`

```portugol
funcao logico caracter_e_inteiro(caracter car)
```

**Descrição**:
Verifica se o caracter representa **um número inteiro** (entre `'0'` e `'9'`).

**Parâmetros**:

* `car`: o caracter a ser verificado.

**Retorna**:
`verdadeiro` se o caracter for um dígito numérico; caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        caracter c = '7'
        escreva("É digito? ", Tipos.caracter_e_inteiro(c))
    }
}
```

### Função: `caracter_e_logico`

```portugol
funcao logico caracter_e_logico(caracter car)
```

**Descrição**:
Verifica se o caracter pode representar **um valor lógico**. Os valores válidos são:

* `'S'`, `'s'` (sim)
* `'N'`, `'n'` (não)

**Parâmetros**:

* `car`: o caracter a ser verificado.

**Retorna**:
`verdadeiro` se for um dos caracteres válidos; caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        caracter c = 'S'
        escreva("É logico (S/N)? ", Tipos.caracter_e_logico(c))
    }
}
```

### Função: `inteiro_e_caracter`

```portugol
funcao logico inteiro_e_caracter(inteiro int)
```

**Descrição**:
Verifica se o inteiro passado representa **um valor do tipo `caracter`**.

**Parâmetros**:

* `int`: o inteiro a ser verificado.

**Retorna**:
`verdadeiro` se o inteiro representar um caracter válido; caso contrário, `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro codigo = 65
        escreva("É caracter? ", Tipos.inteiro_e_caracter(codigo))
    }
}
```

### Função: `cadeia_para_caracter`

```portugol
funcao caracter cadeia_para_caracter(cadeia valor)
```

**Descrição**:
Converte um valor do tipo `cadeia` para um valor do tipo `caracter`.

**Parâmetros**:

* `valor`: a cadeia a ser convertida.

**Retorna**:
O caracter correspondente.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia texto = "A"
        caracter c = Tipos.cadeia_para_caracter(texto)
        escreva("Caracter convertido: ", c)
    }
}
```

### Função: `cadeia_para_inteiro`

```portugol
funcao inteiro cadeia_para_inteiro(cadeia valor, inteiro base)
```

**Descrição**:
Converte um valor do tipo `cadeia` em um número inteiro, utilizando a **base informada** (2, 10 ou 16).

**Parâmetros**:

* `valor`: a cadeia a ser convertida.
* `base`: a base numérica da conversão:

  * `2`: binário → Ex.: `"0b1001"`, `"0110"`.
  * `10`: decimal → Ex.: `"42"`, `"-8"`.
  * `16`: hexadecimal → Ex.: `"0xFF"`, `"A1B2"`.

> ⚠️ Bases diferentes de 2, 10 ou 16 **geram erro de execução**.

**Retorna**:
Um valor do tipo `inteiro`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia texto = "0b1001"
        inteiro num = Tipos.cadeia_para_inteiro(texto, 2)
        escreva("Número convertido: ", num)

        texto = "42"
        num = Tipos.cadeia_para_inteiro(texto, 10)
        escreva("\nNúmero convertido: ", num)

        texto = "0x1A"
        num = Tipos.cadeia_para_inteiro(texto, 16)
        escreva("\nNúmero convertido: ", num)
    }
}
```

### Função: `cadeia_para_logico`

```portugol
funcao logico cadeia_para_logico(cadeia valor)
```

**Descrição**:
Converte uma cadeia para o tipo `logico`. A cadeia deve conter `verdadeiro` ou `falso` (ou valores equivalentes conforme a sintaxe da linguagem).

**Parâmetros**:

* `valor`: a cadeia a ser convertida.

**Retorna**:
O valor do tipo `logico` correspondente.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia texto = "verdadeiro"
        logico resultado = Tipos.cadeia_para_logico(texto)
        escreva("Valor lógico convertido: ", resultado)
    }
}
```

### Função: `cadeia_para_real`

```portugol
funcao real cadeia_para_real(cadeia valor)
```

**Descrição**:
Converte uma cadeia para o tipo `real` (número com parte decimal).

**Parâmetros**:

* `valor`: a cadeia a ser convertida.

**Retorna**:
O valor convertido para `real`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia texto = "3.1415"
        real pi = Tipos.cadeia_para_real(texto)
        escreva("Número real convertido: ", pi)
    }
}
```

### Função: `caracter_para_cadeia`

```portugol
funcao cadeia caracter_para_cadeia(caracter valor)
```

**Descrição**:
Converte um caracter em uma cadeia de caracteres (string).

**Parâmetros**:

* `valor`: o caracter a ser convertido.

**Retorna**:
Um valor do tipo `cadeia`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        caracter c = 'X'
        cadeia texto = Tipos.caracter_para_cadeia(c)
        escreva("Cadeia convertida: ", texto)
    }
}
```

### Função: `caracter_para_inteiro`

```portugol
funcao inteiro caracter_para_inteiro(caracter valor)
```

**Descrição**:
Converte um caracter (que deve ser um dígito) em um número inteiro.

**Parâmetros**:

* `valor`: o caracter a ser convertido.

**Retorna**:
O valor do tipo `inteiro`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        caracter c = '7'
        inteiro numero = Tipos.caracter_para_inteiro(c)
        escreva("Número convertido: ", numero)
    }
}
```

### Função: `caracter_para_logico`

```portugol
funcao logico caracter_para_logico(caracter valor)
```

**Descrição**:
Converte um caracter para um valor lógico. A conversão segue estas regras:

* `'S'` ou `'s'` → `verdadeiro`
* `'N'` ou `'n'` → `falso`

**Parâmetros**:

* `valor`: o caracter a ser convertido.

**Retorna**:
`verdadeiro` se o caracter for `'S'` ou `'s'`; `falso` se o caracter for `'N'` ou `'n'`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        caracter c = 'n'
        logico resultado = Tipos.caracter_para_logico(c)
        escreva("Valor lógico: ", resultado)
    }
}
```

### Função: `inteiro_para_cadeia`

```portugol
funcao cadeia inteiro_para_cadeia(inteiro valor, inteiro base)
```

**Descrição**:
Converte um valor do tipo `inteiro` em uma `cadeia` (string) utilizando a base numérica especificada.

**Parâmetros**:

* `valor`: o número inteiro a ser convertido.
* `base`: a notação em que o número deve ser representado na cadeia. Os valores possíveis são:
    * `2`: binário (ex.: `0b1001`, `01101001`, `101`).
    * `10`: decimal (ex.: `42`, `-34`, `0`).
    * `16`: hexadecimal (ex.: `0xFF5AC`, `A0B551ce`, `ff00ff`).

⚠️ **Atenção**:
Se a base informada for diferente de `2`, `10` ou `16`, um erro de execução será gerado.

**Retorna**:
Uma `cadeia` representando o valor na base escolhida.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro num = 255

        cadeia binario = Tipos.inteiro_para_cadeia(num, 2)
        escreva("Binário: ", binario, "\n")

        cadeia decimal = Tipos.inteiro_para_cadeia(num, 10)
        escreva("Decimal: ", decimal, "\n")

        cadeia hexadecimal = Tipos.inteiro_para_cadeia(num, 16)
        escreva("Hexadecimal: ", hexadecimal)
    }
}
```

### Função: `inteiro_para_caracter`

```portugol
funcao caracter inteiro_para_caracter(inteiro valor)
```

**Descrição**:
Converte um valor do tipo `inteiro` em um valor do tipo `caracter`.

**Parâmetros**:

* `valor`: o valor a ser convertido.

**Retorna**:
Um valor do tipo `caracter`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro num = 5

        caracter letra = Tipos.inteiro_para_caracter(num)
        escreva("Letra: ", letra)
    }
}
```

### Função: `inteiro_para_logico`

```portugol
funcao logico inteiro_para_logico(inteiro valor)
```

**Descrição**:
Converte um valor do tipo `inteiro` em um valor do tipo `logico`.

**Parâmetros**:

* `valor`: o valor a ser convertido.

**Retorna**:

* `falso` se o valor for menor ou igual a `0`.
* `verdadeiro` se o valor for maior ou igual a `1`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro num = 1

        logico valor = Tipos.inteiro_para_logico(num)
        escreva("Valor lógico : ", valor)

        num = 0

        valor = Tipos.inteiro_para_logico(num)
        escreva("\nValor lógico : ", valor)
    }
}
```

### Função: `inteiro_para_real`

```portugol
funcao real inteiro_para_real(inteiro valor)
```

**Descrição**:
Converte um valor do tipo `inteiro` em um valor do tipo `real`.

**Parâmetros**:

* `valor`: o valor a ser convertido.

**Retorna**:
Um valor do tipo `real`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro num = 5

        real valor = Tipos.inteiro_para_real(num)
        escreva("Valor real : ", valor)
    }
}
```

### Função: `logico_para_cadeia`

```portugol
funcao cadeia logico_para_cadeia(logico valor)
```

**Descrição**:
Converte um valor do tipo `logico` em um valor do tipo `cadeia`.

**Parâmetros**:

* `valor`: o valor lógico a ser convertido.

**Retorna**:
Um valor do tipo `cadeia`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia texto1 = Tipos.logico_para_cadeia(verdadeiro)
        escreva(texto1, "\n")

        cadeia texto2 = Tipos.logico_para_cadeia(falso)
        escreva(texto2)
    }
}
```

### Função: `logico_para_caracter`

```portugol
funcao caracter logico_para_caracter(logico valor)
```

**Descrição**:
Converte um valor do tipo `logico` em um valor do tipo `caracter`.

**Parâmetros**:

* `valor`: o valor lógico a ser convertido.

**Retorna**:

* `'S'` se o valor for `verdadeiro`.
* `'N'` se o valor for `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        caracter letra1 = Tipos.logico_para_caracter(verdadeiro)
        escreva(letra1, "\n")

        caracter letra2 = Tipos.logico_para_caracter(falso)
        escreva(letra2)
    }
}
```

### Função: `logico_para_inteiro`

```portugol
funcao inteiro logico_para_inteiro(logico valor)
```

**Descrição**:
Converte um valor do tipo `logico` em um valor do tipo `inteiro`.

**Parâmetros**:

* `valor`: o valor lógico a ser convertido.

**Retorna**:

* `1` se o valor for `verdadeiro`.
* `0` se o valor for `falso`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro num1 = Tipos.logico_para_inteiro(verdadeiro)
        escreva(num1, "\n")

        inteiro num2 = Tipos.logico_para_inteiro(falso)
        escreva(num2)
    }
}
```

### Função: `real_para_cadeia`

```portugol
funcao cadeia real_para_cadeia(real valor)
```

**Descrição**:
Converte um valor do tipo `real` em um valor do tipo `cadeia`.

**Parâmetros**:

* `valor`: o valor real a ser convertido.

**Retorna**:
Um valor do tipo `cadeia`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        cadeia texto = Tipos.real_para_cadeia(3.1415)
        escreva(texto)
    }
}
```

### Função: `real_para_inteiro`

```portugol
funcao inteiro real_para_inteiro(real valor)
```

**Descrição**:
Converte um valor do tipo `real` em um valor do tipo `inteiro`. Se o valor real tiver parte fracionária, ela é truncada (não arredonda).

**Parâmetros**:

* `valor`: o valor real a ser convertido.

**Retorna**:
Um valor do tipo `inteiro`.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Tipos
    funcao inicio()
    {
        inteiro num1 = Tipos.real_para_inteiro(9.56)
        escreva(num1, "\n")

        inteiro num2 = Tipos.real_para_inteiro(-3.99)
        escreva(num2)
    }
}
```

### Exercícios `Tipos`

<details>
<summary>Lista de Exercícios</summary>

#### **Cadeia é Caracter**
1. Verifique se uma cadeia inserida pelo usuário representa um único caractere.
1. Determine se um caractere digitado é uma vogal (a, e, i, o, u).
1. Converta um caractere minúsculo para maiúsculo (se válido).
1. Identifique se um caractere é uma letra do alfabeto.
1. Verifique se um caractere é um dígito numérico.
1. Valide se um caractere é um símbolo especial (não letra/número).
1. Verifique se um caractere é uma consoante.

#### **Cadeia é Inteiro**
1. Valide se uma cadeia representa um número inteiro válido (ex: "123").
1. Verifique se um número inteiro (em formato de string) é positivo.
1. Converta uma cadeia para inteiro e verifique se é par.
1. Calcule a soma dos dígitos de um número inteiro representado por string.
1. Inverta os dígitos de um número inteiro em formato de string (ex: "123" → "321").
1. Valide se um número inteiro (string) é um palíndromo (ex: "121").
1. Verifique se um número inteiro (string) é primo.
1. Valide se um número inteiro (string) está entre 1 e 100.
1. Multiplique por 2 um número inteiro válido inserido como string.

#### **Cadeia é Lógico**
1. Valide se uma cadeia é "verdadeiro" ou "falso" (caso insensível).
1. Converta a string "verdadeiro" para `verdadeiro` e "falso" para `falso`.
1. Inverta o valor lógico de uma cadeia ("verdadeiro" → "falso" e vice-versa).
1. Verifique se uma cadeia representa "sim" ou "não" e converta para lógico.
1. Valide se uma cadeia é equivalente a "1" (verdadeiro) ou "0" (falso).
1. Combine uma cadeia lógica com uma condição numérica (ex: "verdadeiro" e número > 5).

#### **Cadeia é Real**
1. Valide se uma cadeia representa um número real válido (ex: "3.14").
1. Verifique se um número real (string) é positivo ou negativo.
1. Converta uma cadeia para real e some 5.5 ao resultado.
1. Separe a parte inteira e decimal de um número real em formato de string.
1. Arredonde um número real (string) para duas casas decimais.
1. Valide se um número real (string) é maior que 10.0.
1. Verifique se uma cadeia representa um número em notação científica (ex: "2.5e3").
1. Multiplique por 3 um número real válido inserido como string.
1. Identifique se um número real (string) é um número inteiro (ex: "5.0" → inteiro).
1. Compare duas strings representando números reais e exiba a maior.

#### **Caracter é Inteiro**
1. Verifique se um caractere digitado pelo usuário representa um dígito numérico (0-9).
1. Converta um caractere que representa um dígito (ex: '5') para inteiro e multiplique por 2.
1. Some dois caracteres que representam dígitos (ex: '3' + '5' → 8).
1. Verifique se um caractere é um dígito hexadecimal válido (0-9, A-F, maiúsculo ou minúsculo).
1. Valide se um caractere representa um número inteiro positivo (dígitos de 0 a 9).

#### **Caracter é Lógico**
1. Verifique se um caractere digitado é 'V' (verdadeiro) ou 'F' (falso), considerando maiúsculas.
1. Converta um caractere 'T' (verdadeiro) ou 'F' (falso) para o valor lógico correspondente (case-insensitive).
1. Faça a operação lógica **E** entre dois caracteres ('V' ou 'F') e retorne o resultado como cadeia.
1. Verifique se um caractere é 'S' (sim) ou 'N' (não) e converta para `verdadeiro` ou `falso`.
1. Inverta o valor lógico representado por um caractere ('V' → 'F' e 'F' → 'V').

#### **Inteiro é Caracter**
1. Verifique se um número inteiro digitado corresponde a um código ASCII de um caractere imprimível (32 a 126).
1. Converta um número inteiro (código ASCII) para seu caractere correspondente (ex: 65 → 'A').
1. Valide se um número inteiro está entre 0 e 9 e exiba o dígito correspondente como caractere.
1. Dado um número inteiro entre 1 e 26, gere a letra correspondente do alfabeto (ex: 1 → 'A', 26 → 'Z').
1. Verifique se um número inteiro é o código ASCII de uma vogal (A, E, I, O, U, maiúscula ou minúscula).

#### **Cadeia para Caracter**
1. Converta o primeiro caractere de uma cadeia em um caractere individual (ex: "hello" → 'h').
2. Verifique se uma cadeia tem apenas um caractere e exiba-o. Caso contrário, mostre uma mensagem de erro.
1. Converta o último caractere de uma cadeia em um caractere individual.
1. Exiba o caractere do meio de uma cadeia (se o comprimento for ímpar).
1. Converta uma cadeia de dois caracteres em dois caracteres separados (ex: "AB" → 'A' e 'B').
1. Valide se uma cadeia não está vazia e converta seu primeiro caractere para maiúsculo.
1. Receba uma cadeia e retorne o caractere correspondente à posição informada pelo usuário.

#### **Cadeia para Inteiro**
1. Converta uma cadeia numérica (ex: "42") em inteiro e some 8 ao resultado.
1. Valide se uma cadeia pode ser convertida para inteiro e exiba o resultado ou "inválido".
1. Converta uma cadeia binária (ex: "1010") para seu valor inteiro correspondente.
1. Faça a soma de dois números inteiros fornecidos como strings (ex: "12" + "34" → 46).
    ```portugol
    programa
    {
        inclua biblioteca Tipos
        funcao inicio()
        {
            cadeia n1, n2
            inteiro v1, v2

            escreva("digite o valor de n1 : ")
            leia(n1)
            escreva("digite o valor de n2 : ")
            leia(n2)

            se(Tipos.cadeia_e_inteiro(n1, 10) e Tipos.cadeia_e_inteiro(n2, 10)){
                v1 = Tipos.cadeia_para_inteiro(n1, 10)
                v2 = Tipos.cadeia_para_inteiro(n2, 10)
                escreva(v1, " + ", v2, " -> ", v1 + v2)
            }
            senao{
                escreva("Digite apenas numeros")
            }
        }
    }
    ```
1. Converta uma cadeia hexadecimal válida (ex: "1A") para inteiro.
1. Calcule o fatorial de um número representado por uma cadeia (após conversão).
1. Valide se uma cadeia com sinal (ex: "-123") é um inteiro negativo.
1. Converta uma cadeia com caracteres não numéricos misturados (ex: "12a3") para inteiro, ignorando letras.
1. Receba uma cadeia e retorne a soma de seus dígitos (ex: "123" → 6).
1. Converta uma cadeia em formato de hora (ex: "14:30") para minutos inteiros (ex: 870).

#### **Cadeia para Lógico**
1. Converta a string "verdadeiro" para `verdadeiro` e "falso" para `falso` (case-insensitive).
1. Valide se uma cadeia é "sim" ou "não" e converta para `verdadeiro` ou `falso`.
1. Converta a string "1" para `verdadeiro` e "0" para `falso`.
1. Faça a negação lógica de uma cadeia (ex: "verdadeiro" → `falso`).
1. Combine duas strings lógicas (ex: "verdadeiro" e "falso") usando a operação **E** lógico.
1. Converta uma cadeia que representa um número par (ex: "4") para `verdadeiro`.
1. Valide se uma cadeia está vazia e retorne `verdadeiro` ou `falso`.
1. Converta a string "V" para `verdadeiro` e "F" para `falso` (maiúsculas).
1. Compare duas strings e retorne `verdadeiro` se forem iguais, ignorando maiúsculas/minúsculas.
1. Converta uma cadeia que representa um número maior que 100 (ex: "150") para `verdadeiro`.

#### **Cadeia para Real**
1. Converta uma cadeia com ponto decimal (ex: "3.14") para real e multiplique por 2.
1. Valide se uma cadeia pode ser convertida para real (ex: "12.5" ou "7") e exiba o resultado.
1. Converta uma cadeia em notação científica (ex: "2.5e3") para real.
1. Separe a parte inteira e decimal de uma cadeia real (ex: "5.75" → 5 e 0.75).
1. Arredonde um número real representado por string para o inteiro mais próximo.
1. Converta uma cadeia com vírgula decimal (ex: "3,14") para real (substituindo "," por ".").
1. Calcule a média de dois números fornecidos como strings (ex: "4.5" e "3.2").
1. Valide se uma cadeia real está no intervalo de 0.0 a 1.0.
1. Converta uma cadeia de fração (ex: "3/4") para seu valor real correspondente (0.75).
1. Compare duas strings representando números reais e retorne a maior delas.

#### **Caracter para Cadeia**
1. Converta um caractere digitado pelo usuário em uma cadeia de comprimento 3, repetindo-o três vezes (ex: 'A' → "AAA").
1. Crie uma cadeia que represente o nome de um mês (ex: 'J' → "Janeiro") baseado na primeira letra digitada (considerar apenas meses únicos como Janeiro, Junho, Julho).
1. Transforme um caractere em uma cadeia com seu código ASCII entre colchetes (ex: 'B' → "[66]").
1. Converta um caractere para uma cadeia que represente seu tipo: "letra", "número" ou "símbolo".
1. Monte uma sigla de 3 letras a partir de três caracteres digitados (ex: 'B', 'R', 'A' → "BRA").

#### **Caracter para Inteiro**
1. Converta um caractere que representa um dígito hexadecimal ('0'-'9', 'A'-'F') para seu valor inteiro correspondente (ex: 'B' → 11).
1. Some o código ASCII de um caractere a 100 e exiba o resultado inteiro (ex: 'a' (97) → 197).
1. Converta um caractere minúsculo ('a'-'z') para sua posição no alfabeto (ex: 'c' → 3).

#### **Caracter para Lógico**
1. Converta um caractere 'S' (sim) ou 'N' (não) para `verdadeiro` ou `falso`, ignorando maiúsculas/minúsculas.
1. Valide se um caractere é uma vogal ('a', 'e', 'i', 'o', 'u') e retorne `verdadeiro` ou `falso`.
1. Mapeie o caractere '+' para `verdadeiro` (operação válida) e outros símbolos para `falso`.
1. Converta um caractere que representa um dígito par ('0', '2', ..., '8') para `verdadeiro`.

#### **Inteiro para Cadeia**
1. Converta um número inteiro em uma cadeia que represente seu valor por extenso (ex: 123 → "123").
1. Crie uma cadeia que repita um número inteiro três vezes (ex: 5 → "555").
1. Converta um inteiro em uma cadeia com formatação de moeda (ex: 1000 → "R$ 1000").
1. Transforme um número inteiro em uma cadeia binária (ex: 10 → "1010").
1. Monte uma data no formato "DD/MM/AAAA" a partir de três inteiros (dia, mês, ano).
1. Converta um inteiro em uma cadeia hexadecimal (ex: 255 → "FF").
1. Valide se a string gerada a partir de um inteiro é um palíndromo (ex: 121 → "121" é palíndromo).
1. Crie uma cadeia que concatene um número inteiro com uma mensagem (ex: 3 → "Você tem 3 mensagens").
1. Converta um inteiro negativo em uma cadeia com parênteses (ex: -50 → "(50)").
1. Transforme um inteiro em uma cadeia com até dois zeros à esquerda (ex: 7 → "007").

#### **Inteiro para Caracter**
1. Converta um número inteiro (código ASCII) em seu caractere correspondente (ex: 65 → 'A').
1. Valide se um inteiro está entre 32 e 126 (caracteres imprimíveis) e exiba o caractere ou "inválido".
1. Converta um inteiro entre 1 e 26 em uma letra do alfabeto (ex: 1 → 'A', 26 → 'Z').
1. Transforme um inteiro em um caractere hexadecimal (ex: 15 → 'F').
1. Converta um inteiro em um símbolo de operação matemática (ex: 1 → '+', 2 → '-').

#### **Inteiro para Lógico**
1. Converta um inteiro em `verdadeiro` se for par e `falso` se for ímpar.
1. Valide se um inteiro é positivo e retorne `verdadeiro` ou `falso`.
1. Mapeie 1 para `verdadeiro` e 0 para `falso`, retornando "inválido" para outros valores.
1. Verifique se um inteiro é primo e retorne `verdadeiro` ou `falso`.
1. Converta um inteiro em `verdadeiro` se estiver entre 10 e 20.
1. Retorne `verdadeiro` se o inteiro for múltiplo de 5, senão `falso`.
1. Valide se um inteiro é maior que 100 e retorne `verdadeiro` ou `falso`.
1. Converta um inteiro em `verdadeiro` se for negativo e `falso` se positivo.
1. Retorne `verdadeiro` se o inteiro for divisível por 3 e 7 simultaneamente.
1. Transforme um inteiro em `verdadeiro` se for um quadrado perfeito (ex: 16 → verdadeiro).

#### **Inteiro para Real**
1. Converta um inteiro em real e divida por 2 (ex: 5 → 2.5).
1. Transforme um inteiro em real com duas casas decimais (ex: 7 → 7.00).
1. Converta um inteiro em real negativo (ex: 42 → -42.0).
1. Calcule a média de três inteiros e retorne como real (ex: 3, 4, 5 → 4.0).
1. Converta segundos em horas (ex: 3660 → 1.016666...).
1. Transforme um inteiro em notação científica (ex: 1500 → 1.5e3).
1. Valide se a conversão de um inteiro para real mantém o mesmo valor (ex: 5 → 5.0 → verdadeiro).
1. Converta um inteiro em real e adicione 0.5 (ex: 4 → 4.5).
1. Calcule o valor real de um inteiro em porcentagem (ex: 75 → 0.75).

#### **Lógico para Cadeia**
1. Converta um valor lógico (`verdadeiro`/`falso`) em uma cadeia "SIM" ou "NÃO".
1. Transforme `verdadeiro` em "Ativo" e `falso` em "Inativo".
1. Converta um valor lógico para "Válido" ou "Inválido" em uma mensagem de erro.
1. Crie uma cadeia que represente um valor lógico em inglês ("true" ou "false").
1. Exiba "Liberado" se o valor for `verdadeiro` e "Bloqueado" se for `falso`.
1. Converta `verdadeiro` para "1" e `falso` para "0" em formato de string.
1. Monte uma frase: "O resultado é [valor]" (ex: `verdadeiro` → "O resultado é verdadeiro").
1. Converta `verdadeiro` para "T" e `falso` para "F" em uma cadeia de status.

#### **Lógico para Caracter**
1. Converta `verdadeiro` para 'V' e `falso` para 'F' (maiúsculas).
1. Transforme `verdadeiro` em '1' e `falso` em '0' como caracteres.
1. Mapeie `verdadeiro` para 'S' (sim) e `falso` para 'N' (não).
1. Converta um valor lógico para o caractere 'T' (true) ou 'F' (false) em inglês.
1. Converta `verdadeiro` para 'A' (aberto) e `falso` para 'F' (fechado).

#### **Lógico para Inteiro**
1. Converta `verdadeiro` para 1 e `falso` para 0.
1. Transforme `verdadeiro` em -1 e `falso` em 0.
1. Mapeie `verdadeiro` para 100 e `falso` para 200.
1. Use `verdadeiro` como 5 e `falso` como 10 em uma operação matemática.
1. Valide se o inteiro resultante é par ou ímpar.
1. Converta `verdadeiro` para 255 (cor branca em RGB) e `falso` para 0 (preto).
1. Transforme `verdadeiro` em 999 (código de erro) e `falso` em 0 (sucesso).
1. Use `verdadeiro` para 12 (horas) e `falso` para 0 (meia-noite).
1. Converta `verdadeiro` em um número aleatório entre 1 e 10, e `falso` em 0.
1. Calcule a soma de dois valores lógicos convertidos para inteiros (ex: `verdadeiro` + `falso` → 1 + 0 = 1).

#### **Real para Cadeia**
1. Converta um número real (ex: `3.1415`) em uma cadeia com duas casas decimais (ex: `"3.14"`).
1. Formate um número real como moeda (ex: `2500.99` → `"R$ 2500,99"`).
1. Transforme um número real em notação científica (ex: `0.0045` → `"4.5e-3"`).
1. Converta um número real em uma cadeia com texto (ex: `2.5` → `"O valor é 2.5"`).
1. Substitua o ponto decimal por vírgula (ex: `7.8` → `"7,8"`).
1. Converta um real em string de porcentagem (ex: `0.85` → `"85%"`).
1. Valide se a parte inteira de um número real é par e exiba como string (ex: `5.7` → `"Ímpar"`).
1. Formate um número real para ter exatamente 3 dígitos (ex: `12.3` → `"012.3"`).
1. Converta um número real em palavras (ex: `5.5` → `"cinco vírgula cinco"`).
1. Exiba um número real como uma fração aproximada (ex: `0.75` → `"3/4"`).

#### **Real para Inteiro**
1. Arredonde um número real para o inteiro mais próximo (ex: `3.6` → `4`).
1. Converta a parte inteira de um número real (ex: `4.9` → `4`).
1. Valide se um número real é inteiro (ex: `5.0` → `5`, `5.2` → `inválido`).
1. Calcule o piso (floor) de um número real (ex: `2.9` → `2`).
1. Calcule o teto (ceiling) de um número real (ex: `3.2` → `4`).
1. Converta um número real para inteiro hexadecimal (ex: `15.9` → `15` → `0xF`).
1. Some a parte inteira de dois números reais (ex: `3.2` + `4.7` → `3 + 4 = 7`).
1. Verifique se a parte inteira de um real é um número primo (ex: `7.8` → `verdadeiro`).
1. Converta um número real negativo para inteiro (ex: `-5.9` → `-5`).
1. Multiplique a parte inteira de um real por 3 (ex: `2.5` → `2 * 3 = 6`).

</details>

---

## Biblioteca `Util`

A biblioteca `Util` oferece funções gerais e auxiliares. Um dos destaques dessa biblioteca é a função `sorteia`.

### Função: `sorteia`

```portugol
funcao inteiro sorteia(inteiro minimo, inteiro maximo)
```

**Descrição**:
Sorteia e retorna um número aleatório entre os valores `minimo` e `maximo`, inclusive.

**Parâmetros**:
- `minimo`: o menor número que pode ser sorteado;
- `maximo`: o maior número que pode ser sorteado.

**Retorno**:
Um número inteiro dentro do intervalo especificado.

**Exemplo**:

```portugol
programa
{
    inclua biblioteca Util
    funcao inicio()
    {
        inteiro numero_aleatorio
        numero_aleatorio = Util.sorteia(1, 10)
        escreva("Número sorteado: ", numero_aleatorio)
    }
}
```
