# Estruturas de Controle

Em determinadas situações é necessário executar ações de acordo com os dados fornecidos pelo programa. Em alguns casos, pode ser necessário que o programa execute uma determinada instrução repetidas vezes, por exemplo. Sendo assim, controlar e manipular a ordem com que instruções serão executadas em função de dados fornecidos pelo programa é essencial, e é para isso que servem as estruturas de controle.

Estruturas de controle (ou fluxos de controle) referem-se à ordem em que instruções, expressões e chamadas de função são executadas. Sem o uso de estruturas de controle, o programa seria executado de cima para baixo, instrução por instrução, dificultando assim a resolução de diversos problemas.

# Desvios Condicionais

Não é só na vida que fazemos escolhas. Nos algoritmos encontramos situações onde um conjunto de instruções deve ser executado caso uma condição seja verdadeira. Por exemplo: sua aprovação na disciplina de algoritmos depende da sua média final ser igual ou superior a 6. Podemos ainda pensar em outra situação: a seleção brasileira de futebol só participa de uma copa do mundo se for classificada nas eliminatórias, se isso não ocorrer ficaremos sem o hexacampeonato.

Estas e outras situações podem ser representadas nos algoritmos por meio de desvios condicionais.

Nesta seção, serão abordados os seguintes tópicos :

- [se](#se)

## se
Aqui veremos como dizer a um algoritmo quando um conjunto de instruções deve ser executado. Esta determinação é estabelecida se uma condição for verdadeira. Mas o que seria esta condição? Ao executar um teste lógico teremos como resultado um valor *verdadeiro* ou *falso*. A condição descrita anteriormente nada mais é que um teste lógico.

Se este teste lógico resultar *verdadeiro*, as instruções definidas dentro do desvio condicional serão executadas. Se o teste for *falso*, o algoritmo pulará o trecho e continuará sua execução a partir do ponto onde o desvio condicional foi finalizado.

O desvio condicional que foi acima apresentado é considerado simples e conhecido como o comando `se`.

A sintaxe é respectivamente a palavra reservada `se`, a condição a ser testada entre parenteses e as instruções que devem ser executadas entre chaves caso o desvio seja verdadeiro.

### exemplo

```portugol
inteiro x = 5
se (x > 3)
{
    // instruções a serem executadas se o desvio for verdadeiro
}

logico condicao = verdadeiro
se(condicao)
{
    // instruções a serem executadas se o desvio for verdadeiro
}
```

A figura abaixo ilustra um algoritmo que verifica se o número digitado pelo usuário é zero. Ele faz isso usando um desvio condicional. Note que se o teste for verdadeiro exibirá uma mensagem, no caso falso nenhuma ação é realizada.

<img src="https://portugol.dev/assets/recursos/ajuda/recursos/imagens/Dark/Se.png" style="background-color: #000000;"/>

O exemplo a seguir ilustra em portugol o mesmo algoritmo do fluxograma acima.

```portugol
programa
{
    funcao inicio()
    {
        inteiro num

        escreva("Digite um número : ")
        leia(num)

        se(num == 0)
        {
            escreva("O número digitado é 0")
        }
    }
}
```

### exercícios - se

<details>
<summary>Lista de Exercícios</summary>

1. Leia um inteiro e, se for maior que 0, escreva “Número positivo”.
1. Leia um inteiro e, se for menor que 0, escreva “Número negativo”.
1. Leia um inteiro e, se o resto da divisão por 2 for igual a 0, escreva “É par”.
1. Leia um inteiro e, se o resto da divisão por 2 for diferente de 0, escreva “É ímpar”.
1. Leia a idade (inteiro) e, se for maior ou igual a 18, escreva “Maior de idade”.
1. Leia um inteiro e, se for divisível por 5, escreva “Divisível por 5”.
1. Leia dois inteiros A e B e, se A for maior que B, escreva “A > B”.
1. Leia um número real e, se for entre 0 e 1 (inclusive), escreva “Está no intervalo [0,1]”.
1. Leia um real e, se for maior que 100, escreva “Acima de 100”.
1. Leia a temperatura em °C (real) e, se for menor ou igual a 0, escreva “Água congelada”.
1. Leia um saldo bancário (real) e, se for maior que zero, escreva “Saldo positivo”.
1. Leia um valor (real) e, se for maior que 1000, calcule 10% de desconto (valor * 0.1) e escreva o valor do desconto.
1. Leia um caracter e, se for igual a ‘a’ ou ‘e’ ou ‘i’ ou ‘o’ ou ‘u’, escreva “Vogal”.
    *Dica:* pesquise sobre a **tabela ASCII**.
1. Leia um caracter e, se for estar entre ‘A’ e ‘Z’, escreva “Maiúsculo”.
1. Leia um caracter e, se for estar entre ‘a’ e ‘z’, escreva “Minúsculo”.
1. Leia um caracter e, se for igual a ‘0’, escreva “Zero”.
1. Leia uma cadeia (senha) e, se for igual a “abc123”, escreva “Acesso permitido”.
1. Leia uma cadeia (nome) e, se for igual a “Admin”, escreva “Usuário administrador”.
1. Leia uma cadeia e, se o comprimento for igual a zero, escreva “Cadeia vazia”.
1. Leia um valor lógico e, se for verdadeiro, escreva “Condição verdadeira”.
1. Leia um valor lógico e, se for falso, escreva “Condição falsa”.
1. Leia um inteiro e, se for maior que 10 e par, escreva “Maior que 10 e par”.
1. Leia um inteiro e, se for menor que –10 ou maior que 10, escreva “Fora do intervalo [-10,10]”.
1. Leia um ano (inteiro) e, se for divisível por 4, escreva “Bissexto (simplificado)”.
1. Leia uma nota (real) e, se for maior ou igual a 7.0, escreva “Aprovado”.
1. Leia uma nota (real) e, se estiver entre 4.0 e 6.9, escreva “Exame”.
1. Leia uma nota (real) e, se for menor que 4.0, escreva “Reprovado”.
1. Leia a temperatura (real) e, se for maior que 37.5, escreva “Febre”.
1. Leia dois números reais A e B e, se A for maior que B, calcule A–B e escreva “Diferença = ” seguido do resultado.

</details>
