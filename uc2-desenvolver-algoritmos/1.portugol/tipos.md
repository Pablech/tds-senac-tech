# tipos

Quais são os tipos de dados que o computador pode armazenar?

Se pararmos para pensar que tudo que o computador compreende é representado através de *Zeros* e *Uns*. Então a resposta é *Zero* e *Um*. Certo? Certo! Mas como então o computador pode exibir mensagens na tela, apresentar ambientes gráficos cheios de janelas, compreender o significado da teclas do teclado ou dos cliques do mouse.

Bom tudo começa com a definição de uma série de códigos. Por exemplo. A letra `"a"` do teclado é representada pela seguinte sequência de zeros e uns `"01000001"`. O número `22` é representado por `"00010110"`. E assim todos os dados que são armazenados pelo computador podem ser representados em zeros e ums.

Embora os dados sejam armazenados como zeros e uns por um computador, eles não são exatamente muito legíveis para nós humanos.

Sendo assim, existem alguns tipos básicos de dados nos quais valores podem ser armazenados no computador. O Portugol exige que o tipo de dado de um valor seja do mesmo tipo da variável ao qual este valor será atribuído.

Nesta seção, serão abordados os seguintes tópicos :

1. [tipo `inteiro`](#tipo-inteiro)
1. [tipo `real`](#tipo-real)
1. [tipo `caracter`](#tipo-caracter)
1. [tipo `cadeia`](#tipo-cadeia)

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

---

## tipo `caracter`
Em determinadas situações faz-se necessário o uso de símbolos, letras ou outro tipo de conteúdo. Por exemplo, em um jogo da velha, seriam necessárias variáveis que tivessem conteúdos de 'X' e '0'. Para este tipo de situação, existe a variável do tipo `caracter`. A variável do tipo `caracter` é aquela que contém uma informação composta de apenas **UM** carácter alfanumérico ou especial.

Por exemplo : `'A'`, `'1'`, `'%'`;

> [!CAUTION]
> Em Portugol, um caractere é ***sempre*** delimitado por **aspas simples** (`'a'`), diferente de cadeia (texto), que usam aspas duplas (`"texto"`).

### sintaxe
A sintaxe é a palavra reservada `caracter` e em seguida um nome para variavel.

```portugol
caracter nome_da_variavel
```

### exemplo
O valor que essa variável assumirá poderá ser especificado pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)). Caso seja especificado pelo programador, o conteúdo deve estar acompanhado de aspas simples.

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        caracter vogal, consoante, numero

        vogal = 'a'
        consoante = 'b'
        numero = '42'

        escreva(vogal, consoante, numero)
    }
}
```

### resumo
- **finalidade** : armazena **um único caractere** (letra, dígito ou símbolo);
- **delimitadores** : usa **aspas simples** (`' '`);
- **exemplos de uso** : iniciais, respostas simples ("S" ou "N");

### exercícios - tipo caracter

<details>
<summary>Lista de Exercícios</summary>

1. Leia um caractere (letra) e um número (dígito). Concatene-os e exiba o resultado.
1. Leia a primeira letra do seu nome e a primeira letra do seu sobrenome. Concatene-as e mostre as iniciais.
1. Leia um caractere especial (como #, @, etc.) e adicione um '!' ao final. Exiba o resultado.
1. Leia duas vogais e exiba a combinação delas em sequência.
1. Leia duas letras maiúsculas e concatene-as para formar uma sigla fictícia de país.
1. Leia um caractere que represente um sinal matemático (ex: +, -) e concatene com '='. Mostre a expressão.
1. Leia uma letra e concatene-a com ela mesma. Exiba o resultado.
1. Leia um caractere e crie uma palavra adicionando 'P' no início e 'S' no final. Mostre o resultado.
1. Leia um dígito numérico (0-9) e uma letra. Concatene-os para formar um código de produto fictício.
1. Leia um caractere como ':' e concatene com ')' para formar um "rosto feliz". Exiba o resultado.
1. Leia três letras e concatene-as para formar a sigla de uma cidade imaginária.
1. Leia um caractere de moeda (ex: $) e concatene com um valor fixo '100'. Mostre o resultado.
1. Leia uma letra e adicione um '.' ao final. Exiba como se fosse uma abreviação.
1. Leia dois símbolos (ex: & e %) e concatene-os. Mostre a combinação.
1. Leia um caractere alfabético e um numérico. Concatene-os para formar uma senha básica.
1. Leia uma letra e concatene com '®'. Exiba como se fosse uma marca registrada.
1. Leia o caractere '<' e concatene com '3' para formar um coração. Mostre o resultado.
1. Leia a letra 'D' e concatene com 'ó' para formar "Dó". Exiba a nota musical.
1. Leia a letra 'O' e concatene com 'K'. Mostre a palavra formada.
1. Leia o número '3' e concatene com '°C' para formar uma temperatura fictícia.
1. Leia um '*' e concatene com outro '*' para criar um símbolo de destaque.
1. Leia um número (dígito) e concatene com '%'. Exiba o valor percentual.
1. Leia o caractere '#' e concatene com uma palavra fixa 'alerta'. Mostre o resultado.
1. Leia o caractere '€' e concatene com '50' para formar um valor monetário.
1. Leia a letra 'π' (Pi) e concatene com '=3.14'. Exiba a representação simplificada.
    ```portugol
    programa {
        funcao inicio() {
            caracter letra
            cadeia resultado

            escreva("Digite a letra grega do PI : ")
            leia(letra)

            resultado = letra + "=3.14"
            escreva("A representação do PI é : " + resultado)
        }
    }
    ```
1. Leia o símbolo '$' e concatene com '99' para formar um preço fictício.
1. Leia o caractere '-' e concatene com '>' para formar uma seta. Mostre o resultado.
1. Leia um '!' e concatene com outro '!' para criar uma exclamação enfática.
1. Leia a letra 'C' e concatene com '©' para formar "Copyright". Exiba o resultado.
1. Leia ':' e concatene com 'D' para formar um rosto sorridente. Mostre o resultado.

</details>

---

## tipo `cadeia`
Em algumas situações precisa-se armazenar em uma variável, um texto ou uma quantidade grande de caracteres. Para armazenar este tipo de conteúdo, utiliza-se uma variável do tipo `cadeia`. Cadeia é uma sequência ordenada de caracteres (símbolos) escolhidos a partir de um conjunto pré-determinado.

Por exemplo : `"Tolkien"`, `"15/11/1889"`, `"A"`;

### sintaxe
A sintaxe é a palavra reservada `cadeia` seguida do nome da variavel.

```portugol
cadeia nome_da_variavel
```

### exemplo
O valor que essa variável assumirá poderá ser especificado pelo programador, ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)). Caso seja especificado pelo programador, o conteúdo deve estar acompanhado de aspas duplas.

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        cadeia nome, nome_do_meio, sobrenome

        nome = "John "
        nome_do_meio = "Ronald Reuel "
        sobrenome = "Tolkien"

        escreva(nome, nome_do_meio, sobrenome)
    }
}
```

