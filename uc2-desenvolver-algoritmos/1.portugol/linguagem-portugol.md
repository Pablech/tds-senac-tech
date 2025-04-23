# Linguagem Portugol

Uma linguagem de programação é um método padronizado para comunicar **instruções** a um computador. É um conjunto de **regras sintáticas e semânticas** que definem como um programa deve ser escrito e interpretado. Ela permite que um programador especifique:
- Quais dados serão processados
- Como serão armazenados/transmitidos
- Quais ações o computador deve executar em diferentes cenários

O **Portugol** é uma pseudolinguagem de programação baseada em português, inspirada na sintaxe do C. Seu objetivo é facilitar o aprendizado de lógica de programação para iniciantes.

---

## sintaxe e semântica do portugol
O Portugol segue regras específicas de estrutura e significado, validadas por compiladores como:
- [Portugol Studio](https://univali-lite.github.io/Portugol-Studio/)
- [Portugol Webstudio](https://portugol.dev/)

Essas ferramentas verificam erros e garantem que o código siga as especificações da linguagem.

---

## estrutura básica
Todo programa em Portugol segue este esqueleto:
```portugol
// declaração obrigatória do programa
programa
{
    // área para inclusão de bibliotecas
    inclua biblioteca Matematica --> mat

    // declarações globais (variáveis/constantes)
    inteiro contador = 0
    const real PI = 3.1415923565

    // declaração de funções
    funcao real calcula_area_circulo(real raio)
    {
        retorne PI * raio * raio
    }

    // função principal (obrigatória)
    funcao inicio()
    {
        // variáveis locais
        real raio_circulo = 5.0

        // chamada de função
        real area = calcula_area_circulo(raio_circulo)

        // saída de dados
        escreva("Área do círculo: ", area)
    }
}
```

### componentes principais
1. `programa`: Declaração obrigatória que inicia o código.
2. **Bloco principal**: Delimitado por chaves `{}`, contém:
    - Inclusões de bibliotecas
    - Variáveis/constantes globais
    - Declarações de funções
3. `funcao inicio()`: Ponto de entrada do programa (equivalente ao `main()` em C).
4. **Escopo**:
    - Globais: Visíveis em todo o programa
    - Locais: Restritas ao bloco onde foram declaradas

### boas práticas
- Use comentários `//` para explicações breves e `/* */` para blocos longos
- Nomeie variáveis/funções com termos descritivos (ex: `calcular_media` em vez de `fn1`)
- Siga a indentação correta para melhor legibilidade

Esta estrutura fornece a base para desenvolver algoritmos complexos mantendo a organização do código.
