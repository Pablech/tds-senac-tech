# Estruturas de Controle

As estruturas de controle são mecanismos fundamentais para definir a ordem de execução das instruções em um programa. Elas permitem criar lógicas complexas e adaptáveis, essenciais para resolver problemas computacionais não-lineares.

### por que são importantes?
- **Flexibilidade**: Permitem desviar do fluxo sequencial padrão (top-down)
- **Tomada de Decisão**: Executam ações condicionalmente
- **Eficiência**: Automatizam tarefas repetitivas
- **Controle de Fluxo**: Gerenciam a execução com base em estados internos/externos


## laços de repetição
Situações que exigem processamento iterativo são resolvidas com estruturas de repetição. Esses mecanismos permitem executar blocos de código múltiplas vezes até que uma condição específica seja atendida.

### casos de uso típicos
1. Processamento de coleções de dados (ex: listas de alunos)
2. Validação contínua de entradas do usuário
3. Execução de cálculos iterativos (ex: séries matemáticas)
4. Implementação de menus interativos

### tipos de laços no portugol
1. **Pré-testado**: Verifica a condição antes da execução
2. **Pós-testado**: Executa pelo menos uma vez antes de verificar
3. **Com Variável de Controle**: Gerencia automaticamente iterações

### componentes chave de um laço
| Elemento          | Função                          |
|-------------------|---------------------------------|
| Condição de Saída | Define critérios para término   |
| Corpo do Laço     | Bloco de código repetido        |
| Atualização       | Modifica estado para controle   |

---

### Vantagens no Uso de Laços:
- **Redução de Código**: Elimina repetições manuais
- **Manutenção Simplificada**: Alterações centralizadas
- **Escalabilidade**: Processa volumes dinâmicos de dados