### resumo
- **finalidade** : armazena palavras inteiros;
- **delimitadores** : usa **aspas duplas** (`" "`);
- **exemplos de uso** : nome, endereços, textos longos;

### exercícios - tipo cadeia

<details>
<summary>Lista de Exercícios</summary>

1. Leia o primeiro nome e o sobrenome do usuário. Concatene-os com um espaço entre eles e exiba o nome completo.
1. Leia o nome de uma pessoa e concatene com a frase "Bem-vindo(a), ". Exemplo: "Bem-vindo(a), Maria".
1. Leia o nome de uma rua e um número. Concatene-os para formar um endereço completo (ex: "Rua das Flores, 123").
1. Leia um nome de usuário e um domínio (ex: "gmail.com"). Concatene-os com "@" no meio para formar um e-mail.
1. Leia dia, mês e ano e concatene-os no formato "DD/MM/AAAA".
1. Leia duas partes de uma frase (ex: "Estou aprendendo" e "Portugol"). Concatene-as para formar uma frase completa.
1. Leia um prefixo (ex: "PROD") e um número (ex: "001"). Concatene-os para formar um código de produto.
1. Leia uma palavra e concatene com "123_" no início para criar uma senha simples.
1. Leia o título principal e um subtítulo. Concatene-os separados por ": " (ex: "História: O Início").
1. Leia uma palavra e concatene com "#" no início para formar uma hashtag (ex: "#Aprendizado").
1. Leia um domínio (ex: "www.exemplo") e uma extensão (ex: ".com"). Concatene-os para formar uma URL.
1. Leia um verbo (ex: "Salvar") e um objeto (ex: "documento"). Concatene-os para formar um comando (ex: "Salvar documento").
1. Leia o nome de um artista e uma música. Concatene-os no formato "Artista - Música".
1. Leia uma mensagem e concatene com "ATENÇÃO: " no início para destacá-la.
1. Leia uma pergunta (ex: "Qual seu animal favorito") e adicione "?" ao final.
1. Leia o início de uma frase (ex: "A vida é ") e concatene com "uma jornada". Exiba a citação completa.
1. Leia um número e concatene com "Resultado: " para exibi-lo formatado.
1. Leia três letras e quatro números. Concatene-os no formato "ABC-1234".
1. Leia um ingrediente e uma quantidade (ex: "farinha" e "2 xícaras"). Concatene-os para formar uma instrução.
1. Leia uma cidade e uma temperatura (ex: "25°C"). Concatene-os como "Cidade: Rio - 25°C".
1. Leia um nome e concatene com "_user" no final para criar um nome de usuário.
1. Leia o nome de um arquivo (ex: "relatorio") e sua extensão (ex: "pdf"). Concatene-os com "." no meio.
1. Leia o nome de um evento e uma data. Concatene-os como "Evento: Festa - Data: 20/05".
1. Leia um código de erro (ex: "404") e concatene com "Erro: " para formar uma mensagem de erro.
1. Leia um campo (ex: "Nome") e um valor (ex: "Carlos"). Concatene-os como "Nome: Carlos".
1. Leia um número (ex: "3") e concatene com " de 10 etapas concluídas".
1. Leia um nome e um cargo. Concatene-os como "Joana Silva - Gerente de Projetos".
1. Leia um número (ex: "1") e um item (ex: "Comprar pão"). Concatene-os como "1. Comprar pão".
1. Leia um valor monetário (ex: "50") e concatene com "R$" no início.
1. Leia um nome e um número de telefone. Concatene-os como "Maria - Tel: 9999-8888".

