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

## leia
Em alguns problemas, precisamos que o usuário digite um valor a ser armazenado. Por exemplo, se quisermos elaborar um algoritmo para calcular a média de nota dos alunos, precisaremos que o usuário informe ao algoritmo quais as suas notas. No portugol a instrução de entrada de dados via teclado é chamada de `leia`, pois segue a ideia de que o algoritmo está lendo dados do ambiente externo(usuário) para poder utilizá-los.

A função `leia` é utilizada quando se deseja obter informações do teclado do computador, ou seja, é um comando de entrada de dados. Essa função aguarda um valor a ser digitado e o atribui diretamente na variável.

Para utilizar a função `leia`, você deverá escrever este comando e entre parênteses colocar a(s) variavel (eis) que você quer que recebam os valores a serem digitados.

A sintaxe deste comando está exemplificada a seguir:

```portugol
inteiro x
cadeia y
real z

// chamando a função leia
leia(x)
leia(y,z)
// no final as variáveis irão possuir o valor digitado pelo usuário
```

Note que para armazenar um valor em uma variável, é necessário que a mesma já tenha sido declarada anteriormente. Assim como no comando `escreva`, se quisermos que o usuário entre com dados sucessivos, basta separar as variáveis dentro dos parênteses com vírgula.

O exemplo a seguir ilustra em portugol um algoritmo que lê as variáveis: idade, salario, nome, sobrenome, nota1, nota2 e nota3 :

```portugol
programa
{
    funcao inicio()
    {
        inteiro idade
        real salario, nota1, nota2, nota3
        cadeia nome, sobrenome

        escreva("Informe a sua idade: ")
        leia (idade)                // lê o valor digitado para "idade"

        escreva("Informe seu salario: ")
        leia (salario)              // lê o valor digitado para "salario"

        escreva("Informe o seu nome e sobrenome: ")
        leia (nome, sobrenome)      // lê o valor digitado para "nome" e "sobrenome"

        escreva("Informe as suas três notas: ")
        leia (nota1, nota2, nota3)  // lê o valor digitado para "nota1", "nota2" e "nota3"

        escreva("Seu nome é:" + nome + " " + sobrenome + "\n")
        escreva("Você tem " + idade + " anos e ganha de salario " + salario + "\n")
        escreva("Suas três notas foram:\n")
        escreva("Nota 1: " + nota1 + "\n")
        escreva("Nota 2: " + nota2 + "\n")
        escreva("Nota 3: " + nota3 + "\n")
    }
}
```

---

## limpa
À medida que um algoritmo está sendo executado ele exibe mensagens e executa ações no console. Assim, em alguns casos o console fica poluído com informações desnecessárias, que atrapalham a compreensão e visualização do programa. Para isso, podemos usar a função `limpa`.

A função `limpa` é responsável por limpar o console. Não requer nenhum parâmetro e não tem nenhuma saída.

Sua sintaxe é simples, e está demonstrada a seguir :

```portugol
limpa()
```

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        cadeia nome

        // imprime a frase "Qual é o seu nome?"
        escreva("Qual é o seu nome ?\n")

        // detecta o que o usuario escreveu na tela
        leia(nome)

        // limpa tudo que estava escrito no console
        limpa()

        // escreve resposta
        escreva("Olá "+nome)
    }
}
```