### Nesta seção, serão abordados os seguintes tópicos
- [comando `enquanto`](#comando-enquanto)
- [comando `faca-enquanto`](#comando-faca-enquanto)
- [comando `para`](#comando-para)

---

## comando `enquanto`

O laço `enquanto` é uma estrutura de repetição que executa um bloco de código **apenas enquanto uma condição for verdadeira**, verificando-a antes de cada iteração, isto é, Pré-Testado.

Ideal para situações onde:
- O número de repetições é desconhecido
- A condição inicial precisa ser validada antes da execução

### funcionamento
1. Verifica a condição
2. Se `verdadeira`:
    - Executa o bloco de código
    - Retorna à verificação
3. Se `falsa`:
    - Encerra o laço

<img src="https://portugol.dev/assets/recursos/ajuda/recursos/imagens/Dark/enquanto.png" style="background-color: #000000;"/><br>*(Diagrama ilustrando a verificação condicional antes da execução do bloco)*

### sintaxe
```portugol
enquanto (<condição>) {
    // bloco de código a ser repetido
    // atualização da condição (crucial para evitar loops infinitos)
}
```

### exemplo - controle de execução
```portugol
programa {
    funcao inicio() {
        caracter parar = 'N'  // valor inicial diferente de 'S'

        enquanto (parar != 'S' ou parar != 's') {
            escreva("Deseja parar o laço? (S/N): ")
            leia(parar)

            // exemplo de lógica adicional
            se (parar == 'N' ou parar == 'n') {
                escreva("\nContinuando operações...\n")
            }
        }
        escreva("\nLaço encerrado!")
    }
}
```

**Comportamento:**
- O laço persiste até que o usuário digite 'S' ou 's'
- Se o usuário inserir 'S' ou 's' na primeira verificação, o bloco não é executado

### características chave
| Aspecto              | Descrição                                  |
|----------------------|-------------------------------------------|
| Verificação          | Pré-execução (teste no início)            |
| Iterações Mínimas    | Zero (se condição inicial for falsa)      |
| Uso Típico           | Menus interativos, processamento condicional |
| Controle             | Requer atualização explícita da condição  |

### aplicações comuns
1. **Jogo da Velha**
    ```portugol
    logico jogo_ativo = verdadeiro
    inteiro jogadas = 0

    enquanto (jogo_ativo e jogadas < 9) {
        // Lógica do jogo
        jogadas++
    }
    ```

2. **Validação de Entrada**
    ```portugol
    inteiro senha
    enquanto (senha != 1234) {
        escreva("Digite a senha: ")
        leia(senha)
    }
    ```

### boas práticas
- **Evite Loops Infinitos**: Garanta que a condição eventualmente se torne falsa
- **Use Variáveis de Controle**: Para casos complexos, utilize flags booleanas
- **Combine com `pare`**: Para saídas antecipadas do laço

### exercícios - comando `enquanto`

<details>
<summary>Lista de Exercícios</summary>

### **Básico**
1. Peça um número inteiro positivo e exiba todos os números de 1 até ele.
2. Solicite a idade do usuário até que seja digitado um valor entre 0 e 120.
3. Some números digitados pelo usuário até que ele insira 0.
4. Peça uma senha numérica até que o usuário digite `1234`.
5. Exiba um menu com opções (1-Sair, 2-Continuar) e repita até que o usuário escolha sair.
6. Exiba todos os números pares entre 0 e um valor digitado pelo usuário.
7. Mostre os múltiplos de 5 entre 5 e 100.
8. Peça um número e faça uma contagem regressiva até 0.
9. Calcule a média de 5 notas digitadas pelo usuário.
10. Exiba a tabuada do 7 de 1 a 10.

### **Intermediário**
11. Calcule o fatorial de um número digitado.
12. Verifique se um número é primo usando uma estrutura de repetição.
13. Calcule a soma dos dígitos de um número inteiro (ex: 123 → 6).
14. Salve um número entre 1-10 e peça ao usuário adivinhar até acertar.
15. Peça números até que o usuário digite um valor entre 10 e 20.
16. Leia nomes de alunos até que seja digitado "FIM".
17. Some números até que a soma ultrapasse 100 e exiba o resultado.
18. Permita 3 tentativas para acertar uma senha pré-definida.
19. Exiba números de 1 a 100 que são múltiplos de 3 ou 5.
<!-- 20. Conte quantas vogais existem em uma palavra digitada (letra por letra). -->

### **Avançado**
20. Gere a sequência de Fibonacci até um termo especificado pelo usuário.
    ```portugol
    programa {
        funcao inicio() {
            // 20. Gere a sequência de Fibonacci até um termo especificado pelo usuário.
            inteiro n1 = 0, n2 = 1
            inteiro soma = 0, limite
            cadeia pause

            escreva("digite um número limite para a seq de fibonacci : ")
            leia(limite)

            enquanto(soma <= limite){
                escreva("n1 : ", n1, " - n2 : ", n2, " - soma : ", soma)
                soma = n1 + n2
                n1 = n2
                n2 = soma
                leia(pause)
            }
            escreva("\n\n\tfim da sequencia")
        }
    }
    ```
21. Converta um número decimal para binário usando `enquanto`.
22. Valide usuário e senha até que ambos estejam corretos.
23. Registre produtos e preços até que o usuário decida finalizar a compra.
24. Simule lançamentos de dados até que o usuário obtenha um número par.
25. Converta números entre bases (ex: decimal para hexadecimal).
26. Calcule a soma da série 1 + 1/2 + 1/3 + ... + 1/n.
27. Permita saques, depósitos e consultas até que o usuário escolha sair.
<!-- 28. Verifique se uma palavra digitada é um palíndromo (ex: "ovo"). -->
<!-- 29. Implemente um jogo da forca com 5 tentativas para adivinhar uma palavra fixa. -->

</details>

---

## comando `faca-enquanto`

O laço `faca-enquanto` é uma estrutura de repetição que **garante a execução do bloco de código pelo menos uma vez**, verificando a condição ao final de cada iteração, isto é, Pós-Testado.

Ideal para situações onde:
- É necessário validar entradas de usuário
- A primeira execução é obrigatória antes da verificação

### funcionamento
1. Executa o bloco de código
2. Verifica a condição
3. Se `verdadeira`: Repete o processo
4. Se `falsa`: Encerra o laço

<img src="https://portugol.dev/assets/recursos/ajuda/recursos/imagens/Dark/faca_enquanto.png" style="background-color: #000000;"/><br>*(Diagrama ilustrando a execução prévia à verificação condicional)*

### sintaxe
```portugol
faca {
    // bloco de código executado pelo menos uma vez
    // deve conter mecanismo para alterar a condição
} enquanto (<condição>)
```

### exemplo - validação de entrada
```portugol
programa {
    funcao inicio() {
        real aresta, area

        faca {
            escreva("Informe o valor da aresta (maior que 0): ")
            leia(aresta)
        } enquanto (aresta <= 0)  // repete se valor inválido

        area = aresta * aresta
        escreva("Área do quadrado: ", area)
    }
}
```

**Comportamento:**
- O usuário é obrigado a inserir um valor válido (> 0)
- Bloco executa mesmo que a condição inicial seja falsa

### comparação `enquanto` vs `faca-enquanto`
| Característica          | `enquanto`         | `faca-enquanto`     |
|-------------------------|--------------------|---------------------|
| Verificação condicional | Antes da execução  | Após a execução     |
| Iterações mínimas       | Zero               | Uma                 |
| Caso de uso típico      | Validação prévia   | Entradas obrigatórias |

### aplicações comuns
1. **Menus Interativos**
    ```portugol
    caractere opcao
    faca {
        escreva("\n1 - Calcular\n2 - Sair\nOpção: ")
        leia(opcao)
        // processa opção
    } enquanto (opcao != '2')
    ```

2. **Formulários com Validação**
    ```portugol
    inteiro idade
    faca {
        escreva("Digite sua idade (18-120): ")
        leia(idade)
    } enquanto (idade < 18 ou idade > 120)
    ```

### boas práticas
- **Atualize Variáveis**: Garanta que a condição possa se tornar falsa
- **Evite Lógica Complexa**: Mantenha a condição de saída clara
- **Combine com `interrompa`**: Para sair antecipadamente em casos excepcionais

### erros comuns
```portugol
// loop infinito - condição nunca se torna falsa
real valor = 5
faca {
    escreva(valor)
} enquanto (valor > 0)  // Valor nunca é alterado
```

### exercícios - comando `faca-enquanto`

<details>
<summary>Lista de Exercícios</summary>

### **Básico**
1. Peça um número positivo ao usuário. Repita a solicitação até que um valor válido seja inserido.
2. Crie um menu com opções "Continuar" e "Sair". Repita até que o usuário escolha "Sair".
3. Peça números ao usuário e some-os. Permita que ele decida quando parar de inserir valores.
4. Solicite a idade do usuário até que seja digitado um valor entre 1 e 100.
5. Peça números até que o usuário digite 0. Exiba a quantidade de números inseridos.
6. Solicite uma senha numérica até que o usuário digite `0000`.
7. Converta temperaturas até que o usuário digite um valor abaixo de -273°C.
8. Peça um número e exiba sua tabuada. Repita até que o usuário digite 0.
9. Peça uma letra e conte quantas vogais são digitadas. Pare quando for inserido '#'.
10. Solicite um e-mail até que o usuário digite `fim`.

### **Intermediário**
11. Calcule a média de notas de alunos. Permite reiniciar o cálculo.
    ```portugol
    programa {
        funcao inicio() {
            // Calcule a média de notas de alunos. Permite reiniciar o cálculo.
            inteiro cont = 0
            real notas, media = 0
            logico vai_parar = falso
            caracter parada = 'N'

            escreva("\n\t\tcalculadora de médias\n\n")

            // faca-enquanto cálculo de vários alunos
            faca{
                escreva("Fazendo o calculo de um novo aluno\n")
                media = 0
                cont = 0
                // faca-enquanto do cálculo da nota
                faca{
                    escreva("Digite a nota ", cont+1, " (-1 para reiniciar) : ")
                    leia(notas)
                    media += notas // igual a -> media = media + notas

                    cont++
                    se(notas < 0){
                        media = 0
                        cont = 0
                        escreva("\n\t\t REINICIANDO \n")
                    }
                }enquanto(cont < 3)
                escreva("\n\nA média é : ", media / 3)

                // teste do proximo aluno
                escreva("\nquer parar (S/N)? ")
                leia(parada)

                se(parada == 'S' ou parada == 's')
                    vai_parar = verdadeiro
            }enquanto(nao vai_parar)
        }
    }
    ```
12. Salve um número entre 1-10. Peça palpites até que o usuário acerte.
13. Permita 5 tentativas para acertar uma senha pré-definida.
14. Peça um número e verifique se é primo. Repita a ação até o número ser primo.
    ```portugol
    programa {
        funcao inicio() {
            inteiro candidato_primo
            inteiro testador

            // pedindo varios numeros ate sair primo
            faca{
                escreva("digite um candidato a primo (numerico) : ")
                leia(candidato_primo)
                testador = candidato_primo - 1

                // adicione aqui seu teste para numeros negativos

                // faca-enquanto para buscar numero primo
                faca{
                    se(candidato_primo == 2){
                        pare
                    }
                    se(candidato_primo % testador == 0){
                        escreva("nao eh primo\n")
                        pare
                    }
                    testador-- // == testador -= 1 == testador = testador - 1
                }enquanto(testador > 1)
                se(testador == 1){
                    pare
                }
            }enquanto(verdadeiro)

            escreva("o numero eh primo : ", candidato_primo)
        }
    }
    ```
15. Converta Real para Dólar. Repita até que o usuário decida sair.
16. Conte quantos números pares e ímpares foram digitados até que o usuário insira 999.
17. Registre compras e calcule o total. Repita até o usuário finalizar.
18. Exiba números de 1 a N. Peça N até que seja maior que 0.
<!-- 13. Peça um CPF até que tenha 11 dígitos numéricos. -->
<!-- 20. Solicite uma senha até que tenha pelo menos 8 caracteres e um número. -->

### **Avançado**
19. Implemente saques, depósitos e consultas até que o usuário saia.
20. Faça perguntas até que o usuário erre ou decida parar.
21. Gere a sequência até um termo N. Valide N > 0.
22. Implemente o jogo com 6 tentativas. Repita partidas.
23. Gerencie reservas de horários até que o usuário encerre.
24. Controle semáforos até que o usuário desligue o sistema.
25. Gerencie entrada/saída de produtos até que o usuário finalize.
26. Permita batalhas até que o jogador morra ou vença o chefe final.
<!-- 28. Ofereça funções matemáticas até que o usuário saia. -->
<!-- 26. Verifique se palavras são palíndromas. Permita múltiplas verificações. -->

</details>

---

## comando `para`
O laço `para` é uma estrutura de repetição projetada para **iterações controladas**, onde o número de repetições é conhecido ou pré-determinado. Ideal para situações como processamento de listas, cálculos sequenciais e operações com contagem fixa.

### por que usar o `para`?
- **Controle automatizado**: Gerencia inicialização, condição e incremento em uma única linha
- **Prevenção de erros**: Elimina o risco de esquecer atualizações manuais do contador
- **Eficiência**: Otimizado para processamento de intervalos numéricos

### sintaxe e componentes
```portugol
para (<inicialização>; <condição>; <incremento>) {
    // bloco de código repetido
}
```

| Componente       | Função                                  | Exemplo         |
|------------------|-----------------------------------------|-----------------|
| Inicialização    | Declara e/ou atribui valor ao contador  | `inteiro i = 1` |
| Condição         | Define critério de continuação          | `i <= 10`       |
| Incremento       | Atualiza o contador após cada iteração  | `i++`           |

### funcionamento passo a passo
1. **Inicialização**: Executada uma vez, no início
2. **Verificação da Condição**:
    - Se `verdadeira`: Executa o bloco
    - Se `falsa`: Encerra o laço
3. **Incremento**: Atualiza o contador após cada bloco

### exemplo 1: tabuada de 3
```portugol
programa {
    funcao inicio() {
        para (inteiro i = 1; i <= 10; i++) {
            inteiro resultado = i * 3
            escreva("3 x ", i, " = ", resultado, "\n")
        }
    }
}
```

**Saída:**
```
3 x 1 = 3
3 x 2 = 6
...
3 x 10 = 30
```

### exemplo 2: contagem regressiva
```portugol
para (inteiro i = 5; i >= 1; i--) {
    escreva("Contagem: ", i, "\n")
}
```

**Saída:**
```
Contagem: 5
Contagem: 4
...
Contagem: 1
```

### boas práticas
1. **Escopo do Contador**:
    Declare o contador dentro do `para` para limitar seu escopo:
    ```portugol
    para (inteiro i = 0; i < 5; i++) { ... }  // i só existe aqui
    ```

2. **Evite Modificar o Contador**:
    Não altere manualmente a variável dentro do bloco:
    ```portugol
    // ruim
    para (inteiro i=0; i<10; i++) {
        i = 5  // causa loop infinito
    }
    ```

### comparação com outros laços
| Cenário                 | `para`              | `enquanto`         |
|-------------------------|---------------------|--------------------|
| Iterações pré-definidas | Ideal               | Ineficiente        |
| Controle de contador    | Automático          | Manual             |
| Flexibilidade           | Limitado a padrões  | Ilimitada          |

### aplicações típicas
1. Processamento de arrays/vetores
2. Geração de sequências numéricas
3. Execução de algoritmos matemáticos iterativos
4. Implementação de sistemas de repetição por tempo fixo

### exercícios - comando `para`

<details>
<summary>Lista de Exercícios</summary>

### **Básico**
1. Peça um número inteiro `N` e exiba todos os números de 1 a `N`.
2. Calcule a soma dos primeiros `N` números naturais (1 + 2 + 3 + ... + N).
3. Exiba todos os números pares entre 1 e 20.
4. Leia 10 números digitados pelo usuário e exiba-os no final.
5. Exiba os múltiplos de 5 de 5 a 50.
6. Exiba a tabuada do 9 (9x1 a 9x10).
7. Faça uma contagem regressiva de 10 a 1.
8. Peça dois números `A` e `B` e calcule a soma de todos os números entre eles.
9. Leia 5 notas e calcule a média.
10. Exiba um quadrado de 5x5 usando `*`.

### **Intermediário**
11. Calcule o fatorial de um número `N` usando `para`.
12. Verifique se um número é primo usando um laço `para`.
13. Peça um número e exiba sua tabuada de 1 a 10.
14. Calcule a soma dos números pares entre dois números informados.
17. Exiba os primeiros `N` termos da sequência de Fibonacci.
18. Verifique se um número é perfeito (soma dos divisores = número).
19. Exiba o padrão:
    ```
    1
    12
    123
    1234
    ```
<!-- 15. Inverta uma string digitada pelo usuário (ex: "ola" → "alo").<br> -->
<!-- *Dica:* Use as bibliotecas [`Texto`](bibliotecas.md#biblioteca-texto) e [`Tipos`](bibliotecas.md#biblioteca-tipos). -->
<!-- 16. Conte quantas vogais existem em uma palavra usando vetor. -->
<!-- 20. Calcule o MDC de dois números usando o algoritmo de Euclides. -->

### **Avançado**
21. Converta um número decimal para binário usando `para`.
22. Exiba todos os números primos entre 1 e 100.
23. Calcule a soma da série: 1 + 1/2 + 1/3 + ... + 1/N.
    ```portugol
    programa
    {
        funcao inicio()
        {
            real soma = 0.0, soma1 = 0.0
            inteiro valor, teste = 1

            escreva("numero : ")
            leia(valor)

            enquanto(teste < valor){
                teste++
                soma = soma1 + (1.0/teste)
                soma1 = soma
            }
            escreva(soma  + 1, "\n")
        }
    }
    ```
26. Verifique se um número digitado é múltiplo de dois números primos.
27. Exiba as primeiras 5 linhas do Triângulo de Pascal.
28. Desenhe um tabuleiro 3x3 usando `para` e caracteres.
29. Simule 1000 lançamentos de um dado e conte quantas vezes cada face saiu.
<!-- 24. Ordene um vetor de 10 números em ordem crescente (use Bubble Sort). -->
<!-- 25. Crie uma matriz identidade 4x4 (1 na diagonal principal, 0 outros). -->
<!-- 30. Crie uma cifra de César (deslocar letras por 3 posições no alfabeto). -->

</details>