</details>

---

## exercícios completos

<details>
<summary>Lista de Exercícios</summary>

### **Exercícios de Operações Aritméticas e Concatenação Básica**
1. Leia um número inteiro e um real. Calcule a soma deles e exiba: "Soma: " seguido do resultado.
1. Leia dois caracteres. Concatene-os com um traço entre eles e exiba o resultado.
1. Leia um inteiro e subtraia 5. Multiplique o resultado por 3. Exiba o valor final.
1. Leia uma palavra (cadeia) e um número real. Exiba a frase: "Palavra: [palavra], Número: [número]".
1. Leia um número real e divida-o por 2. Exiba o resultado com a mensagem: "Metade: ".
1. Leia um caracter e um inteiro. Repita o caracter duas vezes e concatene com o número (ex: 'A' → 'AA5').
1. Leia dois inteiros, calcule a diferença entre eles e exiba: "Diferença: [resultado]".
1. Leia uma letra (caracter) e um sobrenome (cadeia). Concatene-os para formar um nome completo.
1. Leia um preço (real) e multiplique por 0.9 (10% de desconto). Exiba o novo valor.
1. Leia um número inteiro e exiba o dobro dele junto da frase: "Dobro: ".
1. Leia um símbolo (caracter) e um número inteiro. Crie uma senha fictícia concatenando os dois.
    ```portugol
    programa {
        funcao inicio() {
            caracter simbolo
            inteiro numero

            escreva("Digite um símbolo : ")
            leia(simbolo)
            escreva("Digite um número : ")
            leia(numero)

            escreva(simbolo, numero)
        }
    }
    ```
1. Leia um inteiro e um real. Calcule a divisão do primeiro pelo segundo e exiba.
1. Leia um nome (cadeia) e uma idade (inteiro). Exiba: "[nome] tem [idade] anos".
1. Leia dois reais e calcule a média. Formate a saída como "Média: [valor]".
1. Leia um código (caracter) e um número. Concatene-os no formato "Código: [A1]".
1. Leia um valor inteiro e subtraia 15%. Exiba o resultado como real.
1. Leia um dia (inteiro) e um mês (cadeia). Exiba: "Data: [dia] de [mês]".
1. Leia um número real e arredonde-o para inteiro. Exiba o valor truncado.
1. Leia um caractere e exiba três repetições dele (ex: 'X' → 'XXX').
1. Leia um salário (real) e calcule 25% dele. Exiba o valor do aumento.
1. Leia um animal (cadeia) e um número. Exiba: "[animal] tem [número] patas".
1. Leia dois inteiros, calcule o produto e exiba: "[num1] x [num2] = [resultado]".
1. Leia um nome e uma inicial (caracter). Exiba: "[nome] ([inicial])".
1. Leia um valor real e exiba sua terça parte.
1. Leia uma cidade (cadeia) e sua população (inteiro). Exiba: "Cidade: [cidade] - População: [valor]".

