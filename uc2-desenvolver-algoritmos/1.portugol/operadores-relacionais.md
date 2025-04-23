# Operações Relacionais
As operações relacionais permitem comparar valores e retornam um resultado **lógico** (`verdadeiro` ou `falso`). São essenciais para tomadas de decisão em algoritmos, como verificar se um número é positivo ou negativo.

---

## Operadores Relacionais no Portugol
A tabela abaixo mostra os operadores relacionais e seus símbolos:

| Operação           | Símbolo |
| :----------------: | :-----: |
| Maior que          | `>`     |
| Menor que          | `<`     |
| Maior ou igual a   | `>=`    |
| Menor ou igual a   | `<=`    |
| Igual a            | `==`    |
| Diferente de       | `!=`    |

### exemplos práticos
| Expressão          | Resultado   | Explicação          |
| :----------------: | :---------: | :-----------------: |
| `3 > 4`            | `falso`     | 3 não é maior que 4 |
| `7 != 7`           | `falso`     | 7 é igual a 7       |
| `9 == 10 - 1`      | `verdadeiro`| 9 é igual a 9       |
| `33 <= 100`        | `verdadeiro`| 33 é menor que 100  |
| `6 >= 5 + 1`       | `verdadeiro`| 6 é igual a 6       |
| `5 + 4 <= 11 - 2`  | `verdadeiro`| 9 é igual a 9       |

**Ordem de execução**: Operações aritméticas são resolvidas primeiro, depois as relacionais.

---

## Uso em Estruturas de Controle
As operações relacionais são frequentemente usadas em estruturas de controle para definir condições:

### sintaxe básica
```portugol
// estrutura "se" com operação relacional
se (5 > 3) {
    escreva("Condição verdadeira")
}

// estrutura "para" com operação relacional
para (inteiro i = 0; i < 5; i++) {
    escreva(i, "\n")
}

// estrutura "faca...enquanto"
faca {
    escreva("Executa pelo menos uma vez")
} enquanto (6 < 2)  // condição falsa após a execução
```

---

## Exemplo Completo
```portugol
programa
{
    funcao inicio()
    {
        inteiro a = 5, b = 3

        // comparação com operador >
        se (a > b) {
            escreva("A é maior que B\n")
        }

        // comparação com operador ==
        se (a == b) {
            escreva("A é igual a B\n")
        }

        // comparação com operador >=
        se (a >= b) {
            escreva("A é maior ou igual a B\n")
        }
    }
}

// saída: "A é maior que B" e "A é maior ou igual a B"
```

---

## Precedência de Operadores
A ordem de avaliação das operações é definida pela seguinte tabela:

| Prioridade | Operador         | Nome               | Tipo de Operador       |
| :--------: | :--------------: | :----------------- | :--------------------- |
| 1          | `()`             | Parênteses         | Aritmético             |
| 2          | `*`, `/`, `%`    | Multiplicação, Divisão, Módulo | Aritmético |
| 3          | `+`, `-`         | Soma, Subtração    | Aritmético             |
| 4          | `==`, `>`, `<`, `>=`, `<=`, `!=` | Operadores Relacionais | Relacional |
