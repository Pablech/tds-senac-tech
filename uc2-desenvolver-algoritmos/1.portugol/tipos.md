# tipos

## quais são os tipos de dados que o computador pode armazenar?

Se pararmos para pensar, tudo o que o computador compreende é representado através de *zeros* e *uns*. Então a resposta seria: *zero* e *um*. Certo? Certo! Mas como, então, o computador consegue exibir mensagens na tela, apresentar ambientes gráficos cheios de janelas, compreender o significado das teclas do teclado ou dos cliques do mouse?

Bom, tudo começa com a definição de uma série de códigos. Por exemplo, a letra `"a"` do teclado é representada pela seguinte sequência de zeros e uns: `"01000001"`. O número `22` é representado por `"00010110"`. E assim, todos os dados armazenados pelo computador podem ser representados em zeros e uns.

Embora os dados sejam armazenados como zeros e uns por um computador, eles não são exatamente legíveis para nós, humanos.

Sendo assim, existem alguns tipos básicos de dados nos quais os valores podem ser armazenados no computador. O Portugol exige que o tipo de dado de um valor seja compatível com o tipo da variável à qual esse valor será atribuído.

Nesta seção, serão abordados os seguintes tópicos :

1. [tipo `inteiro`](#tipo-inteiro)
1. [tipo `real`](#tipo-real)
1. [tipo `caracter`](#tipo-caracter)
1. [tipo `cadeia`](#tipo-cadeia)
1. [tipo `logico`](#tipo-logico)

---

## tipo `inteiro`

Em determinadas situações, faz-se necessário utilizar valores inteiros em um algoritmo. Como faríamos, por exemplo, uma simples soma entre dois números pertencentes ao conjunto dos **números inteiros**? Simples: utilizando variáveis do tipo `inteiro`.

Uma variável do tipo inteiro pode ser entendida como uma variável que contém qualquer número que pertença ao conjunto dos números inteiros, ou seja, **números sem casas decimais**.

Exemplos: `0`, `-3`, `10`, `42`.

Como pode ser visto, esses números podem ser positivos, negativos ou nulos.

### sintaxe

A declaração de uma variável do tipo inteiro é simples:

Utiliza-se a palavra reservada `inteiro` seguida de um nome para a variável.

```portugol
inteiro nome_da_variavel
```

### exemplo

O valor que essa variável assumirá pode ser especificado pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)).

Para melhor compreensão deste conceito, confira o exemplo abaixo:

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

- **finalidade**: armazena números inteiros (sem casas decimais), positivos ou negativos;
- **intervalo**: depende da implementação, mas geralmente vai de -2³¹ a 2³¹-1;
- **exemplos de uso**: idade, contadores, quantidades.

---

### exercícios - tipo inteiro

<details>
<summary>Lista de Exercícios</summary>

1. Calcule e mostre o resultado de 15 mais 8.
2. Calcule e exiba o valor de 30 subtraído por 12.
3. Multiplique 7 por 5 e mostre o resultado.
4. Divida 100 por 20 e exiba o resultado.
5. Calcule o resultado de 10 mais 4 multiplicado por 3 (respeitando a ordem das operações).
6. Calcule o valor de (12 menos 5) multiplicado por 2 e mostre o resultado.
7. Some 9 com 6, subtraia 3 e depois multiplique por 4. Exiba o valor final.
8. Divida -45 por 9 e mostre o resultado.
9. Calcule 25 menos 40 e exiba o valor.
10. Multiplique -8 por -6 e mostre o produto.
11. Calcule: 5 multiplicado por (10 menos 3) mais 2. Exiba o resultado.
12. Divida 27 por 4 e mostre o resultado.
13. Some 14, 23 e 9. Exiba o total.
14. Subtraia 5 de 18, depois subtraia 3 do resultado. Mostre o valor final.
15. Calcule: (30 dividido por 5) multiplicado por (7 menos 2). Exiba o resultado.
16. Multiplique 0 por 15 e mostre o resultado.
17. Divida 8 por 10 e exiba o resultado.
18. Calcule: 50 menos (3 multiplicado por 4) mais (20 dividido por 5). Mostre o valor.
19. Some 17 com 5, subtraia 8 e depois some 3. Exiba o resultado.
20. Divida -64 por 8 e mostre a resposta.
21. Calcule: 12 multiplicado por 3 menos 10 dividido por 2. Exiba o resultado.
22. Calcule -15 menos (-7) e mostre o valor.
23. Multiplique 2 por 3 por 4. Exiba o produto.
24. Divida 81 por 9 e mostre o resultado.
25. Calcule: ((5 mais 3) multiplicado por 2) menos (10 dividido por 5). Exiba o valor.
26. Some -12 com -8 e mostre o resultado.
27. Calcule: 20 dividido por 4 multiplicado por 3. Exiba o valor.
28. Subtraia 25 de 25 e mostre o resultado.
29. Calcule: 100 menos (5 multiplicado por 10) mais (45 dividido por 9). Exiba o valor.
30. Calcule: (7 multiplicado por (-2)) mais (36 dividido por 6) menos 5. Mostre o resultado.

</details>

---

## tipo `real`

Em algumas situações, é necessário armazenar valores que não pertencem ao conjunto dos números inteiros. Por exemplo, se quisermos armazenar o valor da divisão de 8 por 3, como faríamos? Esse problema pode ser solucionado com uma variável do tipo `real`.

Uma variável do tipo `real` armazena um número real, que pode ser uma fração decimal possivelmente infinita, como o número PI: `3.1415926535`. Ou seja, esse tipo de dado armazena **números com casas decimais**.

> [!IMPORTANT]
> Os valores do tipo `real` devem ser escritos com **ponto** como separador decimal, e não com **vírgula**.

Por exemplo: `3.14`, `2.0`, `-0.5`.

Como pode ser visto nos exemplos acima, eles também podem ser positivos, negativos ou nulos.

### sintaxe

A sintaxe para declarar uma variável do tipo `real` é simples: utiliza-se a palavra reservada `real`, seguida pelo nome da variável.

```portugol
real nome_da_variavel
```

### exemplo

O valor que essa variável assumirá pode ser especificado pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)).

Para melhor compreensão deste conceito, confira o exemplo abaixo:

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

- **finalidade**: armazena números com casas decimais ou em notação científica;
- **precisão**: ideal para valores como preços, médias ou resultados de divisões;
- **exemplos de uso**: preço de produtos, cálculos científicos, médias escolares;

### exercícios - tipo real

<details>
<summary>Lista de Exercícios</summary>

1. Calcule e exiba o resultado de 3.5 mais 2.1.
2. Calcule o valor de 7.8 menos 4.3 e mostre o resultado.
3. Multiplique 2.5 por 4.0 e exiba o produto.
4. Divida 10 por 3 e mostre o resultado (com casas decimais).
5. Calcule 5.0 mais 2.0 multiplicado por 3.0 (respeite a prioridade das operações).
6. Calcule (8.4 menos 1.2) multiplicado por 2.0 e exiba o valor.
7. Some 9.6 com 3.0 e divida o resultado por 2.0. Mostre o valor final.
8. Calcule -6.5 menos 1.5 e exiba o resultado.
9. Multiplique -3.2 por -2.5 e mostre o produto.
10. Divida -15.0 por 4.0 e exiba o quociente.
11. Calcule: 4.0 multiplicado por (5.5 menos 2.5) mais 1.0. Mostre o resultado.
12. Calcule a área de um retângulo com largura 5.5 e altura 3.2. Exiba o valor.
13. Subtraia 12.7 de 25.3 e some 4.5 ao resultado. Mostre o valor final.
14. Calcule: (10.0 dividido por 2.0) multiplicado por (3.0 mais 1.5). Exiba o resultado.
15. Divida 20.0 por 8.0 e multiplique o resultado por 2.0. Mostre o valor.
16. Calcule 7 mais 3.5 (um inteiro e um real) e exiba o resultado.
17. Subtraia 1.2 de 10.0, depois subtraia 3.8 do resultado. Mostre o valor final.
18. Multiplique 1000.5 por 2.0 e exiba o resultado.
19. Calcule: 15.0 menos (2.5 multiplicado por 4.0) mais (9.0 dividido por 3.0). Mostre o valor.
20. Multiplique 50.0 (preço) por 1.1 (10% de taxa) e exiba o valor total.
21. Calcule o volume de um cubo com aresta 2.5 (lado³) e mostre o resultado.
22. Calcule a média ponderada de (3.0 multiplicado por 2.5) mais (2.0 multiplicado por 1.5), dividido por 5.0. Exiba o valor.
23. Divida 150.0 (distância em km) por 2.5 (horas) para calcular a velocidade média. Mostre o resultado.
24. Calcule 1000.0 (capital) multiplicado por 0.05 (taxa) multiplicado por 3.0 (anos). Exiba o valor dos juros.
25. Calcule: -4.5 multiplicado por 2.0 mais 10.0. Mostre o resultado.
26. Calcule: ((5.0 mais 1.5) multiplicado por 2.0) menos (8.0 dividido por 4.0). Exiba o valor.
27. Divida 45.6 por 12.0 e mostre o resultado.
28. Calcule: 20.0 multiplicado por 0.5 menos 5.0 dividido por 2.0 mais 3.0. Exiba o valor.
29. Divida 12.0 por 4.0 e mostre o resultado (deve ser 3.0).
30. Calcule: (-2.5 multiplicado por 4.0) mais (18.0 dividido por -3.0) menos 1.5. Exiba o resultado.

</details>

---

## tipo `caracter`

Em determinadas situações faz-se necessário o uso de símbolos, letras ou outro tipo de conteúdo. Por exemplo, em um jogo da velha, seriam necessárias variáveis que tivessem conteúdos de 'X' e '0'. Para este tipo de situação, existe a variável do tipo `caracter`. A variável do tipo `caracter` é aquela que contém uma informação composta de apenas **UM** carácter alfanumérico ou especial.

Por exemplo: `'A'`, `'1'`, `'%'`;

> [!CAUTION]
> Em Portugol, um caractere é ***sempre*** delimitado por **aspas simples** (`'a'`), diferente de cadeia (texto), que usam aspas duplas (`"texto"`).

### sintaxe

A sintaxe é a palavra reservada `caracter` e em seguida um nome para a variável.

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
        numero = '4'

        escreva(vogal, consoante, numero)
    }
}
```

### resumo

- **finalidade**: armazena **um único caractere** (letra, dígito ou símbolo);
- **delimitadores**: usa **aspas simples** (`' '`);
- **exemplos de uso**: iniciais, respostas simples ("S" ou "N");

### exercícios - tipo caracter

<details>
<summary>Lista de Exercícios</summary>

1. Leia um caractere (letra) e um número (dígito). Concatene-os e exiba o resultado.
2. Leia a primeira letra do seu nome e a primeira letra do seu sobrenome. Concatene-as e mostre as iniciais.
3. Leia um caractere especial (como #, @, etc.) e adicione um '!' ao final. Exiba o resultado.
4. Leia duas vogais e exiba a combinação delas em sequência.
5. Leia duas letras maiúsculas e concatene-as para formar uma sigla fictícia de país.
6. Leia um caractere que represente um sinal matemático (ex: +, -) e concatene com '='. Mostre a expressão.
7. Leia uma letra e concatene-a com ela mesma. Exiba o resultado.
8. Leia um caractere e crie uma palavra adicionando 'P' no início e 'S' no final. Mostre o resultado.
9. Leia um dígito numérico (0-9) e uma letra. Concatene-os para formar um código de produto fictício.
10. Leia um caractere como ':' e concatene com ')' para formar um "rosto feliz". Exiba o resultado.
11. Leia três letras e concatene-as para formar a sigla de uma cidade imaginária.
12. Leia um caractere de moeda (ex: $) e concatene com um valor fixo '100'. Mostre o resultado.
13. Leia uma letra e adicione um '.' ao final. Exiba como se fosse uma abreviação.
14. Leia dois símbolos (ex: & e %) e concatene-os. Mostre a combinação.
15. Leia um caractere alfabético e um numérico. Concatene-os para formar uma senha básica.
16. Leia uma letra e concatene com '®'. Exiba como se fosse uma marca registrada.
17. Leia o caractere '<' e concatene com '3' para formar um coração. Mostre o resultado.
18. Leia a letra 'D' e concatene com 'ó' para formar "Dó". Exiba a nota musical.
19. Leia a letra 'O' e concatene com 'K'. Mostre a palavra formada.
20. Leia o número '3' e concatene com '°C' para formar uma temperatura fictícia.
21. Leia um '*' e concatene com outro '*' para criar um símbolo de destaque.
22. Leia um número (dígito) e concatene com '%'. Exiba o valor percentual.
23. Leia o caractere '#' e concatene com uma palavra fixa 'alerta'. Mostre o resultado.
24. Leia o caractere '€' e concatene com '50' para formar um valor monetário.
25. Leia a letra 'π' (Pi) e concatene com '=3.14'. Exiba a representação simplificada.
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
26. Leia o símbolo '$' e concatene com '99' para formar um preço fictício.
27. Leia o caractere '-' e concatene com '>' para formar uma seta. Mostre o resultado.
28. Leia um '!' e concatene com outro '!' para criar uma exclamação enfática.
29. Leia a letra 'C' e concatene com '©' para formar "Copyright". Exiba o resultado.
30. Leia ':' e concatene com 'D' para formar um rosto sorridente. Mostre o resultado.

</details>

---

## tipo `cadeia`

Em algumas situações, precisa-se armazenar em uma variável um texto ou uma quantidade grande de caracteres. Para isso, utiliza-se uma variável do tipo `cadeia`. Uma variável do tipo `cadeia` armazena uma **sequência ordenada de caracteres** (símbolos), como letras, números ou sinais especiais.

Por exemplo: `"Tolkien"`, `"15/11/1889"`, `"A"`.

> [!CAUTION]
> Em Portugol, uma cadeia de caracteres é ***sempre*** delimitada por **aspas duplas** (`"texto"`), diferente de um caractere único, que usa aspas simples (`'a'`).

### sintaxe
A sintaxe é a palavra reservada `cadeia`, seguida do nome da variável:

```portugol
cadeia nome_da_variavel
```

### exemplo
O valor dessa variável pode ser definido diretamente pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)). Caso seja definido pelo programador, o conteúdo deve estar entre aspas duplas.

Veja o exemplo abaixo:

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
- **finalidade**: armazena textos, palavras ou frases;
- **delimitadores**: usa **aspas duplas** (`" "`);
- **exemplos de uso**: nomes, endereços, textos longos.

### exercícios - tipo cadeia

<details>
<summary>Lista de Exercícios</summary>

1. Leia o primeiro nome e o sobrenome do usuário. Concatene-os com um espaço entre eles e exiba o nome completo.
2. Leia o nome de uma pessoa e concatene com a frase "Bem-vindo(a), ". Exemplo: "Bem-vindo(a), Maria".
3. Leia o nome de uma rua e um número. Concatene-os para formar um endereço completo (ex: "Rua das Flores, 123").
4. Leia um nome de usuário e um domínio (ex: "gmail.com"). Concatene-os com "@" no meio para formar um e-mail.
5. Leia dia, mês e ano e concatene-os no formato "DD/MM/AAAA".
    ```portugol
    programa {
        funcao inicio() {
            cadeia dia, mes, ano
            escreva("Digite o valor para dia : ")
            leia(dia)
            escreva("Digite o valor para mes : ")
            leia(mes)
            escreva("Digite o valor para ano : ")
            leia(ano)

            escreva(dia + "/" + mes + "/" + ano + "\n")
            escreva(dia, "/", mes, "/", ano)
        }
    }
    ```
6. Leia duas partes de uma frase (ex: "Estou aprendendo" e "Portugol"). Concatene-as para formar uma frase completa.
7. Leia um prefixo (ex: "PROD") e um número (ex: "001"). Concatene-os para formar um código de produto.
8. Leia uma palavra e concatene com "123_" no início para criar uma senha simples.
9. Leia o título principal e um subtítulo. Concatene-os separados por ": " (ex: "História: O Início").
10. Leia uma palavra e concatene com "#" no início para formar uma hashtag (ex: "#Aprendizado").
11. Leia um domínio (ex: "www.exemplo") e uma extensão (ex: ".com"). Concatene-os para formar uma URL.
12. Leia um verbo (ex: "Salvar") e um objeto (ex: "documento"). Concatene-os para formar um comando (ex: "Salvar documento").
13. Leia o nome de um artista e uma música. Concatene-os no formato "Artista - Música".
14. Leia uma mensagem e concatene com "ATENÇÃO: " no início para destacá-la.
15. Leia uma pergunta (ex: "Qual seu animal favorito") e adicione "?" ao final.
16. Leia o início de uma frase (ex: "A vida é ") e concatene com "uma jornada". Exiba a citação completa.
17. Leia um número e concatene com "Resultado: " para exibi-lo formatado.
18. Leia três letras e quatro números. Concatene-os no formato "ABC-1234".
19. Leia um ingrediente e uma quantidade (ex: "farinha" e "2 xícaras"). Concatene-os para formar uma instrução.
20. Leia uma cidade e uma temperatura (ex: "25°C"). Concatene-os como "Cidade: Rio - 25°C".
21. Leia um nome e concatene com "_user" no final para criar um nome de usuário.
22. Leia o nome de um arquivo (ex: "relatorio") e sua extensão (ex: "pdf"). Concatene-os com "." no meio.
23. Leia o nome de um evento e uma data. Concatene-os como "Evento: Festa - Data: 20/05".
24. Leia um código de erro (ex: "404") e concatene com "Erro: " para formar uma mensagem de erro.
25. Leia um campo (ex: "Nome") e um valor (ex: "Carlos"). Concatene-os como "Nome: Carlos".
26. Leia um número (ex: "3") e concatene com " de 10 etapas concluídas".
27. Leia um nome e um cargo. Concatene-os como "Joana Silva - Gerente de Projetos".
28. Leia um número (ex: "1") e um item (ex: "Comprar pão"). Concatene-os como "1. Comprar pão".
29. Leia um valor monetário (ex: "50") e concatene com "R$" no início.
30. Leia um nome e um número de telefone. Concatene-os como "Maria - Tel: 9999-8888".

</details>

---

## tipo `logico`
Em determinadas situações faz-se necessário trabalhar com informações do tipo verdadeiro e falso. Este tipo de necessidade aparece muito em operações relacionais para exibir se determinada condição é *verdadeira* ou *falsa*.

Por exemplo: como poderíamos verificar se um número digitado pelo usuário é maior que zero? Através de uma variável do tipo `logico`. Uma variável do tipo `logico` é aquela que contém um tipo de dado, usado em operações lógicas, que possui somente dois valores, que são consideradas pelo Portugol como **verdadeiro** e **falso**.

### sintaxe
A declaração de uma variável do tipo logico é simples.

A sintaxe é a palavra reservada `logico` seguida do nome da variável.

```portugol
logico nome_da_variavel
```

### exemplo
O valor que essa variável assumirá poderá ser especificado pelo programador ou solicitado ao usuário (ver [Operação de Atribuição](variaveis-constantes.md#atribuicoes)). Lembrando que em ambos os casos a variável só assume valores **verdadeiro** ou **falso**.

Para melhor compreensão deste conceito, confira o exemplo abaixo.

```portugol
programa
{
    funcao inicio()
    {
        logico teste
        inteiro num

        num = 42

        teste = num > 0

        escreva("O número digitado é maior que zero? ", teste)
    }
}
```

### resumo
- **finalidade** : armazena valores **verdadeiro** ou **falso**;
- **uso típico** : condições, flags (ex: verificar se um usuário está ativo);

---

## exercícios completos

<details>
<summary>Lista de Exercícios</summary>

### **Exercícios de Operações Aritméticas e Concatenação Básica**
1. Leia um número inteiro e um real. Calcule a soma deles e exiba: `"Soma: "` seguido do resultado.
2. Leia dois caracteres. Concatene-os com um traço entre eles e exiba o resultado (ex: `'A'` e `'B'` → `"A-B"`).
3. Leia um inteiro, subtraia 5 e multiplique o resultado por 3. Exiba o valor final.
4. Leia uma palavra (cadeia) e um número real. Exiba: `"Palavra: [palavra], Número: [número]"`.
5. Leia um número real, divida-o por 2 e exiba: `"Metade: [resultado]"`.
6. Leia um caractere e um inteiro. Repita o caractere duas vezes e concatene com o número (ex: `'A'` e `5` → `"AA5"`).
7. Leia dois inteiros, calcule a diferença (primeiro - segundo) e exiba: `"Diferença: [resultado]"`.
8. Leia uma letra (caractere) e um sobrenome (cadeia). Concatene-os com um espaço: `"J Silva"`.
9. Leia um preço (real), aplique 10% de desconto (multiplique por 0.9) e exiba o novo valor.
10. Leia um inteiro e exiba: `"Dobro: [dobro]"`.
11. Leia um símbolo (caractere) e um inteiro. Concatene-os para formar uma senha (ex: `'#'` e `123` → `"#123"`).
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
12. Leia um inteiro e um real. Calcule a divisão do inteiro pelo real e exiba o resultado.
13. Leia um nome (cadeia) e uma idade (inteiro). Exiba: `"[nome] tem [idade] anos"`.
14. Leia dois reais, calcule a média e exiba com uma casa decimal: `"Média: [valor]"`.
15. Leia um código (caractere) e um número. Exiba: `"Código: [A1]"`.
16. Leia um inteiro, subtraia 15% (multiplique por 0.85) e exiba como real.
17. Leia um dia (inteiro) e um mês (cadeia). Exiba: `"Data: [dia] de [mês]"`.
18. Leia um número real e exiba sua parte inteira (truncada).
    ```portugol
    programa {
        funcao inicio() {
            real valor
            inteiro truncado

            escreva("Digite um número decimal : ")
            leia(valor)
            truncado = valor

            escreva("O valor digitado foi : " + truncado)
        }
    }
    ```
19. Leia um caractere e exiba três repetições dele (ex: `'X'` → `"XXX"`).
20. Leia um salário (real), calcule 25% dele e exiba: `"Aumento: [valor]"`.
21. Leia um animal (cadeia) e um número. Exiba: `"[animal] tem [número] patas"`.
22. Leia dois inteiros, calcule o produto e exiba: `"[num1] x [num2] = [resultado]"`.
23. Leia um nome e uma inicial (caractere). Exiba: `"[nome] ([inicial])"`.
24. Leia um real e exiba: `"Terça parte: [valor/3]"`.
25. Leia uma cidade (cadeia) e população (inteiro). Exiba: `"Cidade: [cidade] - População: [valor]"`.

---

### **Exercícios de Combinação de Tipos e Operações**
1. Leia um inteiro e concatene com `" unidades"` (ex: `5` → `"5 unidades"`).
2. Leia uma temperatura (real) e exiba: `"Temperatura atual: [valor]°C"`.
3. Leia preço (real) e quantidade (inteiro). Calcule o total e exiba com duas casas decimais.
4. Leia uma sigla (caractere) e um país (cadeia). Exiba: `"[sigla] - [país]"`.
5. Leia um real e exiba sua parte inteira (ex: `3.7` → `3`).
6. Leia nome, ano de nascimento e ano atual. Calcule e exiba a idade.
7. Leia um símbolo matemático (caractere) e dois números. Exiba: `"[num1] [símbolo] [num2]"`.
8. Leia um produto (cadeia) e preço (real). Exiba: `"[produto]: R$[preço]`" (duas casas decimais).
9. Leia uma distância (real) e exiba o valor arredondado para inteiro.
10. Leia uma letra (caractere) e um número. Exiba o número seguido da letra (ex: `5A`).
11. Leia um inteiro, calcule 1/3 e exiba como real (ex: `6` → `2.0`).
12. Leia adjetivo e substantivo. Exiba: `"Que [adjetivo] [substantivo]!"`.
13. Leia um código de erro (inteiro) e exiba: `"Erro #[código]"`.
14. Leia um real e exiba com duas casas decimais.
15. Leia hora e minutos (inteiros). Exiba: `"[hora]:[minutos]"` (com dois dígitos, ex: `14:05`).
16. Leia um nome de usuário (cadeia) e concatene com `"@email.com"`.
17. Leia um valor (real) e exiba: `"R$[valor]"` (duas casas decimais).
18. Leia um inteiro e exiba: `"Antecessor: [valor-1], Sucessor: [valor+1]"`.
19. Leia uma senha (cadeia) e um dígito (inteiro). Concatene-os (ex: `"senha9"`).
20. Leia dia, mês e ano (inteiros). Formate como `"DD/MM/AAAA"` (com dois dígitos).
21. Leia uma nota (real) e exiba: `"Sua nota foi: [nota]"`.
22. Leia nome e sobrenome (cadeia). Exiba: `"[sobrenome], [nome]"`.
23. Leia um real e exiba: `"Quadrado: [valor^2]"`.
24. Leia um animal (cadeia). Exiba: `"[animal]s são fofos"` (ex: `"Gatos são fofos"`).
25. Leia um preço (real) e exiba com 20% de desconto: `"Preço com desconto: [valor]"`.

