# Declarações

Sejam números ou letras, nossos programas tem que conseguir armazenar dados temporariamente para poderem fazer cálculos, exibir mensagens na tela, solicitar a digitação de valores e assim por diante.

Uma declaração especifica o identificador, tipo, e outros aspectos de elementos da linguagem, tais como variáveis, constantes e funções. Declarações são feitas para anunciar a existência do elemento para o compilador.

Para as variáveis, a declaração reserva uma área de memória para armazenar valores e ainda dependendo onde ela foi declarada pode ser considerada local (vai existir somente dentro de seu escopo) ou global (vai existir enquanto o programa estiver em execução).

Para as constantes a declaração funciona de forma parecida a de uma variável, porem sem a possibilidade de alterar seu valor no decorrer do programa.

Nesta seção, abordaremos os seguintes tipos de declarações :

1. [Declaração de Variáveis](#declaração-de-variáveis)
1. [Atribuições](#atribuicoes)

---

## declaração de variáveis
O computador armazena os dados que são utilizados nos programas e algoritmos na memória de trabalho ou memória RAM (Random Access Memory). A memória do computador é sequencial e dividida em posições. Cada posição de memória permite armazenar uma palavra (conjunto de bytes) de informação e possui um número que indica o seu endereço.

Vamos supor que queremos fazer um programa que solicita para um usuário digitar a sua idade e exibe a ele quantos anos faltam para ele atingir 100 anos de idade. Precisaremos armazenar a idade do usuário para depois realizar o cálculo `100 - idade_usuario` e depois armazenar também o resultado.

Para facilitar a nossa vida de programadores, foram criadas as variáveis. As variáveis podem ser entendidas como sendo apelidos para as posições de memória. É através das variáveis que os dados dos nossos programas serão armazenados. A sintaxe para se declarar uma variável é o tipo da variável, o nome da variável ou das variáveis (separadas por virgula cada uma) e opcionalmente pode ser atribuído a ela um valor de inicialização (exceto se for declarado mais de uma na mesma linha)

Exemplo de sintaxe :
```portugol
caracter nome_variavel
inteiro variavel_inicializada = 42
real nome_variavel2
logico nome_variavel3

// ou para declarar varias variáveis de um mesmo tipo :
cadeia var1,var2,var3,var4
logico var4,var5,var6
```

É importante ressaltar que o nome de cada variável deve ser explicativo, facilitando assim a compreensão do conteúdo que está armazenado nela.

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    // variável global do tipo inteiro
    inteiro variavel

    funcao inicio()
    {
        // variável local do tipo inteiro
        inteiro outra_variavel

        // variável local do tipo real já inicializada
        real altura = 1.79

        cadeia frase = "Isso é uma variável do tipo cadeia"

        caracter inicial = 'P'

        logico exemplo = verdadeiro

        // imprime 1.79, valor obtido na variável altura
        escreva(altura)
    }
}
```

---

## atribuicoes
Quando criamos uma variável, simplesmente separamos um espaço de memória para um conteúdo. Para especificar esse conteúdo, precisamos de alguma forma determinar um valor para essa variável. Para isso, usamos a operação de atribuição.

A instrução de atribuição serve para alterar o valor de uma variável. Ao fazer isso dizemos que estamos atribuindo um novo valor a esta variável. A atribuição de valores pode ser feita de variadas formas. Pode-se atribuir valores através de constantes, de dados digitados pelo usuário (usando a função `leia`) ou mesmo através de comparações e operações com outras variáveis já existentes. Neste último caso, após a execução da operação, a variável conterá o valor resultante da operação. O sinal de igual `=` é o símbolo da atribuição no Portugol. A variável a esquerda do sinal de igual recebe o valor das operações que estiverem à direita.

Exemplo de sintaxe :

```portugol
variavel = 6
variavel = variavel2
variavel = 6 + 4 / variavel2
leia (variavel)
```

Note que uma variável só pode receber atribuições do mesmo tipo que ela. Ou seja, se a variável `b` é do tipo `inteiro` e a variável `a` é do tipo `real`, a atribuição não poderá ser realizada.

Existem alguns operandos no Portugol que podem ser utilizados para atribuição de valores.

São eles:

```portugol
variavel1 += variavel2  // Equivalente a : variavel1 = variavel1 + variavel2;
variavel1 -= variavel2  // Equivalente a : variavel1 = variavel1 - variavel2;
variavel1 *= variavel2  // Equivalente a : variavel1 = variavel1 * variavel2;
variavel1 /= variavel2  // Equivalente a : variavel1 = variavel1 / variavel2;
variavel1 %= variavel2  // Equivalente a : variavel1 = variavel1 % variavel2;
variavel1 & variavel2   // Equivalente a : variavel1 = variavel1 & variavel2;
variavel1 ^= variavel2  // Equivalente a : variavel1 = variavel1 ^ variavel2;
variavel1 |= variavel2  // Equivalente a : variavel1 = variavel1 | variavel2;
variavel1++             // Equivalente a : variavel1 = variavel1 + 1;
variavel1--             // Equivalente a : variavel1 = variavel1 - 1;
```

Para melhor compreensão deste conceito, confira o exemplo completo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        // atribuição de valores constantes a uma variável
        inteiro a
        a = 2

        // atribuição através de entrada de dados, informado pelo usuário
        inteiro b
        leia(b)

        // atribuição através de uma variável já informada pelo usuário
        inteiro c
        c = b
    }
}
```
