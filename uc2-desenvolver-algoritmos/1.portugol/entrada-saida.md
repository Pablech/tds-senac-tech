# Entrada e Saída

Entrada/saída é um termo utilizado quase que exclusivamente no ramo da computação (ou informática), indicando entrada (inserção) de dados por meio de algum código ou programa, para algum outro programa ou hardware, bem como a sua saída (obtenção de dados) ou retorno de dados, como resultado de alguma operação de algum programa, consequentemente resultado de alguma entrada.

A instrução de entrada de dados possibilita que o algoritmo capture dados provenientes do ambiente externo (fora da máquina) e armazene em variáveis. Assim um algoritmo consegue representar e realizar operações em informações que foram fornecidas por um usuário tais como: nome, idade, salário, sexo, etc. A forma mais comum de capturar dados é através do teclado do computador. Por meio dele o usuário pode digitar números, palavras, frases etc.

A instrução de saída de dados permite ao algoritmo exibir dados na tela do computador. Ela é utilizada para exibir mensagens, resultados de cálculos, informações contidas nas variáveis, etc.

Nesta seção, serão abordados as seguintes funções :

1. [escreva](#escreva)
1. [leia](#leia)
1. [limpa](#limpa)

---

## escreva
Em determinadas situações precisamos mostrar ao usuário do programa alguma informação. Para isso, existe um comando na programação que exibe dados ao usuário. No portugol a instrução de saída de dados para a tela é chamada através da função `escreva`, pois segue a ideia de que o algoritmo está escrevendo dados na tela do computador.

A função `escreva` é utilizada quando deseja-se mostrar informações no console da IDE (do inglês *Integrated Development Environment*, ou *Ambiente de Desenvolvimento Integrado* em português), ou seja, é um comando de saída de dados.

Para utilizar a função `escreva`, você deverá escrever este comando e entre parênteses colocar a(s) variável(eis) ou texto que você quer mostrar no console. Lembrando que quando você utilizar textos, o texto deve estar entre aspas.

A sintaxe para utilização deste comando está demonstrada a seguir :

```portugol
escreva("Escreva o texto a ser digitado aqui")
```

Note que quando queremos exibir o valor de alguma variável não utilizamos as aspas. Para exibição de várias mensagens em sequência, basta separá-las com vírgulas.

```portugol
inteiro variavel1, variavel2
escreva(variavel1, variavel2)
```

---

Existem duas ferramentas importantes que auxiliam a organização e visualização de textos exibidos na tela.

São elas :
- **quebra-linha** e
- **tabulação**;

O **quebra-linha** é utilizado para inserir uma nova linha aos textos digitados. Sem ele, os textos seriam exibidos um ao lado do outro. Para utilizar este comando, basta inserir `\n`.

O comando de **tabulação** é utilizado para inserir espaços maiores entre os textos digitados. Para utilizar este comando, basta inserir `\t`.

O exemplo a seguir ilustra a utilização do quebra-linha e da tabulação :

```portugol
programa
{
    funcao inicio()
    {
        inteiro variavel = 5

        // escreve no console um texto qualquer
        escreva("Escreva um texto aqui.\n")

        // escreve no console o valor da variável "variavel"
        escreva(variavel, "\n")

        // escreve no console o resultado da operação
        escreva(variavel+variavel, "\n")

        // escreve no console o texto digitado, e o valor contido na variável
        escreva("O valor da variável é: ", variavel)

        // escreve no console o texto com quebra de linha
        escreva("Texto com\n", "quebra-linha")

        // escreve no console o texto com espaço de tabulação
        escreva("Texto com\t tabulação")
    }
}
```

---