---

### **Exercícios de Operações Mistas e Contextos Práticos**

1. Leia um CPF (cadeia) e formate como `"XXX.XXX.XXX-XX"` (ex: `"123"`, `"456"`, `"789"` e `"00"` → `"123.456.789-00"`).
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
2. Leia um real e exiba sua parte inteira.
3. Leia um nome (cadeia) e um número (inteiro). Exiba: `"[nome] é o número [número]"`.
4. Leia um valor e calcule 15% de gorjeta. Exiba: `"Total a pagar: [valor + gorjeta]"`.
5. Leia um código (caractere) e um número. Exiba: `"Código: [A]-[10]"`.
6. Leia uma velocidade (real) e exiba: `"Velocidade: [valor] km/h"`.
7. Leia um telefone (cadeia) e formate com traço (ex: `"99998888"` → `"9999-8888"`).
8. Leia metros (real), converta para centímetros (inteiro) e exiba.
9. Leia um filme (cadeia) e ano (inteiro). Exiba: `"[filme] ([ano])"`.
10. Leia preço e quantidade. Calcule o total com 10% de taxa e exiba.
11. Leia um código (inteiro) e exiba: `"PRD-[código]"`.
12. Leia um inteiro e exiba: `"O número [valor] é par?"`.
13. Leia uma data (cadeia) e exiba: `"Data de nascimento: [data]"`.
14. Leia um real e exiba: `"Valor aproximado: [parte_inteira]"`.
15. Leia um usuário (cadeia) e exiba: `"Usuário: [usuário]"`.
16. Leia uma mensagem e concatene com `" - Assinatura"`.
17. Leia um inteiro e exiba: `"Triplo: [valor*3]"`.
18. Leia um código de barras (cadeia) e exiba: `"Código: [valor]"`.
19. Leia um valor (real) e exiba: `"Total a pagar: R$[valor]"`.
20. Leia endereço (cadeia) e número (inteiro). Exiba: `"[endereço], nº [número]"`.
21. Leia tempo em horas (real) e converta para minutos (inteiro).
22. Leia nome (cadeia) e idade (inteiro). Exiba: `"[nome], [idade] anos"`.
23. Leia um real e exiba com duas casas decimais: `"Precisão: [valor]"`.
    ```portugol
    programa {
        funcao inicio() {
            real valor
            inteiro convert

            escreva("Digite um valor real : ")
            leia(valor)
            convert = valor * 100
            valor = convert / 100

            escreva(valor)
        }
    }
    ```
