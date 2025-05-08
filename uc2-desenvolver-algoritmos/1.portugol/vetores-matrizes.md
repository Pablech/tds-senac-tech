# Vetores e Matrizes

## vetores

Vetores são estruturas fundamentais para armazenar **coleções de dados do mesmo tipo** de forma organizada e eficiente.

### por que usar vetores?
1. **Agrupamento lógico**: Armazena múltiplos valores relacionados sob um único nome
2. **Controle simplificado**: Acessa elementos por posição em vez de usar variáveis separadas
3. **Flexibilidade**: Tamanho pode ser fixo ou definido dinamicamente na inicialização

### sintaxe básica

#### declaração
```portugol
<tipo> <nome>[<tamanho>]    // tamanho fixo
<tipo> <nome>[] = {valores} // tamanho dinâmico
```

#### exemplos
```portugol
// vetor de inteiros com 5 posições
inteiro idades[5]

// vetor de caracteres com tamanho implícito
caracter letras[] = {'A','B','C'}

// vetor de strings inicializado
cadeia frases[3] = {"Bom dia", "Boa tarde", "Boa noite"}
```

### características essenciais

| Aspecto             | Descrição                                  | Exemplo          |
|---------------------|--------------------------------------------|------------------|
| **Indexação**       | Sempre inicia em 0                         | vetor[0] (1º elemento) |
| **Tipo de Dados**   | Todos elementos devem ser do mesmo tipo    | Não misture inteiros e strings |
| **Tamanho Máximo**  | Definido na declaração ou na inicialização | inteiro[10] → 10 elementos |

### manipulação de elementos

#### acesso e modificação
```portugol
// acesso à posição 2 (3º elemento)
real preco = produtos[2]

// modificação da posição 3 (4º elemento)
notas[3] = 8.5
```

#### diagrama de índices
Para um vetor de 4 elementos:
```
Índices: [0]   [1]   [2]   [3]
Valores:  10    20    30    40
```

### boas práticas
1. **Nomes Descritivos**: Use `notasAlunos` em vez de `vetor1`
2. **Verificação de Limites**: Evite acessar índices fora do intervalo
3. **Inicialização Completa**: Preencha todas posições antes do uso

### exemplo completo
```portugol
programa {
    funcao inicio() {
        // Vetor de inteiros inicializado
        inteiro codigos[5] = {15, 22, 8, 10, 11}

        // Acesso aos elementos
        escreva("Primeiro código: " + codigos[0] + "\n")  // 15
        escreva("Último código: " + codigos[4] + "\n")     // 11

        // Modificação de elemento
        codigos[1] = 30
        escreva("Código atualizado: " + codigos[1] + "\n") // 30

        // Vetor de caracteres dinâmico
        caracter palavra[] = {'P','r','o','g','r','a','m','a'}
        escreva("Terceira letra: " + palavra[2] + "\n")   // 'o'
    }
}
```

**Saída:**
```
Primeiro código: 15
Último código: 11
Código atualizado: 30
Terceira letra: o
```

### casos especiais
1. **Impossibilidade de Redefinição de Tamanho**:
    ```portugol
    inteiro numeros[] = {1,2,3}  // tamanho 3
    numeros = {4,5,6,7}          // erro
    ```

2. **Iteração com Laços**:
    ```portugol
    para (inteiro i = 0; i < 5; i++) {
        escreva(codigos[i], " ")
    }
    ```

### exercícios - `vetor`

<details>
<summary>Lista de Exercícios</summary>

### **Básico**
1. Declare um vetor de 5 números inteiros, leia os valores do usuário e exiba-os.
2. Crie um vetor de 10 números e calcule a soma de todos os elementos.
3. Encontre o maior valor em um vetor de números inteiros aleatórios.
4. Encontre o menor valor em um vetor de números reais aleatórios.
5. Conte quantos números pares existem em um vetor de 15 inteiros aleatórios.
6. Verifique se um número digitado pelo usuário está presente em um vetor gerado aleatoriamente.
7. Calcule a média dos valores de um vetor de notas (valide para valores entre 0 e 10).
8. Substitua todos os números negativos (gerados aleatoriamente) em um vetor por zero.
9. Copie os elementos de um vetor para outro vetor.
10. Exiba os elementos de um vetor aleatórios na ordem inversa.

