# Diferenças entre Portugol e Python

## Tipos de Variáveis
- **Portugol:**
    - **Declaração explícita:** É necessário declarar o tipo da variável antecipadamente.
    - **Tipos básicos:**
        - `inteiro` (números inteiros),
        - `real` (números decimais),
        - `caractere` (texto entre aspas),
        - `logico` (valores `verdadeiro` ou `falso`).
    - **Exemplo:**
        ```portugol
        inteiro idade = 20
        real altura = 1.75
        caractere nome = "Ana"
        logico ativo = verdadeiro
        ```

- **Python:**
    - **Declaração implícita:** O tipo é inferido automaticamente pelo valor atribuído.
    - **Tipos básicos:**
        - `int`, `float`, `str`, `bool`.
    - **Flexibilidade:** Uma variável pode mudar de tipo durante a execução.
    - **Exemplo:**
        ```python
        idade = 20          # int
        altura = 1.75       # float
        nome = "Ana"        # str
        ativo = True        # bool
        ```

**Principais diferenças:**
- Portugol exige declaração de tipo; Python não.
- Em Python, uma variável pode ser reatribuída a um tipo diferente.

## **Operadores Aritméticos**
- **Portugol:**
    - **Operadores:**
        - `+` (adição), `-` (subtração), `*` (multiplicação), `/` (divisão real),
        - `potência` (apenas com uso de biblioteca),
        - `divisão inteira` (não tem),
        - `%` (resto da divisão, ex: `5 % 2 = 1`).
    - **Exemplo:**
        ```portugol
        inteiro a = 5 % 2     // a = 1
        real b = 5 / 2        // b = 2.5
        ```

- **Python:**
    - **Operadores:**
        - `+`, `-`, `*`, `/` (divisão real),
        - `**` (exponenciação, ex: `2 ** 3 = 8`),
        - `//` (divisão inteira, ex: `5 // 2 = 2`),
        - `%` (resto da divisão, ex: `5 % 2 = 1`).
    - **Exemplo:**
        ```python
        a = 5 % 2     # a = 1 (int)
        b = 5 / 2     # b = 2.5 (float)
        ```

**Principais diferenças:**
- Sintaxe para exponenciação (`usando função de biblioteca` vs `**`).
- O Portugol não tem uma forma nativa de realizar a divisão inteira, enquanto o Python usa `//`.
- Em Portugol, a divisão `/` nem sempre retorna `real`.

## **Função para Mostrar Dados na Tela**
- **Portugol (`escreva`):**
    - **Sintaxe:** `escreva("Texto", variavel, ...)`
    - **Funcionamento:** Concatena automaticamente valores de diferentes tipos.
    - **Exemplo:**
        ```portugol
        inteiro x = 10
        escreva("Valor de x: ", x)  // Saída: "Valor de x: 10"
        ```

- **Python (`print`):**
    - **Sintaxe:** `print("Texto", variavel, ...)`
    - **Funcionamento:** Converte valores para string automaticamente e os separa com espaço.
    - **Exemplo:**
        ```python
        x = 10
        print("Valor de x:", x)  # Saída: "Valor de x: 10"
        ```

**Principais diferenças:**
- Em Python, `print` aceita múltiplos argumentos separados por vírgula, assim como o `escreva`.
- Em Portugol, a concatenação é mais direta (não requer conversão explícita).

## **Função para Ler Dados do Usuário**
- **Portugol (`leia`):**
    - **Sintaxe:** `leia(variavel)`
    - **Funcionamento:** Converte automaticamente a entrada para o tipo da variável declarada.
    - **Exemplo:**
        ```portugol
        inteiro idade
        escreva("Digite sua idade: ")
        leia(idade)  // Converte a entrada para inteiro automaticamente.
        ```

- **Python (`input`):**
    - **Sintaxe:** `variavel = input("Mensagem: ")`
    - **Funcionamento:** Sempre retorna uma string (`str`), exigindo conversão explícita.
    - **Exemplo:**
        ```python
        idade = int(input("Digite sua idade: "))  # Conversão manual para inteiro
        ```

**Principais diferenças:**
- Em Portugol, o `leia` ajusta o tipo da entrada conforme a variável declarada.
- Em Python, o `input` retorna uma string, exigindo funções como `int()` ou `float()` para conversão.

## **Operadores Relacionais**
Usados para comparar valores e retornar um resultado lógico (`verdadeiro`/`falso` em Portugol ou `True`/`False` em Python).

