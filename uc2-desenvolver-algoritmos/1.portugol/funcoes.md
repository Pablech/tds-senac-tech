# Funções

## O que é uma função

Uma **função** é um bloco de código que executa uma tarefa específica dentro de um programa. Ela é projetada para resolver **parte de um problema maior**, permitindo que você divida seu programa em **pequenas partes reutilizáveis** e organizadas.

Imagine que você precise preencher uma matriz no seu código. Você poderia fazer isso diretamente no programa principal (por exemplo, no `inicio`), mas… e se precisasse preencher **dez matrizes**? Escrever o mesmo bloco de código várias vezes seria cansativo e tornaria o programa longo e difícil de manter.

As funções existem justamente para evitar isso: você **escreve uma vez** o bloco de código necessário, dá a ele um **nome**, e depois pode **chamar essa função** quantas vezes quiser no seu programa.

### **Principais vantagens de usar funções:**

- Reduzir **código duplicado**;
- Permitir **reutilização** de código, inclusive em outros programas;
- **Decompor** um problema grande em pequenos blocos mais fáceis de entender;
- Tornar o código mais **organizado** e **legível**;
- Esconder detalhes internos (como cálculos ou operações internas), expondo apenas os resultados necessários;

Em resumo: funções ajudam a construir programas **mais limpos, claros e eficientes**.

## Declarando e usando uma função simples**

Para declarar uma função no Portugol, usamos a palavra reservada **`funcao`**, seguida de seu tipo de retorno e nome.
Quando não há retorno, usamos o tipo **`vazio`**.

⚠ Importante: Mesmo sem parâmetros e retorno, uma função precisa ser declarada antes de ser usada.

### **Exemplo básico:**

```portugol
// Função simples que imprime uma linha separadora
funcao vazio imprime_linha()
{
    escreva("\n-----------------------------\n")
}

programa
{
    funcao inicio()
    {
        escreva("Início do Programa")
        imprime_linha()  // Chamando a função
        escreva("Fim do Programa")
    }
}
```

Aqui, a função `imprime_linha` não recebe nenhum dado, não retorna nenhum valor — ela **apenas executa uma ação**: imprimir uma linha de traços.
Você pode chamá-la quantas vezes quiser para repetir esse efeito no seu programa.

Quer que eu prepare mais exemplos só com funções desse tipo?

## **Função com parâmetros**

Agora vamos tornar nossas funções **mais flexíveis**.
Com **parâmetros**, podemos passar **informações específicas** para a função trabalhar.

### **Exemplo:**

```portugol
// Função que imprime uma linha de um determinado símbolo
funcao vazio imprime_simbolo(cadeia simbolo)
{
    escreva("\n", simbolo, simbolo, simbolo, simbolo, simbolo, "\n")
}

programa
{
    funcao inicio()
    {
        imprime_simbolo("*")
        imprime_simbolo("#")
        imprime_simbolo("=")
    }
}
```

Aqui, a função `imprime_simbolo` recebe um **parâmetro** chamado `simbolo`.
Cada vez que chamamos a função, informamos qual símbolo queremos usar — e a função imprime uma linha formada por ele.

Você pode passar **quantos parâmetros precisar**, sempre declarando o tipo antes do nome. Eles ficam entre parênteses, separados por vírgula.

Se quiser, posso dar exemplos com múltiplos parâmetros!

## **Função com retorno**

Além de executar ações, uma função também pode **calcular um resultado** e devolvê-lo para quem a chamou.
Esse resultado é chamado de **valor de retorno**.
O tipo de retorno é especificado na declaração da função.

### **Exemplo:**

```portugol
// Função que calcula o dobro de um número
funcao inteiro dobro(inteiro numero)
{
    retorne numero * 2
}

programa
{
    funcao inicio()
    {
        inteiro resultado = dobro(5)
        escreva("O dobro de 5 é: ", resultado)
    }
}
```

Aqui, a função `dobro` recebe um número, calcula seu dobro e **retorna** esse valor.
A função `inicio` recebe esse valor de volta e armazena na variável `resultado`.

⚠ **Importante:**
Quando o tipo de retorno não é `vazio`, o uso do comando **`retorne`** dentro do corpo da função é obrigatório.

Quer exemplos com funções que retornam outros tipos (como `real` ou `logico`)?

## **Exemplo completo**

Vamos juntar tudo que vimos em um exemplo mais robusto.

### **Exemplo:**

