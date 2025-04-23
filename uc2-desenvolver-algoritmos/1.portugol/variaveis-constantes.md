# Declarações
Os programas precisam armazenar dados temporariamente para processamento e interação. Declarações definem identificadores, tipos e características de elementos como variáveis, constantes e funções, informando ao compilador sua existência.

Nesta seção, abordaremos:
1. [Declaração de Variáveis](#declaração-de-variáveis)
2. [Atribuições](#atribuicoes)

---

## declaração de variáveis
Variáveis são "apelidos" para posições de memória RAM, onde dados são armazenados temporariamente. Cada posição tem um **endereço único** e capacidade específica (dependendo do tipo de dado).

### sintaxe básica
```portugol
// declaração sem inicialização
inteiro idade_usuario
real altura
cadeia nome

// declaração com inicialização
logico ativo = verdadeiro
caracter inicial = 'A'

// múltiplas variáveis do mesmo tipo
real peso, imc, taxa_metabolica
```

### escopo
- **Variáveis globais**: Declaradas fora de funções, existem durante toda a execução do programa.
- **Variáveis locais**: Declaradas dentro de funções/blocos, existem apenas em seu escopo.

### exemplo prático
```portugol
programa
{
    // variável global
    inteiro contador_global = 0

    funcao inicio()
    {
        // Variáveis locais
        inteiro anos_para_100
        real altura_usuario = 1.82
        cadeia nome_usuario = "João"

        // Cálculo usando variáveis
        anos_para_100 = 100 - 25
        escreva(nome_usuario, " terá 100 anos em ", anos_para_100, " anos.\n")
    }
}
```

---

## atribuições
Atribuições associam valores a variáveis usando o operador `=`. O valor deve ser compatível com o tipo da variável.

### operadores de atribuição
| Operador | Equivalente      | Descrição              |
| :------: | :--------------- | :--------------------- |
| `+=`     | `var = var + x`  | Incremento com adição  |
| `-=`     | `var = var - x`  | Decremento com subtração |
| `*=`     | `var = var * x`  | Atribuição com multiplicação |
| `/=`     | `var = var / x`  | Atribuição com divisão |
| `++`     | `var = var + 1`  | Incremento unitário    |
| `--`     | `var = var - 1`  | Decremento unitário    |

### exemplo
```portugol
programa
{
    funcao inicio()
    {
        inteiro a = 10
        real b = 3.5

        // atribuição com operador composto
        a += 5      // equivalente a: a = a + 5 → 15
        b *= 2      // equivalente a: b = b * 2 → 7.0

        // incremento unitário
        a++         // a = 16
    }
}
```