---

### **Exercícios de Combinação de Tipos e Operações**
1. Leia um número inteiro e concatene-o com " unidades" (ex: 5 → "5 unidades").
1. Leia uma temperatura (real) e exiba: "Temperatura atual: [valor]°C".
1. Leia um preço (real) e uma quantidade (inteiro). Calcule o total e exiba.
1. Leia uma sigla (caracter) e um país (cadeia). Exiba: "[sigla] - [país]".
1. Leia um número real e exiba a parte inteira.
1. Leia um nome (cadeia) e o ano de nascimento (inteiro). Calcule a idade aproximada.
1. Leia um símbolo matemático (caracter) e dois números. Exiba: "[num1] [símbolo] [num2]".
1. Leia um produto (cadeia) e seu preço (real). Formate: "[produto]: R$[preço]".
1. Leia uma distância (real) e converta para inteiro (km). Exiba o valor aproximado.
1. Leia uma letra (caracter) e um número. Exiba a letra repetida o número de vezes lido.
1. Leia um valor inteiro e calcule 1/3 dele. Exiba como real.
1. Leia um adjetivo (cadeia) e um substantivo (cadeia). Concatene-os em uma frase.
1. Leia um código de erro (inteiro) e exiba: "Erro #[código]".
1. Leia um número real e exiba-o formatado com duas casas decimais.
1. Leia uma hora (inteiro) e minutos (inteiro). Exiba: "[hora]:[minutos]".
1. Leia um nome de usuário (cadeia) e concatene com "@email.com".
1. Leia um valor (real) e exiba com um símbolo de moeda (ex: "R$[valor]").
1. Leia um número inteiro e exiba seu antecessor e sucessor em uma frase.
1. Leia uma senha (cadeia) e um dígito (inteiro). Concatene-os para formar uma senha forte.
1. Leia um dia (inteiro), mês (inteiro) e ano (inteiro). Formate como "DD/MM/AAAA".
1. Leia uma nota (real) e exiba: "Sua nota foi: [nota]".
1. Leia um nome (cadeia) e exiba suas iniciais com pontos (ex: "A.B.").
1. Leia um número real e exiba seu quadrado com a mensagem: "Quadrado: [valor]".
1. Leia um animal (cadeia) e concatene com "s são fofos".
1. Leia um preço (real) e exiba com desconto de 20%: "Preço com desconto: [valor]".

---

### **Exercícios de Operações Mistas e Contextos Práticos**
1. Leia um CPF (cadeia) e formate-o com pontos e traço (ex: "123.456.789-00").
    ```portugol
    programa {
        funcao inicio() {
            cadeia cpf, cpf_inicio, cpf_meio, cpf_fim, cpf_digitos

            escreva("Digite os 3 primeiros números do CPF : ")
            leia(cpf_inicio)
            escreva("Digite os 3 números do meio do CPF : ")
            leia(cpf_meio)
            escreva("Digite os 3 últimos números do CPF : ")
            leia(cpf_fim)
            escreva("Digite os 2 dígitos verificadores do CPF : ")
            leia(cpf_digitos)

            cpf = cpf_inicio + "." + cpf_meio
            cpf = cpf + "." + cpf_fim + "-" + cpf_digitos
            escreva("O CPF digitado foi : ", cpf)
        }
    }
    ```
