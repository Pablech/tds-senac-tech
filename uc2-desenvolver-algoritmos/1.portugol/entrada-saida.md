# Entrada e Saída

Entrada e Saída (E/S) é um conceito fundamental na computação que descreve:
- **Entrada**: Inserção de dados em um sistema (ex: teclado, arquivos, sensores).
- **Saída**: Obtenção de resultados processados pelo sistema (ex: tela, impressora, arquivos).

---

## funções básicas de e/s
### entrada de dados
Permite que algoritmos recebam informações externas (do usuário ou outros dispositivos) e as armazenem em **variáveis**. Exemplos de dados capturados:
- Nomes, idades, valores numéricos
- Opções de menus, configurações

### saída de dados
Exibe informações processadas pelo algoritmo, como:
- Resultados de cálculos
- Mensagens para o usuário
- Conteúdo de variáveis

---

## funções abordadas nesta seção
1. [`escreva`](#escreva) - Exibe dados na saída padrão
2. [`leia`](#leia) - Captura dados da entrada padrão
3. [`limpa`](#limpa) - Limpa o buffer de entrada/saída

---
Aqui está a revisão do texto com melhorias de clareza e organização:

---

## função `escreva`
A função `escreva` é utilizada para exibir informações na saída padrão (console), sendo fundamental para interação com o usuário.

### sintaxe básica
```portugol
escreva(<conteúdo1>, <conteúdo2>, ..., <conteúdoN>)
```

### características principais:
1. **Textos Literais**
    - Devem estar entre aspas duplas:
    ```portugol
    escreva("Texto fixo exibido ao usuário")
    ```

2. **Valores de Variáveis**
    - Exibidos sem aspas:
    ```portugol
    inteiro idade = 30
    escreva(idade)  // exibe: 30
    ```

3. **Múltiplos Elementos**
    - Separe por vírgulas para exibir em sequência:
    ```portugol
    cadeia nome = "Maria"
    escreva("Nome: ", nome, "\nIdade: ", 28)
    ```

### caracteres especiais para formatação
| Caractere | Função               | Exemplo              | Saída               |
|-----------|----------------------|----------------------|---------------------|
| `\n`      | Quebra de linha      | `"Linha 1\nLinha 2"` | Linha 1<br>Linha 2  |
| `\t`      | Tabulação (4 espaços)| `"Nome:\tJoão"`      | Nome:    João       |

---

### exemplo completo
```portugol
programa
{
    funcao inicio()
    {
        inteiro valor = 5
        real media = 7.5
        cadeia curso = "Técnico em Desenvolvimento de Sistemas"

        // exibição simples
        escreva("Bem-vindo ao sistema!\n\n")

        // exibição de variáveis e cálculos
        escreva("Valor: ", valor, "\tDobro: ", valor * 2, "\n")
        escreva("Média final: ", media, "\n")

        // formatação complexa
        escreva("Curso:\t\t", curso, "\n")
        se(media >= 7){
            escreva("Status:\t\tAprovado")
        }
        senao{
            escreva("Status:\t\tReprovado")
        }
    }
}
```

**Saída gerada:**
```
Bem-vindo ao sistema!

Valor: 5    Dobro: 10
Média final: 7.5
Curso:      Técnico em Desenvolvimento de Sistemas
Status:     Aprovado
```

### boas práticas
1. Use `\n` para separar seções lógicas de texto
2. Utilize `\t` para alinhar dados tabulares
3. Combine textos fixos e variáveis para mensagens claras

---

## função `leia`
A função `leia` é utilizada para capturar dados digitados pelo usuário via teclado e armazená-los em variáveis. É essencial para criar programas interativos que processam informações em tempo real.

### sintaxe básica
```portugol
leia(<variável_1>, <variável_2>, ..., <variável_n>)
```

### características principais:
1. **Armazenamento Direto**
    - Os valores digitados são atribuídos diretamente às variáveis especificadas
    ```portugol
    inteiro idade
    leia(idade)  // armazena o valor digitado na variável 'idade'
    ```

2. **Múltiplas Entradas**
    - Aceita múltiplas variáveis separadas por vírgulas
    ```portugol
    cadeia nome, sobrenome
    leia(nome, sobrenome)  // captura dois valores em sequência
    ```

3. **Tipagem de Dados**
    - A entrada deve corresponder ao tipo da variável:

        | Tipo Variável | Entrada Válida | Exemplo |
        |--------------|----------------|---------|
        | `inteiro`    | Números inteiros | `42` |
        | `real`       | Números decimais | `3.14` |
        | `cadeia`     | Texto (com/sem espaços) | `"Ana Maria"` |
        | `caractere`  | Único caractere | `'A'` |

### boas práticas
1. **Sempre declare variáveis antes de usar**
    ```portugol
    real nota  // Declaração obrigatória
    leia(nota) // Uso válido
    ```

2. **Combine com `escreva` para instruções claras**
    ```portugol
    escreva("Digite seu ano de nascimento: ")
    leia(ano_nascimento)
    ```

3. **Formato de Entrada Múltipla**
    - Para múltiplas variáveis em um único `leia`, separe os valores com Enter:
    ```portugol
    // Usuário digita: 7.5 8.0 9.3
    real n1, n2, n3
    leia(n1, n2, n3)
    ```

### exemplo completo
```portugol
programa
{
    funcao inicio()
    {
        inteiro idade
        real salario, nota_1, nota_2, nota_3
        cadeia nome_completo

        // entrada única
        escreva("Informe sua idade: ")
        leia(idade)

        // entrada decimal
        escreva("Informe seu salário: R$ ")
        leia(salario)

        // entrada textual
        escreva("Digite seu nome completo: ")
        leia(nome_completo)

        // entrada múltipla
        escreva("Digite três notas (separadas por Enter): ")
        leia(nota_1, nota_2, nota_3)

        // saída formatada
        escreva("\n----- Dados Informados -----\n")
        escreva("Nome: ", nome_completo, "\n")
        escreva("Idade: ", idade, " anos\n")
        escreva("Salário: R$ ", salario, "\n")
        escreva("Média: ", (nota_1 + nota_2 + nota_3)/3)
    }
}
```

**Fluxo de Execução:**
```
Informe sua idade: 25
Informe seu salário: R$ 3500.50
Digite seu nome completo: Maria Silva
Digite três notas (separadas por Enter): 8.5
7.9
9.2

----- Dados Informados -----
Nome: Maria Silva
Idade: 25 anos
Salário: R$ 3500.50
Média: 8.533333
```

### consideração importante
- A função não valida automaticamente tipos de dados. Se o usuário digitar texto onde se espera número, ocorrerá erro de execução

---
Aqui está a revisão do texto com aprimoramentos na organização e clareza:

---

## função `limpa`

A função `limpa` é utilizada para **apagar todo o conteúdo exibido no console**, proporcionando uma experiência mais organizada ao usuário. É particularmente útil em:
- Aplicações com múltiplas interações
- Menus iterativos
- Cenários onde informações temporárias devem ser removidas

### características principais
| Aspecto          | Descrição                                 |
|------------------|-------------------------------------------|
| Parâmetros       | Não requer nenhum argumento               |
| Valor de retorno | Nenhum                                    |
| Comportamento    | Apaga todo o histórico do console         |

### sintaxe
```portugol
limpa()  // remove todas as mensagens anteriores do terminal
```

### exemplo prático
```portugol
programa
{
    funcao inicio()
    {
        cadeia nome

        // fase de entrada de dados
        escreva("=== CADASTRO DE USUÁRIO ===\n")
        escreva("Qual é o seu nome? ")
        leia(nome)

        // limpeza do console antes do resultado
        limpa()

        // exibição final organizada
        escreva("■ Sistema de Boas-Vindas ■\n")
        escreva("Olá, ", nome, "!\n")
        escreva("Seu cadastro foi concluído com sucesso.")
    }
}
```

**Fluxo de execução:**
1. Exibe formulário de cadastro
2. Coleta o nome do usuário
3. Limpa toda a interface anterior
4. Mostra mensagem final personalizada

### boas práticas
1. Use antes de exibir novos menus ou interfaces
2. Combine com `escreva` formatado para transições suaves
3. Evite usar excessivamente - pode confundir usuários

```portugol
// uso ideal em menu iterativo
enquanto (verdadeiro) {
    limpa()
    escreva("=== MENU PRINCIPAL ===\n")
    escreva("1. Novo jogo\n2. Carregar\n3. Configurações\n4. Sair\n")
    // ... lógica do menu ...
}
```
