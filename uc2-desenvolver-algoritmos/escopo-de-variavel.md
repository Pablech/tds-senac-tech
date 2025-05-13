# Escopo de Variáveis

O escopo de variáveis em C determina onde uma variável pode ser acessada ou modificada no código.

<details>
<summary>Por que C?</summary>
A Linguagem C foi escolhida para demonstrar o funcionamento do escopo de variáveis por ser uma linguagem de programação muito madura e consolidada. Diferente do Portugol, onde o escopo de variáveis é tratado de formas distintas. Dependen da onde está sendo executado.

Por exemplo:
- O seguinte bloco de código irá gerar erro de **variável já declarada** em :
    - [Portugol Studio](https://univali-lite.github.io/Portugol-Studio/);
    - [Portugol Webstudio Mobile](https://erickweil.github.io/portugolweb)

- Mas não irá gerar erro em :
    - [Portugol Webstudio](https://portugol.dev);

```portugol
programa {
    funcao inicio() {
        inteiro i = 10
        para (inteiro i = 0; i < 10; i++){
            escreva(i, "\n")
        }
    }
}
```
</details>

---

## 1. Escopo Global
Variáveis declaradas **fora de todas as funções** têm escopo global e são acessíveis em qualquer parte do código após sua declaração.

**Exemplo:**
```c
#include <stdio.h>

int global = 100; // Escopo global

void func() {
    printf("Dentro de func(): %d\n", global); // Acessível
}

int main() {
    printf("Dentro de main(): %d\n", global); // Acessível
    func();
    return 0;
}
```
**Saída:**
```
Dentro de main(): 100
Dentro de func(): 100
```

### Características:
- Acessível em todas as funções.
- Permanece na memória durante toda a execução do programa.
- Uso excessivo pode tornar o código difícil de manter.

## 2. Escopo Local (Função)
Variáveis declaradas **dentro de uma função** são locais a ela e só existem enquanto a função está em execução.

**Exemplo:**
```c
#include <stdio.h>

void func() {
    int local_func = 50; // Escopo local à func()
    printf("Dentro de func(): %d\n", local_func);
}

int main() {
    func();
    // printf("%d\n", local_func); // ERRO: 'local_func' não existe aqui
    return 0;
}
```

### Características:
- Só são acessíveis dentro da função onde foram declaradas.
- São destruídas quando a função termina.
- Parâmetros de função também têm escopo local:
    ```c
    void soma(int a, int b) { // 'a' e 'b' são locais
        printf("%d\n", a + b);
    }
    ```

## 3. Escopo de Bloco
Variáveis declaradas dentro de um bloco `{}` (como em loops, condicionais ou blocos arbitrários) só existem dentro desse bloco.

**Exemplo:**
```c
#include <stdio.h>

int main() {
    int x = 10;

    if (x > 5) {
        int y = 20; // Escopo do bloco if
        printf("Dentro do if: x=%d, y=%d\n", x, y); // y é 20
    }

    // printf("Fora do if: y=%d\n", y); // ERRO: 'y' não existe aqui

    for (int i = 0; i < 3; i++) { // 'i' tem escopo do loop
        printf("%d ", i); // 0 1 2
    }
    // printf("%d", i); // ERRO: 'i' não existe aqui

    return 0;
}
```

### Características:
- Comum em loops (`for`, `while`) e condicionais (`if`, `else`).

## 4. Variáveis Estáticas
Variáveis declaradas com `static` dentro de uma função mantêm seu valor entre chamadas, mas seu escopo ainda é local.

**Exemplo:**
```c
#include <stdio.h>

void contador() {
    static int count = 0; // Preserva o valor entre chamadas
    count++;
    printf("Contador: %d\n", count);
}

int main() {
    contador(); // Contador: 1
    contador(); // Contador: 2
    return 0;
}
```

**Saída:**
```
Contador: 1
Contador: 2
```

### Características:
- Inicializadas apenas uma vez.
- Úteis para preservar estado entre chamadas de função.

## 5. Shadowing (Sombreamento)
Quando uma variável em um escopo interno tem o mesmo nome de uma variável em um escopo externo, a variável interna "esconde" a externa.

#### Exemplo:
```c
#include <stdio.h>

int x = 100; // Global

int main() {
    int x = 10; // Local (sombreia a global)
    printf("x local: %d\n", x); // 10

    {
        int x = 20; // Bloco interno
        printf("x no bloco: %d\n", x); // 20
    }

    printf("x local novamente: %d\n", x); // 10
    return 0;
}
```

**Saída:**
```
x local: 10
x no bloco: 20
x local novamente: 10
```

## 6. Escopo vs. Tempo de Vida
- **Escopo**: Onde a variável é visível.
- **Tempo de Vida**: Por quanto tempo a variável existe na memória.
    - Variáveis locais: Existem apenas durante a execução do bloco.
    - Variáveis estáticas/globais: Existem durante toda a execução do programa.

## 7. Erros Comuns
1. **Acessar variáveis fora do escopo**:
    ```c
    int main() {
        if (1) {
            int var = 5;
        }
        printf("%d", var); // ERRO: 'var' não existe aqui
    }
    ```

2. **Variáveis não inicializadas**:
    ```c
    int main() {
        int x;
        printf("%d", x); // Valor indefinido (lixo da memória)
    }
    ```

## Resumo
| Tipo de Escopo       | Declaração           | Acesso                  | Tempo de Vida         |
|----------------------|----------------------|-------------------------|-----------------------|
| Global               | Fora de funções      | Todo o programa         | Programa inteiro      |
| Local (Função)       | Dentro de uma função | Apenas na função        | Durante a função      |
| Bloco                | Dentro de `{}`       | Apenas no bloco         | Durante o bloco       |
| Estático (em função) | `static` na função   | Apenas na função        | Programa inteiro      |