- **Portugol:**
    - **Símbolos:**
        - Igualdade: `==`
        - Diferença: `!=`
        - Maior que: `>`
        - Menor que: `<`
        - Maior ou igual: `>=`
        - Menor ou igual: `<=`
    - **Funcionamento:**
        - Retorna um valor do tipo `logico` (`verdadeiro` ou `falso`).
        - Não permite comparações "encadeadas" no Portugol Studio (ex: `5 < x < 10`).
    - **Exemplo:**
        ```portugol
        inteiro a = 10, b = 5
        logico resultado = (a > b)  // resultado = verdadeiro
        escreva(resultado)
        ```

- **Python:**
    - **Símbolos:**
        - Igualdade: `==`
        - Diferença: `!=`
        - Maior que: `>`
        - Menor que: `<`
        - Maior ou igual: `>=`
        - Menor ou igual: `<=`
    - **Funcionamento:**
        - Retorna um valor do tipo `bool` (`True` ou `False`).
        - Permite comparações encadeadas (ex: `5 < x < 10`).
    - **Exemplo:**
        ```python
        a = 10
        b = 5
        resultado = a > b  # resultado = True
        print(resultado)
        ```

**Principais diferenças:**
- Em Python, é possível escrever comparações encadeadas (ex: `5 < x < 10`), enquanto em Portugol é necessário usar operadores lógicos (ex: `(x > 5) e (x < 10)`).
- Os símbolos são idênticos, mas o tipo do resultado é `logico` em Portugol e `bool` em Python.

## **Operadores Lógicos**
Usados para combinar expressões lógicas.

- **Portugol:**
    - **Palavras-chave:**
        - **E lógico:** `e`
        - **OU lógico:** `ou`
        - **NÃO lógico:** `nao`
    - **Funcionamento:**
        - Avaliação de curto-circuito (ex: se o lado esquerdo de `e` for `falso`, o lado direito não é avaliado).
        - Prioridade: `nao` > `e` > `ou`.
    - **Exemplo:**
        ```portugol
        logico condicao1 = verdadeiro, condicao2 = falso
        se (condicao1 e condicao2) entao
            escreva("Ambas são verdadeiras.")
        senao
            escreva("Pelo menos uma é falsa.")  // Esta mensagem será exibida
        fimse
        ```

- **Python:**
    - **Palavras-chave:**
        - **E lógico:** `and`
        - **OU lógico:** `or`
        - **NÃO lógico:** `not`
    - **Funcionamento:**
        - Avaliação de curto-circuito (ex: se o lado esquerdo de `and` for `False`, o lado direito não é avaliado).
        - Prioridade: `not` > `and` > `or`.
    - **Exemplo:**
        ```python
        condicao1 = True
        condicao2 = False
        if condicao1 and condicao2:
            print("Ambas são verdadeiras.")
        else:
            print("Pelo menos uma é falsa.")  # Esta mensagem será exibida
        ```

**Principais diferenças:**
- **Sintaxe:**
    - Portugol usa palavras em português (`e`, `ou`, `nao`).
    - Python usa palavras em inglês (`and`, `or`, `not`).
- **Comparações encadeadas:**
    - Em Python, operadores lógicos são usados para combinar condições, assim como em Portugol.

## Estruturas Condicionais

### `se`, `senao se`, `senao` vs `if`, `elif`, `else`
- **Portugol:**
    - **Sintaxe:**
        - Usa `se`, `senao se`, e `senao` para controle de fluxo.
        - **Blocos** são delimitados por chaves `{}`.
        - **Indentação** não é obrigatória, mas é uma boa prática para legibilidade.
    - **Exemplo:**
        ```portugol
        inteiro nota = 85

        se (nota >= 90) {
            escreva("A")
        }
        senao se (nota >= 80) {
            escreva("B")
        }
        senao{
            escreva("C")
        }
        ```

- **Python:**
    - **Sintaxe:**
        - Usa `if`, `elif`, e `else`.
        - **Blocos** são definidos por **indentação obrigatória** (geralmente 4 espaços).
        - Não há delimitadores de fim de bloco (como chaves `{}`).
    - **Exemplo:**
        ```python
        nota = 85

        if nota >= 90:
            print("A")
        elif nota >= 80:
            print("B")
        else:
            print("C")
        ```

