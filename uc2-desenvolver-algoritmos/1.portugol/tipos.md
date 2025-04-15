# tipos

Quais são os tipos de dados que o computador pode armazenar?

Se pararmos para pensar que tudo que o computador compreende é representado através de *Zeros* e *Uns*. Então a resposta é *Zero* e *Um*. Certo? Certo! Mas como então o computador pode exibir mensagens na tela, apresentar ambientes gráficos cheios de janelas, compreender o significado da teclas do teclado ou dos cliques do mouse.

Bom tudo começa com a definição de uma série de códigos. Por exemplo. A letra `"a"` do teclado é representada pela seguinte sequência de zeros e uns `"01000001"`. O número `22` é representado por `"00010110"`. E assim todos os dados que são armazenados pelo computador podem ser representados em zeros e ums.

Embora os dados sejam armazenados como zeros e uns por um computador, eles não são exatamente muito legíveis para nós humanos.

Sendo assim, existem alguns tipos básicos de dados nos quais valores podem ser armazenados no computador. O Portugol exige que o tipo de dado de um valor seja do mesmo tipo da variável ao qual este valor será atribuído.

Nesta seção, serão abordados os seguintes tópicos :

1. [tipo `inteiro`](#tipo-inteiro)
1. [tipo `real`](#tipo-real)

---

## tipo `inteiro`
Em determinadas situações faz-se necessário a utilização de valores inteiros em um algoritmo. Como faríamos, por exemplo, uma simples soma entre dois números pertencentes ao conjunto dos **números inteiros**? Simples. Utilizando variáveis do tipo `inteiro`. Uma variável do tipo inteiro pode ser entendida como uma variável que contém qualquer número que pertença ao conjunto dos números inteiros, ou seja, **números sem casas decimais**.

Por exemplo : `0`, `-3`, `10`, `42`;

Como pode ser visto no exemplo acima, eles podem ser positivos, negativos ou nulos.

### sintaxe
A declaração de uma variável do tipo inteiro é simples.

A sintaxe é a palavra reservada `inteiro` e em seguida um nome para variavel.

```portugol
inteiro nome_da_variavel
```

### exemplo
O valor que essa variável assumirá poderá ser especificado pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)).

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        inteiro num1
        inteiro num2

        num1 = 5
        num2 = 3

        escreva(num1 + num2)
    }
}
```

### resumo
- **finalidade** : armazena números inteiros (sem casas decimais), positivos ou negativos;
- **intervalo** : depende da implementação, mas geralmente de -2^31 a 2^31-1;
- **exemplos de uso** : idade, contadores, quantidades;

### exercícios - tipo inteiro

<details>
<summary>Lista de Exercícios</summary>

1. Calcule e mostre o resultado de 15 mais 8.
1. Calcule e exiba o valor de 30 subtraído por 12.
1. Multiplique 7 por 5 e mostre o resultado.
1. Divida 100 por 20 e exiba o resultado.
1. Calcule o resultado de 10 mais 4 multiplicado por 3 (respeitando a ordem das operações).
1. Calcule o valor de (12 menos 5) multiplicado por 2 e mostre o resultado.
1. Some 9 com 6, subtraia 3 e depois multiplique por 4. Exiba o valor final.
1. Divida -45 por 9 e mostre o resultado.
1. Calcule 25 menos 40 e exiba o valor.
1. Multiplique -8 por -6 e mostre o produto.
1. Calcule: 5 multiplicado por (10 menos 3) mais 2. Exiba o resultado.
1. Divida 27 por 4 e mostre o resultado.
1. Some 14, 23 e 9. Exiba o total.
1. Subtraia 5 de 18, depois subtraia 3 do resultado. Mostre o valor final.
1. Calcule: (30 dividido por 5) multiplicado por (7 menos 2). Exiba o resultado.
1. Multiplique 0 por 15 e mostre o resultado.
1. Divida 8 por 10 e exiba o resultado.
1. Calcule: 50 menos (3 multiplicado por 4) mais (20 dividido por 5). Mostre o valor.
1. Some 17 com 5, subtraia 8 e depois some 3. Exiba o resultado.
1. Divida -64 por 8 e mostre a respostas.
1. Calcule: 12 multiplicado por 3 menos 10 dividido por 2. Exiba o resultado.
1. Calcule -15 menos (-7) e mostre o valor.
1. Multiplique 2 por 3 por 4. Exiba o produto.
1. Divida 81 por 9 e mostre o resultado.
1. Calcule: ((5 mais 3) multiplicado por 2) menos (10 dividido por 5). Exiba o valor.
1. Some -12 com -8 e mostre o resultado.
1. Calcule: 20 dividido por 4 multiplicado por 3. Exiba o valor.
1. Subtraia 25 de 25 e mostre o resultado.
1. Calcule: 100 menos (5 multiplicado por 10) mais (45 dividido por 9). Exiba o valor.
1. Calcule: (7 multiplicado por (-2)) mais (36 dividido por 6) menos 5. Mostre o resultado.

</details>

---

## tipo `real`
Em algumas situações é necessário armazenar valores que não pertencem aos números inteiros. Por exemplo, se quiséssemos armazenar o valor da divisão de 8 por 3, como faríamos? Este problema pode ser solucionado com uma variável do tipo `real`. Uma variável do tipo `real` armazena um número real como uma fração decimal possivelmente infinita, como o número PI 3.1415926535, ou seja, armazena **números com casas decimais**.

> [!IMPORTANT]
> Os valores do tipo de dado `real` são números separados por pontos e não por virgulas.

Por exemplo : `3.14`, `2.0`, `-0.5`;

Como pode ser visto no exemplo acima, eles também podem ser positivos, negativos ou nulos.

### sintaxe
A sintaxe para a declaração é a palavra reservada `real` junto com o nome da variável.

```portugol
real nome_da_variavel
```

### exemplo
O valor que essa variável assumirá poderá ser especificado pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)).

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        real resultado_divisao

        resultado_divisao = 8.2 / 3.1

        escreva(resultado_divisao)
    }
}
```