24. Leia código (caractere) e número. Exiba: `"[Código][Número]"`.
25. Leia um inteiro e exiba: `"O sucessor de [n] é [n+1]"`.

---

### **Exercícios de Expressões Complexas e Formatação**
1. Leia um peso (real) e exiba: `"Peso: [valor] kg"`.
2. Leia um inteiro e exiba: `"[número] é um número importante"`.
3. Leia um real, calcule 30% e exiba com duas casas decimais.
4. Leia um nome e exiba: `"[nome] é bem-vindo(a)!"`.
5. Leia um real e exiba: `"Valor positivo? [valor]"`.
6. Leia código (caractere) e status (cadeia). Exiba: `"[Código] - [Status]"`.
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
7. Leia um inteiro e exiba sua metade (divisão inteira).
8. Leia cidade (cadeia) e temperatura (real). Exiba: `"[Cidade]: [temp]°C"`.
9. Leia um inteiro e exiba: `"[valor]^10 = [resultado]"`.
10. Leia um nome e exiba: `"Como você está, [nome]?"`.
11. Leia um inteiro e exiba: `"O quadrado de [n] é [n^2]"`.
12. Leia uma placa (cadeia) e formate com traço (ex: `"ABC1234"` → `"ABC-1234"`).
13. Leia um real e exiba: `"Valor total: [valor]"` (duas casas decimais).
14. Leia um código (inteiro) e exiba: `"ERRO-[código]"`.
15. Leia um preço e exiba com 5% de desconto: `"Preço final: [valor]"`.
16. Leia nome (cadeia) e dia (inteiro). Exiba: `"[nome] chega no dia [dia]"`.
17. Leia um inteiro e exiba: `"Antes: [n-1], Depois: [n+1]"`.
18. Leia produto (cadeia) e código (caractere). Exiba: `"[produto] - Cód. [código]"`.
19. Leia um real e exiba: `"Parte inteira: [int], Decimal: [decimal]"`.
    ```portugol
    programa {
        funcao inicio() {
            inteiro parte_inteira
            real decimal, valor

            escreva("Digite um numero real : ")
            leia(valor)

            parte_inteira = valor
            decimal = valor - parte_inteira
            escreva("valor : ", valor)
            escreva("\nparte_inteira : ", parte_inteira)
            escreva("\ndecimal : ", decimal)
        }
    }
    ```
20. Leia hora (inteiro) e exiba: `"[hora] horas"`.
21. Leia um real e exiba: `"[valor] reais"`.
22. Leia nome e ano. Exiba: `"[nome] © [ano]"`.
23. Leia um inteiro e exiba: `"Metade aproximada: [n/2.0]"`.
24. Leia um símbolo e exiba: `"[S]"` (ex: `'#'` → `"[#]"`).
25. Leia um real e exiba: `"Número lido: [valor]"`.

</details>