### `escolha caso` vs `match case`
- **Portugol:**
    - **Sintaxe:**
        - Usa `escolha` para verificar múltiplos casos.
        - Cada `caso` é seguido de um valor fixo.
        - `caso contrario` funciona como o padrão (equivalente a `default` em outras linguagens).
        - Requer `pare` para evitar execução em cascata (similar ao `break` em C).
    - **Exemplo:**
        ```portugol
        inteiro dia = 3
        escolha (dia){
            caso 1:
                escreva("Domingo")
                pare
            caso 2:
                escreva("Segunda")
                pare
            caso contrario:
                escreva("Dia inválido")
        }
        ```

- **Python:**
    - **Sintaxe:**
        - Usa `match` e `case` (introduzido no Python 3.10+).
        - **Não requer `break`**: Não há fall-through (execução em cascata).
        - Permite **pattern matching** avançado (valores, listas, tipos, etc.).
    - **Exemplo:**
        ```python
        dia = 3
        match dia:
            case 1:
                print("Domingo")
            case 2:
                print("Segunda")
            case _:
                print("Dia inválido")
        ```

## Laços de Repetição

### `enquanto` vs `while`
Usados para repetir um bloco de código **enquanto uma condição for verdadeira**.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        enquanto (condição) {
            // Bloco de código
        }
        ```
    - **Funcionamento:**
        - A condição é verificada **antes** de executar o bloco.
        - Se a condição for falsa inicialmente, o bloco não é executado.
    - **Exemplo:**
        ```portugol
        inteiro contador = 0
        enquanto (contador < 5) {
            escreva(contador)
            contador = contador + 1
        }
        // Saída: 0 1 2 3 4
        ```

- **Python:**
    - **Sintaxe:**
        ```python
        while condição:
            # Bloco de código
        ```
    - **Funcionamento:**
        - Funciona de forma idêntica ao `enquanto` do Portugol.
        - Blocos definidos por **indentação** (não há delimitador com chaves `{}`).
    - **Exemplo:**
        ```python
        contador = 0
        while contador < 5:
            print(contador)
            contador += 1
        # Saída: 0 1 2 3 4
        ```

### `para` vs `for`
Usados para iterar sobre uma sequência ou intervalo.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        para (declaracao; teste; incremento) {
            // Bloco de código
        }
        ```
    - **Funcionamento:**
        - Focado em intervalos numéricos.
    - **Exemplo:**
        ```portugol
        para (inteiro i = 0; i < 5; i++) {
            escreva(i)
        }
        // Saída: 0 1 2 3 4
        ```

- **Python:**
    - **Sintaxe:**
        ```python
        for variável in iterável:
            # Bloco de código
        ```
    - **Funcionamento:**
        - Itera sobre **iteráveis** (listas, strings, dicionários, etc.).
        - Para intervalos numéricos, usa-se `range()`.
    - **Exemplo:**
        ```python
        for i in range(0, 5):
            print(i)
        # Saída: 0 1 2 3 4
        ```

### `faca enquanto` vs Equivalente ao Python
Equivalente a um **do-while**: executa o bloco **pelo menos uma vez** antes de verificar a condição.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        faca{
            // Bloco de código
        }enquanto (condição)
        ```
    - **Funcionamento:**
        - O bloco é executado **antes** da verificação da condição.
        - Útil para menus ou validação de entrada.
    - **Exemplo:**
        ```portugol
        inteiro numero
        faca{
            escreva("Digite um número entre 1 e 10: ")
            leia(numero)
        }enquanto (numero < 1 ou numero > 10)
        ```

- **Python:**
    - **Equivalente:**
        - Python **não tem** uma estrutura nativa `do-while`.
        - Pode ser emulado com `while True` e `break`.
    - **Exemplo:**
        ```python
        numero = 0
        while True:
            numero = int(input("Digite um número entre 1 e 10: "))
            if 1 <= numero <= 10:
                break
        ```

## Funções

### **Funções Sem Parâmetro e Sem Retorno**
Funções que executam ações sem receber dados ou retornar valores.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        funcao saudacao(){
            escreva("Olá, mundo!")
        }
        ```
    - **Chamada:**
        ```portugol
        saudacao()  // Saída: "Olá, mundo!"
        ```

- **Python:**
    - **Sintaxe:**
        ```python
        def saudacao():
            print("Olá, mundo!")
        ```
    - **Chamada:**
        ```python
        saudacao()  # Saída: "Olá, mundo!"
        ```