### resumo
- **finalidade** : armazena números com casas decimais ou em notação científica;
- **precisão** : valores como preços, médias ou resultados de divisões;
- **exemplos de uso** : preço de produtos, cálculos científicos;

### exercícios - tipo real

<details>
<summary>Lista de Exercícios</summary>

1. Calcule e exiba o resultado de 3.5 mais 2.1.
1. Calcule o valor de 7.8 menos 4.3 e mostre o resultado.
1. Multiplique 2.5 por 4.0 e exiba o produto.
1. Divida 10 por 3 e mostre o resultado (com casas decimais).
1. Calcule 5.0 mais 2.0 multiplicado por 3.0 (respeite a prioridade das operações).
1. Calcule (8.4 menos 1.2) multiplicado por 2.0 e exiba o valor.
1. Some 9.6 com 3.0 e divida o resultado por 2.0. Mostre o valor final.
1. Calcule -6.5 menos 1.5 e exiba o resultado.
1. Multiplique -3.2 por -2.5 e mostre o produto.
1. Divida -15.0 por 4.0 e exiba o quociente.
1. Calcule: 4.0 multiplicado por (5.5 menos 2.5) mais 1.0. Mostre o resultado.
1. Calcule a área de um retângulo com largura 5.5 e altura 3.2. Exiba o valor.
1. Subtraia 12.7 de 25.3 e some 4.5 ao resultado. Mostre o valor final.
1. Calcule: (10.0 dividido por 2.0) multiplicado por (3.0 mais 1.5). Exiba o resultado.
1. Divida 20.0 por 8.0 e multiplique o resultado por 2.0. Mostre o valor.
1. Calcule 7 mais 3.5 (um inteiro e um real) e exiba o resultado.
1. Subtraia 1.2 de 10.0, depois subtraia 3.8 do resultado. Mostre o valor final.
1. Multiplique 1000.5 por 2.0 e exiba o resultado.
1. Calcule: 15.0 menos (2.5 multiplicado por 4.0) mais (9.0 dividido por 3.0). Mostre o valor.
1. Multiplique 50.0 (preço) por 1.1 (10% de taxa) e exiba o valor total.
1. Calcule o volume de um cubo com aresta 2.5 (lado³) e mostre o resultado.
1. Calcule a média ponderada de (3.0 multiplicado por 2.5) mais (2.0 multiplicado por 1.5), dividido por 5.0. Exiba o valor.
1. Divida 150.0 (distância em km) por 2.5 (horas) para calcular a velocidade média. Mostre o resultado.
1. Calcule 1000.0 (capital) multiplicado por 0.05 (taxa) multiplicado por 3.0 (anos). Exiba o valor dos juros.
1. Calcule: -4.5 multiplicado por 2.0 mais 10.0. Mostre o resultado.
1. Calcule: ((5.0 mais 1.5) multiplicado por 2.0) menos (8.0 dividido por 4.0). Exiba o valor.
1. Divida 45.6 por 12.0 e mostre o resultado.
1. Calcule: 20.0 multiplicado por 0.5 menos 5.0 dividido por 2.0 mais 3.0. Exiba o valor.
1. Divida 12.0 por 4.0 e mostre o resultado (deve ser 3.0).
1. Calcule: (-2.5 multiplicado por 4.0) mais (18.0 dividido por -3.0) menos 1.5. Exiba o resultado.

</details>