### **Intermediário**
11. Ordene um vetor de números inteiros em ordem crescente.
    ```portugol
    programa
    {
        inclua biblioteca Util
        funcao inicio()
        {
            const inteiro TAM = 10
            inteiro numeros[TAM], invertido[TAM]
            inteiro aux, contador = TAM

            // popular meu vetor
            para(inteiro i = 0; i < TAM; i++){
                numeros[i] = Util.sorteia(1, 100)
            }

            escreva("antes de ordenar : ")
            para(inteiro i = 0; i < TAM; i++){
                escreva(numeros[i], ", ")
            }

            faca{
                para(inteiro i = 0; i < contador - 1; i++){
                    se(numeros[i] > numeros[i+1]){
                        aux = numeros[i]
                        numeros[i] = numeros[i+1]
                        numeros[i+1] = aux
                    }
                }
                contador--
            }enquanto(contador >= 0)

            escreva("\n\ndepois de ordenar : ")
            para(inteiro i = 0; i < TAM; i++){
                escreva(numeros[i], ", ")
            }

            // invertendo o vetor
            para(inteiro i = TAM; i > 0; i--){
                invertido[TAM-i] = numeros[i-1]
            }

            escreva("\n\nvetor invertido : ")
            para(inteiro i = 0; i < TAM; i++){
                escreva(invertido[i], ", ")
            }
        }
    }
    ```
12. Retorne a posição da primeira ocorrência de um elemento em um vetor.
    ```portugol
    programa
    {
        inclua biblioteca Util
        funcao inicio()
        {
            const inteiro TAM = 20
            inteiro numeros[TAM]
            inteiro valor_para_buscar = 10, indice_do_valor = -1

            para(inteiro i = 0; i < TAM; i++){
                numeros[i] = Util.sorteia(0, 20)
            }

            para(inteiro i = 0; i < TAM; i++){
                se(numeros[i] == valor_para_buscar){
                    indice_do_valor = i
                    pare
                }
            }
            se(indice_do_valor >= 0){
                escreva("numeros[",indice_do_valor,"] -> ", valor_para_buscar)
            }
            senao{
                escreva("nao achei esse valor")
            }
        }
    }
    ```
13. Inverta a ordem dos elementos de um vetor sem usar um vetor auxiliar.
14. Junte dois vetores ordenados em um terceiro vetor mantendo a ordem.
15. Remova valores duplicados de um vetor e exiba o resultado.
16. Encontre o segundo maior valor em um vetor.
17. Verifique se um vetor está ordenado em ordem crescente.
18. Desloque todos os elementos de um vetor para a esquerda (o primeiro elemento vai para o final).
19. Insira um número em uma posição específica do vetor e ajuste os elementos.
20. Remova todas as ocorrências de um número específico em um vetor.

### **Avançado**
21. Verifique se os elementos de um vetor formam um palíndromo.
22. Conte quantas vezes cada elemento único aparece em um vetor.
23. Rotacione os elementos de um vetor em *k* posições para a direita.
24. Encontre o número ausente em uma sequência de 1 a N armazenada em um vetor (ex: [1, 2, 4] → 3).
25. Encontre a sequência consecutiva mais longa em um vetor não ordenado (ex: [1, 3, 2] → sequência 1-2-3).
26. Encontre dois números em um vetor cuja soma seja igual a um valor alvo.

</details>

## matrizes

Para compreender bem o conceito de **matriz**, é importante primeiro entender o conceito de **vetor**.
Os vetores permitem resolver muitos problemas em que precisamos armazenar várias informações, mas têm a limitação de serem estruturas **lineares** (unidimensionais).

Por exemplo, imagine que queremos armazenar **três notas obtidas por quatro alunos diferentes**. Se usássemos apenas vetores, precisaríamos de soluções menos organizadas. Nesse caso, existe uma estrutura mais adequada: **a matriz**.

### O que é uma matriz?

A matriz é definida como um vetor com **mais de uma dimensão** (geralmente duas).
Enquanto o vetor armazena informações em **uma única linha**, a matriz armazena dados de forma **tabular**, ou seja, organizada em **linhas e colunas**.

Veja abaixo uma matriz que armazena três notas de quatro alunos:

| Linhas/Colunas | 0   | 1   | 2   |
| -------------- | --- | --- | --- |
| **0**          | 10  | 9   | 6.7 |
| **1**          | 6   | 8   | 10  |
| **2**          | 8   | 7   | 4.5 |
| **3**          | 5.2 | 3.3 | 0.3 |

Repare que **cada linha** representa um aluno e **cada coluna** representa uma das suas três notas.

### Como declarar uma matriz

Assim como os vetores, **todos os elementos da matriz são do mesmo tipo** (inteiro, real, caractere etc.).
Na declaração, sempre indicamos:

* O tipo de dado;
* O nome da variável;
* O número de linhas e colunas (nesta ordem), entre colchetes `[ ]`.

### Como acessar elementos

Para acessar um elemento da matriz (para **preencher** ou **consultar**), usamos **dois índices**:

* Um índice para a linha;
* Um índice para a coluna;

O índice é sempre um valor inteiro e aparece entre colchetes `[ ]` logo após o nome da matriz.

