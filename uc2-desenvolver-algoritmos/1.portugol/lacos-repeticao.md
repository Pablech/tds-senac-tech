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
---

### **Avançado**
20. Gere a sequência de Fibonacci até um termo especificado pelo usuário.
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