### **Funções Com Parâmetro e Sem Retorno**
Funções que recebem dados como entrada, mas não retornam valores.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        funcao soma(inteiro a, inteiro b){
            escreva(a + b)
        }
        ```
    - **Chamada:**
        ```portugol
        soma(5, 3)  // Saída: 8
        ```

- **Python:**
    - **Sintaxe:**
        ```python
        def soma(a, b):
            print(a + b)
        ```
    - **Chamada:**
        ```python
        soma(5, 3)  # Saída: 8
        ```

### **Funções Sem Parâmetro e Com Retorno**
Funções que retornam um valor sem receber dados de entrada.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        funcao inteiro obter_numero(){
            retorne 42
        }
        ```
    - **Chamada:**
        ```portugol
        inteiro resultado = obter_numero()
        escreva(resultado)  // Saída: 42
        ```

- **Python:**
    - **Sintaxe:**
        ```python
        def obter_numero():
            return 42
        ```
    - **Chamada:**
        ```python
        resultado = obter_numero()
        print(resultado)  # Saída: 42
        ```

### **Funções Com Parâmetro e Com Retorno**
Funções que recebem dados e retornam um valor processado.

- **Portugol:**
    - **Sintaxe:**
        ```portugol
        funcao inteiro multiplicar(inteiro x, inteiro y){
            inteiro resultado = x * y
            retorne resultado
        }
        ```
    - **Chamada:**
        ```portugol
        inteiro total = multiplicar(4, 5)
        escreva(total)  // Saída: 20
        ```

- **Python:**
    - **Sintaxe:**
        ```python
        def multiplicar(x, y):
            return x * y
        ```
    - **Chamada:**
        ```python
        total = multiplicar(4, 5)
        print(total)  # Saída: 20
        ```

---

## Tabela das Principais Diferenças
| **Aspecto**            | **Portugol**                          | **Python**                               |
|-------------------------|---------------------------------------|------------------------------------------|
| **Tipos de variáveis**  | Declaração explícita (ex: `inteiro`). | Tipagem dinâmica (inferência automática).|
| **Exponenciação**       | Somente com uso de biblioteca.        | Usa `**` (ex: `2 ** 3`).                |
| **Divisão inteira**     | Não tem.                              | Usa `//`.                               |
||||
| **Exibição de dados**   | `escreva("Texto", variavel)`.         | `print("Texto", variavel)`.             |
| **Leitura de dados**    | `leia(variavel)` (conversão automática). | `input()` (conversão manual necessária). |
||||
| **Operadores relacionais**| Símbolos iguais (ex: `==`, `>`).      | Símbolos iguais (ex: `!=`, `<=`). |
| **Comparação encadeada**  | Não suportada (necessário `e` lógico).       | Suportada (ex: `5 < x < 10`).            |
| **Operadores lógicos**    | Usa `e`, `ou`, `nao`.                 | Usa `and`, `or`, `not`.                  |
| **Resultado lógico**      | Tipo `logico` (`verdadeiro`/`falso`). | Tipo `bool` (`True`/`False`).            |
||||
| **Estruturas de Controle** |
| **Condicional simples**| `se (condição) { ... }`.            | `if condição: ...` (indentação obrigatória). |
| **Condicional encadeada** | `senao se` e `senao`.              | `elif` e `else`.                         |
| **Múltiplos casos**    | `escolha caso` com `pare`.            | `match case` (sem fall-through).         |
| **Delimitadores**      | Usa chaves `{}`.                     | Usa apenas indentação.         |
| **Flexibilidade**      | Foco em simplicidade educacional.     | Recursos avançados (ternários, pattern matching). |
||||
| **Palavras-chave**     | `escolha`, `caso`, `caso contrario`.  | `match`, `case`, `case _`.     |
| **Fall-through**       | Ocorre sem `pare`.                    | Não ocorre (sem necessidade de `break`). |
| **Funcionalidade**     | Apenas comparação simples de valores. | Suporta **pattern matching** complexo. |
||||
| **Estruturas de Repetição** |
| **Loop condicional**| `enquanto` (verificação antes).        | `while` (mesmo comportamento).           |
| **Delimitadores**  | Requer chaves `{}`.                 | Usa apenas indentação.         |
||||
| **Loop iterativo**  | `para` (intervalos numéricos).         | `for` (iteráveis, incluindo `range()`).  |
| **Flexibilidade**  | Focado em números (intervalos).       | Itera sobre qualquer iterável. |
| **Sintaxe**        | `para (inteiro i=0; i<5; i++)`.                | `for i in range(0, 5)`.        |
||||
| **Loop pós-condicional** | `faca enquanto` (executa primeiro). | Emulado com `while True` e `break`.      |
| **Implementação**  | Nativo.                               | Requer emulação com `while True`. |
||||
| **Funções** |
| **Declaração**                  | `funcao`, `{ ... }`, tipos explícitos. | `def`, indentação, tipos implícitos.     |
| **Parâmetros**                  | Tipos obrigatórios (ex: `inteiro a`). | Sem declaração de tipo.                  |
| **Retorno**                     | `retorne` com tipo declarado.         | `return` sem tipo explícito.             |
| **Flexibilidade**               | Menos flexível (tipos estáticos).     | Mais flexível (tipagem dinâmica).        |
||||

