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