1. Leia um número real e exiba apenas a parte inteira como um valor inteiro.
1. Leia um nome (cadeia) e um número (inteiro). Exiba: "[nome] é o número [número]".
1. Leia um valor inteiro e calcule 15% de gorjeta. Exiba o total a pagar.
1. Leia um código (caracter) e um número (inteiro). Formate: "Código: [A]-[10]".
1. Leia uma velocidade (real) e exiba: "Velocidade: [valor] km/h".
1. Leia um número de telefone (cadeia) e formate com traço (ex: "9999-8888").
1. Leia um valor em metros (real) e converta para centímetros (inteiro).
1. Leia um nome de filme (cadeia) e seu ano (inteiro). Exiba: "[filme] ([ano])".
1. Leia um preço (real) e uma quantidade (inteiro). Calcule o total com 10% de taxa.
1. Leia um código (inteiro) e concatene com "PRD-" para formar um código de produto.
1. Leia um número (inteiro) e exiba: "O número [valor] é par?" (sem verificação real).
1. Leia uma data (cadeia) e concatene com "Data de nascimento: ".
1. Leia um valor real e exiba: "Valor aproximado: " seguido do inteiro mais próximo.
1. Leia um nome de usuário (cadeia) e exiba em minúsculas (simule com concatenação).
1. Leia uma mensagem (cadeia) e concatene com " - [Assinatura]".
1. Leia um número (inteiro) e exiba seu triplo formatado como "Triplo: [valor]".
1. Leia um código de barras (cadeia) e concatene com "Código: [valor]".
1. Leia um valor (real) e exiba com a mensagem: "Total a pagar: R$[valor]".
1. Leia um endereço (cadeia) e um número (inteiro). Formate: "[endereço], nº [número]".
1. Leia um tempo (real) em horas e converta para minutos (inteiro).
1. Leia um nome (cadeia) e uma idade (inteiro). Exiba: "[nome], [idade] anos".
1. Leia um valor (real) e exiba com duas casas decimais: "Precisão: [valor]".
1. Leia um código (caracter) e um número (inteiro). Formate: "[Código][Número]".
1. Leia um número (inteiro) e exiba: "O sucessor de [número] é [número+1]".

---

### **Exercícios de Expressões Complexas e Formatação**
1. Leia um peso (real) e exiba: "Peso: [valor] kg".
1. Leia um número (inteiro) e concatene com " é um número importante".
1. Leia um valor (real) e calcule 30% dele. Exiba o resultado formatado.
1. Leia um nome (cadeia) e concatene com " é bem-vindo(a)!".
1. Leia um valor (real) e exiba: "Valor positivo? [valor]" (sem verificação real).
1. Leia um código (caracter) e um status (cadeia). Exiba: "[Código] - [Status]".
    ```portugol
    programa {
        funcao inicio() {
            caracter codigo
            cadeia status, texto

            escreva("Digite uma letra para o código : ")
            leia(codigo)
            escreva("Digite uma palavra para o status : ")
            leia(status)

            texto = codigo + " - " + status

            escreva(texto)
        }
    }
    ```
1. Leia um número (inteiro) e exiba sua metade arredondada para baixo.
1. Leia uma cidade (cadeia) e sua temperatura (real). Formate: "[Cidade]: [temp]°C".
1. Leia um número (inteiro) e exiba sua raiz quadrada aproximada.
1. Leia um nome (cadeia) e exiba em formato de inicial maiúscula (ex: "Maria → M.").
1. Leia um valor (inteiro) e exiba: "O quadrado de [valor] é [valor^2]".
1. Leia uma placa de carro (cadeia) e formate com traço (ex: "ABC-1234").
1. Leia um valor (real) e exiba: "Valor total: " seguido do número formatado.
1. Leia um código (inteiro) e concatene com "ERRO-" para formar uma mensagem.
1. Leia um preço (real) e exiba com 5% de desconto.
1. Leia um nome (cadeia) e um dia (inteiro). Exiba: "[nome] chega no dia [dia]".
1. Leia um valor (inteiro) e exiba: "Antes: [valor-1], Depois: [valor+1]".
1. Leia um produto (cadeia) e seu código (caracter). Exiba: "[produto] - Cód. [código]".
1. Leia um número (real) e exiba: "Parte inteira: [int], Decimal: [decimal]".
1. Leia uma hora (inteiro) e exiba: "[hora] horas".
1. Leia um valor (real) e concatene com " reais".
1. Leia um nome (cadeia) e um ano (inteiro). Exiba: "[nome] © [ano]".
1. Leia um número (inteiro) e exiba: "Metade aproximada: [valor/2]".
1. Leia um símbolo (caracter) e exiba entre colchetes (ex: "[#]").
1. Leia um número (real) e exiba: "Número lido: [valor]".

</details>