## Exercícios

<details>
<summary>Lista de Exercícios</summary>

### Instruções:
- Resolva cada exercício em **Portugol (Portugol Studio)** e **Python**.
- Compare a sintaxe, estruturas e peculiaridades de cada linguagem.
- Adapte a lógica conforme as diferenças (ex: `leia` vs `input`, `funcao` vs `def`).

---

### Variáveis e Operadores Básicos
1. Declare uma variável inteira com valor 10 e exiba seu valor.
2. Leia um número real do usuário e exiba o dobro dele.
3. Calcule a média de três números inteiros informados pelo usuário.
4. Converta uma temperatura de Celsius para Fahrenheit (F = C * 9/5 + 32).
5. Calcule o resto da divisão de dois números inteiros.
6. Verifique se um número é par ou ímpar usando operadores aritméticos.
7. Calcule a potência de um número (base e expoente informados pelo usuário).
8. Converta horas e minutos para segundos (ex: 2h30min = 9000s).
9. Calcule o preço final de um produto com 15% de desconto.
10. Troque os valores de duas variáveis.

### Operadores Relacionais e Lógicos
11. Verifique se um número está entre 10 e 20.
12. Determine se um ano é bissexto (divisível por 4 e não por 100, exceto se por 400).
13. Valide se uma senha tem entre 6 e 12 caracteres.
14. Verifique se um caractere é uma vogal.
15. Determine se um triângulo é válido (soma de dois lados > terceiro).
16. Valide se um número é positivo, negativo ou zero.
17. Verifique se um número é múltiplo de 3 e 5 ao mesmo tempo.
18. Determine se um número é primo.
19. Verifique se uma data (dia/mês/ano) é válida.
20. Compare duas strings e verifique se são iguais.

### Estruturas Condicionais (`se`, `escolha caso`)
21. Crie um menu de opções (1-Somar, 2-Subtrair, 3-Sair).
22. Classifique um aluno com base na nota (A: >=90, B: >=80, etc).
23. Calcule o IMC e classifique em "Abaixo do peso", "Normal", etc.
24. Converta um número de 1 a 7 para o dia da semana correspondente.
25. Determine o maior entre três números.
26. Calcule o preço do pedido de uma lanchonete (use `escolha caso` para o cardápio).
27. Verifique se um caractere é uma letra, número ou símbolo.
28. Simule uma calculadora com operações básicas (+, -, *, /).
29. Determine se um número é positivo e par.
30. Valide um CPF (apenas a quantidade de dígitos, 11 caracteres).

### Loops (`enquanto`, `para`, `faca enquanto`)
31. Exiba os números de 1 a 10 usando `para`.
32. Calcule o fatorial de um número.
33. Some todos os números pares de 1 a 100.
34. Exiba a tabuada de um número informado pelo usuário.
35. Leia números até que o usuário digite 0 e exiba a soma.
36. Gere a sequência de Fibonacci até o n-ésimo termo.
37. Verifique se um número é palíndromo (ex: 121).
38. Calcule a soma dos dígitos de um número inteiro informado pelo usuário.
39. Encontre o maior número digitado em uma sequência.
40. Simule um caixa eletrônico que repete operações até o usuário sair.

### Funções
41. Crie uma função sem parâmetros que exiba "Hello World!".
42. Crie uma função que receba um nome e exiba "Olá, [nome]!".
43. Crie uma função que retorne o quadrado de um número.
44. Crie uma função que verifique se um número é primo e retorne `verdadeiro`/`falso`.
45. Crie uma função que receba dois números e retorne o maior deles.
46. Crie uma função que converta minutos para horas e minutos (ex: 125min = 2h05min).
47. Crie uma função que inverta uma string (ex: "ola" → "alo").

</details>