```portugol
programa
{
    funcao inicio()
    {
        inteiro a = 7
        inteiro b = 3

        escreva("Soma: ", soma(a, b))
        imprime_linha()

        escreva("Maior número: ", maior(a, b))
        imprime_linha()

        cadeia palavra = "teste"
        escreva("Palavra invertida: ", inverte_palavra(palavra))
    }

    // Função que imprime uma linha separadora
    funcao vazio imprime_linha()
    {
        escreva("\n-----------------------------\n")
    }

    // Função que soma dois números
    funcao inteiro soma(inteiro x, inteiro y)
    {
        retorne x + y
    }

    // Função que retorna o maior número entre dois
    funcao inteiro maior(inteiro x, inteiro y)
    {
        se (x > y)
        {
            retorne x
        }
        senao
        {
            retorne y
        }
    }

    // Função que inverte uma palavra (exemplo simples)
    funcao cadeia inverte_palavra(cadeia palavra)
    {
        cadeia invertida = ""
        inteiro i = comprimento(palavra) - 1

        enquanto (i >= 0)
        {
            invertida = invertida + caractere_na_posicao(palavra, i)
            i = i - 1
        }

        retorne invertida
    }
}
```

Neste exemplo:
- Temos funções com e sem parâmetros;
- Temos funções com diferentes tipos de retorno (`inteiro`, `cadeia`, `vazio`);
- Combinamos chamadas de funções para estruturar bem o programa;

## exercícios

<details>
<summary>Lista de Exercícios</summary>

### Funções sem parâmetros e sem retorno

1. Crie uma função que imprima “Bem-vindo ao programa!”.
1. Crie uma função que desenhe uma linha de 30 traços.
1. Crie uma função que desenhe uma moldura simples usando asteriscos.
1. Crie uma função que mostre a mensagem “Processo concluído com sucesso.”.
1. Crie uma função que mostre uma mensagem de texto.
1. Crie uma função que limpe a tela (simulada com várias quebras de linha).
1. Crie uma função que exiba o nome do autor do programa.
1. Crie uma função que exiba uma data fixa.
1. Crie uma função que exiba uma mensagem de erro fictícia.
1. Crie uma função que mostre um “menu fictício” (apenas com texto, sem lógica).

### Funções com parâmetros e sem retorno

1. Crie uma função que receba um nome e imprima “Olá, \[nome]!”.
1. Crie uma função que receba um número e imprima uma linha desse número de traços.
1. Crie uma função que receba dois números e imprima todos os números entre eles.
1. Crie uma função que receba um símbolo (caractere) e desenhe uma caixa 5x5 com ele.
1. Crie uma função que receba um texto e o imprima com espaços substituídos por traços.
1. Crie uma função que receba uma palavra e informe quantas letras ela tem (imprimindo, não retornando).
1. Crie uma função que receba um número e diga se ele é positivo, negativo ou zero.
1. Crie uma função que receba a idade de uma pessoa e imprima a categoria: criança, jovem, adulto, idoso.
1. Crie uma função que receba uma temperatura e imprima se está quente, frio ou ameno.
1. Crie uma função que receba uma lista de 5 nomes e imprima cada um em uma linha.

### Funções sem parâmetros e com retorno

1. Crie uma função que retorne o número 42.
1. Crie uma função que retorne uma mensagem “Tudo certo!”.
1. Crie uma função que retorne o valor de π (use 3.14).
1. Crie uma função que retorne o ano atual (ou um valor fixo).
1. Crie uma função que retorne um número aleatório.
1. Crie uma função que retorne o dia da semana.
1. Crie uma função que retorne seu nome.
1. Crie uma função que retorne a palavra “SIM”.
1. Crie uma função que retorne a quantidade total de usuários cadastrados (simulado com um número fixo).
1. Crie uma função que retorne a frase “O programa terminou.”.

### Funções com parâmetros e com retorno

1. Crie uma função que receba dois números e retorne a soma.
1. Crie uma função que receba dois números e retorne o maior deles.
1. Crie uma função que receba três notas e retorne a média ponderada.
1. Crie uma função que receba um número e retorne se ele é par (`verdadeiro` ou `falso`).
1. Crie uma função que receba um texto e retorne ele invertido.
1. Crie uma função que receba uma base e uma altura e retorne a área do triângulo.
1. Crie uma função que receba um número e retorne seu fatorial.
1. Crie uma função que receba uma palavra e retorne se é um palíndromo (lê igual de trás para frente).
1. Crie uma função que receba um número e retorne sua raiz quadrada (simulada).
1. Crie uma função que receba um ano e retorne se ele é bissexto (`verdadeiro` ou `falso`).

</details>
