# Operações Lógicas
As operações lógicas permitem combinar valores booleanos (`verdadeiro`/`falso`) e são fundamentais para tomadas de decisão complexas. Embora menos comuns no ensino básico, são essenciais na programação.

## princípios básicos
1. **Requisitos**:
    - Operam exclusivamente com valores lógicos
    - Frequentemente combinadas com [operações relacionais](#operadores-relacionais.md)

2. **Aplicações Típicas**:
    - Validação de múltiplas condições
    - Inversão de estados lógicos
    - Controle de fluxo complexo

## operadores e precedência
| Operador | Nome          | Prioridade | Exemplo              | Resultado    |
|----------|---------------|------------|----------------------|--------------|
| `nao`    | Negação       | 3 (maior)  | `nao (8 < 4)`        | `verdadeiro` |
| `e`      | Conjunção     | 2          | `5 > 3 e 2 < 1`      | `falso`      |
| `ou`     | Disjunção     | 1 (menor)  | `1 > 3 ou 1 <= 1`    | `verdadeiro` |

## ordem de avaliação
### exemplo 1: `nao verdadeiro ou falso`
1. `nao verdadeiro` → `falso`
2. `falso ou falso` → `falso`

### exemplo 2: `verdadeiro e falso ou verdadeiro`
1. `verdadeiro e falso` → `falso`
2. `falso ou verdadeiro` → `verdadeiro`

### boas práticas:
- Use parênteses para explicitamente definir prioridades:
    ```portugol
    (idade >= 18) e (saldo > 1000) ou (autorizacaoParental)
    ```
- Combine com operadores relacionais para condições complexas:
    ```portugol
    (nota >= 7) e (frequencia > 0.75)
    ```

## tópicos abordados
1. [operador `e`](#operador-e) - conjunção lógica
2. [operador `ou`](#operador-ou) - disjunção lógica
3. [operador `nao`](#operador-nao) - negação lógica

---

## operador `e`

O operador `e` (conjunção lógica) exige que **todas as condições sejam verdadeiras** para retornar `verdadeiro`. É fundamental para criar verificações complexas em estruturas condicionais e loops.

### tabela verdade
| Condição A   | Condição B   | A `e` B     |
|--------------|--------------|-------------|
| `verdadeiro` | `verdadeiro` | `verdadeiro`|
| `verdadeiro` | `falso`      | `falso`     |
| `falso`      | `verdadeiro` | `falso`     |
| `falso`      | `falso`      | `falso`     |

### comportamento
- **Curto-circuito**: Em algumas linguagens, se a primeira condição for `falso`, a segunda não é avaliada.
- **Tipos Aceitos**: Opera exclusivamente com valores booleanos (`verdadeiro`/`falso`).

### aplicações práticas
1. **Validação Múltipla**
    ```portugol
    se (idade >= 18 e saldo >= 100.00) {
        escreva("Acesso liberado ao crédito")
    }
    ```

2. **Controle de Fluxo em Loops**
    ```portugol
    inteiro tentativas = 0
    logico senha_correta = falso

    enquanto (tentativas < 3 e nao senha_correta) {
        // Lógica de autenticação
    }
    ```

3. **Combinação com Operadores Relacionais**
   ```portugol
   logico dentro_intervalo = (valor >= 10) e (valor <= 20)
   ```

### exemplo completo
```portugol
programa
{
    funcao inicio()
    {
        // caso 1: ambas condições verdadeiras
        inteiro a = 2, b = 2
        se(a == 2 e b == 2) {
            escreva("Caso 1: Teste positivo\n")  // será executado
        }

        // caso 2: uma condição falsa
        inteiro c = 2, d = 3
        se(c == 2 e d == 2) {
            escreva("Caso 2: Teste positivo\n")  // não será executado
        }

        // caso 3: combinação com operador relacional diferente
        inteiro g = 2, f = 2
        se(g == 2 e f != 3) {
            escreva("Caso 3: Teste positivo\n")  // será executado
        }
    }
}
```

**Saída Esperada:**
```
Caso 1: Teste positivo
Caso 3: Teste positivo
```

### boas práticas
1. **Parênteses para Prioridade**
    ```portugol
    (tem_habilitacao) e (idade >= 18)
    ```

2. **Separação de Condições Complexas**
    ```portugol
    logico condicao_a = (x > 0)
    logico condicao_b = (y % 2 == 0)
    se (condicao_a e condicao_b) { ... }
    ```

3. **Evite Efeitos Colaterais**
    ```portugol
    // ruim: altera estado durante verificação
    se (contador++ < 5 e arquivo.aberto()) { ... }

    // bom: separa verificação e efeito
    logico dentro_limite = (contador < 5)
    contador++
    se (dentro_limite e arquivo.aberto()) { ... }
    ```

### casos especiais
- **Valores Não Booleanos**: Em Portugol, é possivel usar números e textos para testes:
    ```portugol
    se (10 e verdadeiro) {
        escreva("Teste verdadeiro")
    }

    se (0 e verdadeiro) {
        escreva("Teste falso")
    }
    ```

    Isso acontece pois o `0` é interpretado como `falso` enquanto que outros números são interpretados como `verdadeiro`.

    O mesmo acontece com os tipos `caracter` e `cadeia` (com exceção).

    ```portugol
    // teste com cadeia
    se ("10" e verdadeiro) {
        escreva("Teste verdadeiro")
    }
    se ("" e verdadeiro) {
        escreva("Teste falso")
    }

    // teste com caracter
    se ("1" e verdadeiro) {
        escreva("Teste verdadeiro")
    }
    // gera erro pois não é possível um caracter vazio
    se ('' e verdadeiro) {
        escreva("Erro de execução")
    }
    ```

---

## operador `ou`

O operador `ou` (disjunção lógica) retorna `verdadeiro` se **pelo menos uma das condições** for verdadeira. É essencial para criar verificações flexíveis onde múltiplas condições podem ser aceitáveis.

### tabela verdade
| Condição A   | Condição B   | A `ou` B    |
|--------------|--------------|-------------|
| `verdadeiro` | `verdadeiro` | `verdadeiro`|
| `verdadeiro` | `falso`      | `verdadeiro`|
| `falso`      | `verdadeiro` | `verdadeiro`|
| `falso`      | `falso`      | `falso`     |

### comportamento
- **Curto-circuito**: Em muitas implementações, se a primeira condição for `verdadeiro`, a segunda não é avaliada.
- **Tipos Aceitos**: Opera exclusivamente com valores booleanos (`verdadeiro`/`falso`).

### aplicações práticas
1. **Validação de Alternativas**
    ```portugol
    se (eh_vip ou idade >= 65) {
        escreva("Acesso à fila prioritária")
    }
    ```

2. **Controle de Fluxo Flexível**
    ```portugol
    logico eh_ativo = verdadeiro
    inteiro tentativas = 0

    enquanto (eh_ativo ou tentativas < 5) {
        // Lógica de reconexão
    }
    ```

3. **Combinação de Critérios**
    ```portugol
    logico tem_acesso = (nivel_acesso >= 3) ou (eh_admin)
    ```

### exemplo completo
```portugol
programa
{
    funcao inicio()
    {
        // caso 1: ambas condições verdadeiras
        inteiro a = 2, b = 2
        se(a == 2 ou b == 2) {
            escreva("Caso 1: Teste positivo\n")  // executado
        }

        // caso 2: uma condição verdadeira
        inteiro c = 2, d = 3
        se(c == 2 ou d == 2) {
            escreva("Caso 2: Teste positivo\n")  // executado (c == 2)
        }

        // caso 3: ambas condições falsas
        inteiro e = 5, f = 7
        se(e == 2 ou f == 2) {
            escreva("Caso 3: Teste positivo\n")  // não executado
        }
    }
}
```

**Saída Esperada:**
```
Caso 1: Teste positivo
Caso 2: Teste positivo
```

### boas práticas
1. **Hierarquia de Condições**
    ```portugol
    (eh_emergencia) ou (autorizacao_gerente e risco_baixo)
    ```

2. **Separação para Legibilidade**
    ```portugol
    logico condicao_a = (velocidade > 120)
    logico condicao_b = (tem_multa_pendente)
    se (condicao_a ou condicao_b) {
        aplicar_multa()
    }
    ```

3. **Evite Redundâncias**
    ```portugol
    // ruim: condição repetida
    se (x > 0 ou x < 0) { ... }

    // bom: equivalente simplificado
    se (x != 0) { ... }
    ```

---

### Casos Especiais
- **Valores Não Booleanos**: Os mesmos casos da conjunção lógica se aplicam à [disjunção lógica](#casos-especiais).

---

## operador `nao`

O operador `nao` (negação lógica) inverte o valor booleano de uma expressão. É fundamental para criar condições inversas e simplificar verificações complexas.

### tabela verdade
| Condição   | `nao` Condição  |
|------------|-----------------|
| `verdadeiro` | `falso`       |
| `falso`      | `verdadeiro`  |

### comportamento
- **Unário**: Opera sobre um único operando
- **Precedência**: Maior prioridade entre operadores lógicos
- **Aplicações Comuns**:
    - Inversão de flags booleanas
    - Simplificação de condições negadas
    - Validação de estados opostos

### sintaxe e uso
```portugol
// negação direta
se (nao falso) {
    // bloco sempre executado
}

// combinação com operadores relacionais
inteiro x = 5
enquanto (nao (x == 0)) {
    x-- // decrementa até x atingir 0
}

// negação de expressões complexas
logico condicao = (idade >= 18) e (tem_documento)
logico acesso_negado = nao condicao
```

### exemplo completo
```portugol
programa
{
    funcao inicio()
    {
        // caso 1: inversão de variável booleana
        logico sistema_bloqueado = falso
        se(nao sistema_bloqueado) {
            escreva("Sistema operacional liberado\n")  // executado
        }

        // caso 2: negação de operação relacional
        inteiro a = 2, b = 3
        se(nao (a + b > 7)) {  // equivalente a (a + b <= 7)
            escreva("Soma dentro do limite seguro\n")  // 5 <= 7 → executado
        }

        // caso 3: combinação com outros operadores
        logico tem_acesso = falso
        logico eh_administrador = verdadeiro

        se(nao tem_acesso ou eh_administrador) {
            escreva("Acesso especial concedido\n")  // executado
        }
    }
}
```

**Saída Esperada:**
```
Sistema operacional liberado
Soma dentro do limite seguro
Acesso especial concedido
```

### boas práticas
1. **Parênteses para Clareza**
    ```portugol
    // sem ambiguidade
    logico resultado = nao (x > 5 e y < 3)
    ```

2. **Simplificação de Condições**
    ```portugol
    // em vez de
    se(nao (valor == 0)) {...}

    // use
    se(valor != 0) {...}
    ```

3. **Evite Aninhamento Excessivo**
    ```portugol
    // ruim
    se(nao(nao(nao(condicao)))) {...}

    // bom
    se(nao condicao) {...}
    ```

### casos especiais
- **Valores Não Booleanos**: O valor lógico vai inverter os testes em números e textos:
    ```portugol
    // não vai executar o bloco
    se(nao 10) {...}

    // vai executar o bloco
    se(nao 0) {...}
    ```


## exercícios

<details>
<summary>Lista de Exercícios</summary>

## Fácil

1. Leia dois números inteiros e verifique se ambos são positivos.
2. Leia dois números reais e verifique se pelo menos um deles é maior que 10.
3. Leia dois números e verifique se ambos são múltiplos de 5.
4. Leia a idade de duas pessoas e verifique se ambas têm mais de 18 anos.
5. Leia dois valores reais e verifique se ambos são negativos.
6. Leia um número inteiro e verifique se ele é par ou maior que 100.
7. Leia três números e verifique se pelo menos dois deles são iguais.
8. Leia dois números e verifique se ambos são divisíveis por 3.
9. Leia dois números inteiros e verifique se pelo menos um é ímpar.
10. Leia dois valores reais e verifique se ambos são maiores que 50.
11. Leia uma idade e verifique se a pessoa é criança (menor que 12) ou idosa (maior que 60).
12. Leia um número e verifique se ele é múltiplo de 7 ou 11.
13. Leia dois valores e verifique se a média deles é maior que 6.
14. Leia três números e verifique se todos estão no intervalo entre 0 e 100.
15. Leia um número e verifique se ele é maior que 0 e menor que 100.

## Médio

16. Leia dois números inteiros e verifique se ambos são divisíveis por 2 e 5.
17. Leia dois números reais e verifique se pelo menos um deles é zero.
18. Leia a nota de dois alunos e verifique se ambos passaram (nota >= 7).
19. Leia três números e verifique se a soma deles é maior que 100.
20. Leia dois números e verifique se um é positivo e o outro negativo.
21. Leia um número inteiro e verifique se ele é ímpar e maior que 50.
22. Leia três números e verifique se todos são múltiplos de 4.
23. Leia dois números e verifique se a diferença entre eles é menor que 5.
24. Leia dois valores e verifique se o produto deles é negativo.
25. Leia dois números inteiros e verifique se ambos são divisíveis por 10.
26. Leia dois caracteres e verifique se ambos são iguais.
27. Leia três números e verifique se apenas um deles é par.
28. Leia duas notas e verifique se a média é maior ou igual a 5 e menor que 7.
29. Leia um número real e verifique se ele está fora do intervalo entre -10 e 10.
30. Leia dois números e verifique se a divisão do primeiro pelo segundo é maior que 1.
31. Leia três números e verifique se a soma dos dois maiores é maior que 100.
32. Leia dois números e verifique se ambos são menores que 20 ou maiores que 80.

## Difícil

33. Leia dois números e verifique se a soma deles é par.
34. Leia dois números e verifique se a divisão inteira do primeiro pelo segundo é par.
35. Leia três notas e verifique se todas são maiores que 6.
36. Leia um número e verifique se ele não é divisível nem por 2 nem por 3.
37. Leia dois números inteiros e verifique se ambos são diferentes de zero.
38. Leia três números e verifique se pelo menos um é negativo.
39. Leia dois números reais e verifique se pelo menos um deles é diferente de 0.
40. Leia três números e verifique se todos são iguais.
41. Leia dois números e verifique se o primeiro é o dobro do segundo.
42. Leia dois números e verifique se a multiplicação deles é par e maior que 100.
43. Leia duas idades e verifique se pelo menos uma é de maior (>=18).
44. Leia três números e verifique se nenhum deles é menor que 0.
45. Leia dois números e verifique se ambos são positivos e a soma é menor que 100.
46. Leia um caractere e verifique se ele é diferente de espaço (' ').
47. Leia dois números inteiros e verifique se ambos são divisíveis por 6.
48. Leia dois números reais e verifique se o módulo da diferença é menor que 5.
49. Leia dois números e verifique se pelo menos um deles é múltiplo de 9.
50. Leia cinco números inteiros e verifique quem é o maior, o menor e o médio.
    ```portugol
    programa {
        inclua biblioteca Util
        funcao inicio() {
            inteiro n1, n2, n3, n4, n5, maior, menor, medio, s_maior, s_menor
            n1 = Util.sorteia(0,100)
            n2 = Util.sorteia(0,100)
            n3 = Util.sorteia(0,100)
            n4 = Util.sorteia(0,100)
            n5 = Util.sorteia(0,100)

            escreva("n1 : ", n1, "\nn2 : ", n2, "\nn3 : ", n3, "\nn4 : ", n4, "\nn5 : ", n5)

            maior = n1
            se (maior < n2)
                maior = n2
            se (maior < n3)
                maior = n3
            se (maior < n4)
                maior = n4
            se (maior < n5)
                maior = n5

            menor = n1
            se (menor > n2)
                menor = n2
            se (menor > n3)
                menor = n3
            se (menor > n4)
                menor = n4
            se (menor > n5)
                menor = n5

            se (maior != n1)
                s_maior = n1
            senao
                s_maior = n2

            se (n1 < maior e s_maior < n1)
                s_maior = n1
            se (n2 < maior e s_maior < n2)
                s_maior = n2
            se (n3 < maior e s_maior < n3)
                s_maior = n3
            se (n4 < maior e s_maior < n4)
                s_maior = n4
            se (n5 < maior e s_maior < n5)
                s_maior = n5

            se (menor != n1)
                s_menor = n1
            senao
                s_menor = n2

            se (n1 > menor e s_menor > n1)
                s_menor = n1
            se (n2 > menor e s_menor > n2)
                s_menor = n2
            se (n3 > menor e s_menor > n3)
                s_menor = n3
            se (n4 > menor e s_menor > n4)
                s_menor = n4
            se (n5 > menor e s_menor > n5)
                s_menor = n5

            escreva("\no maior eh : ", maior)
            escreva("\no menor eh : ", menor)
            medio = n1+n2+n3+n4+n5 - maior-menor-s_maior-s_menor
            escreva("\no valor do meior eh : ", medio)

            escreva("\n\no segundo maior eh : ", s_maior)
            escreva("\no segundo menor eh : ", s_menor)
        }
    }
    ```

</details>