### Exemplo de sintaxe

```portugol
// declaração de uma matriz de números reais com 5 linhas e 3 colunas
real nome_da_variavel[5][3]

// gravar um valor na matriz na posição 0 (primeira linha) e 1 (segunda coluna)
nome_da_variavel[0][1] = 2.5
```

⚠ **Atenção**: Assim como nos vetores, tentar acessar um índice fora do tamanho declarado gera **erro de execução**.

### Exemplo completo

```portugol
programa
{
    funcao inicio()
    {
        // declaração de uma matriz de inteiros
        // com duas linhas e duas colunas já inicializada.
        inteiro matriz[2][2] = {{15, 22}, {10, 11}}

        // atribui -1 na primeira linha e segunda coluna.
        matriz[0][1] = -1

        // imprime o valor 15 (primeira linha, primeira coluna).
        inteiro i = 0
        escreva(matriz[i][0])
        escreva("\n")

        // imprime o valor 11 (última linha, última coluna).
        escreva(matriz[1][1])

        // declaração de uma matriz de reais
        // com duas linhas e quatro colunas.
        real outra_matriz[2][4]

        // declaração de uma matriz de caracteres onde
        // o tamanho das linhas e colunas é definido pela inicialização.
        caracter jogo_velha[][] = {
            {'X', 'O', 'X'},
            {'O', 'X', 'O'},
            {' ', ' ', 'X'}
        }
    }
}
```

### exercícios - `matriz`

<details>
<summary>Lista de Exercícios</summary>

### **Básico**
1. Declare uma matriz de inteiros 3x3 e preencha manualmente com valores de 1 a 9. Depois, imprima todos os elementos.
1. Declare uma matriz de reais 2x4, peça ao usuário para preencher os valores e depois imprima-os na forma tabular.
1. Crie uma matriz de caracteres 3x3 representando um tabuleiro da velha preenchido apenas com espaços.
1. Declare uma matriz de inteiros 4x2, atribua o valor 0 para todos os elementos e depois imprima.
1. Leia valores para uma matriz 3x3 e calcule a soma de todos os seus elementos.
1. Preencha uma matriz 2x3 com números fornecidos pelo usuário e conte quantos números pares ela contém.
1. Leia uma matriz 3x3 de inteiros e imprima apenas os elementos da diagonal principal.
1. Leia uma matriz 3x3 de inteiros e imprima apenas os elementos da diagonal secundária.
1. Crie uma matriz 4x1 com os nomes de quatro pessoas e imprima-os.
1. Preencha uma matriz 3x2 com valores fornecidos pelo usuário e encontre o maior valor armazenado.

### **Intermediário**
1. Leia uma matriz 3x3 e conte quantos números negativos ela contém.
1. Leia uma matriz 4x4 e imprima a soma dos elementos de cada linha.
1. Leia uma matriz 3x3 e imprima a soma dos elementos de cada coluna.
1. Preencha uma matriz 2x2 com números fornecidos pelo usuário e verifique se ela é simétrica (A\[i]\[j] = A\[j]\[i]).
1. Crie uma matriz 4x4 e substitua todos os números ímpares por zero.
1. Leia uma matriz 3x3 e conte quantos elementos estão acima da diagonal principal.
1. Leia uma matriz 3x3 e conte quantos elementos estão abaixo da diagonal principal.
1. Crie uma matriz 5x5 com valores aleatórios entre 1 e 100 e encontre o menor valor e sua posição (linha e coluna).
1. Leia uma matriz 3x4 e calcule a média dos valores de cada coluna.
1. Leia uma matriz 3x3 e diga se ela é uma matriz identidade (1 na diagonal principal e 0 nos outros elementos).

### **Avançado**
1. Crie uma matriz 3x3, leia seus valores e gere uma nova matriz transposta (troque linhas por colunas).
1. Leia duas matrizes 2x2 e calcule a matriz soma entre elas.
1. Leia duas matrizes 2x2 e calcule a matriz produto (multiplicação matricial) entre elas.
1. Leia uma matriz 4x4 e ordene todos os seus elementos em ordem crescente (como se fosse um único vetor).
1. Leia uma matriz 3x3 e verifique se ela é simétrica em relação à diagonal secundária.
1. Leia uma matriz 5x5 e conte quantos elementos são múltiplos de 3 ou de 5.
1. Leia uma matriz 3x3 e verifique se ela é uma matriz mágica (soma das linhas, colunas e diagonais são iguais).
1. Leia uma matriz 4x4 e substitua todos os números negativos pelo valor absoluto.
1. Leia uma matriz 6x6, encontre a maior soma possível de qualquer linha e de qualquer coluna e informe essas somas.
1. Leia uma matriz 4x4 e rotacione-a 90 graus no sentido horário.

</details>
