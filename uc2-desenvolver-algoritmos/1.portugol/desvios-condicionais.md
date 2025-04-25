# Estruturas de Controle

Em programação, frequentemente precisamos executar ações diferentes com base em condições específicas ou repetir operações. Controlar a ordem de execução das instruções é fundamental para resolver problemas complexos. É para isso que servem as **estruturas de controle**.

Estruturas de controle (ou fluxos de controle) determinam a ordem em que instruções, expressões e funções são executadas. Sem elas, o programa seria executado linearmente, de cima para baixo, o que limitaria drasticamente sua capacidade de tomar decisões ou repetir tarefas.

---

# desvios condicionais

Assim como na vida real, algoritmos frequentemente precisam fazer escolhas com base em condições. Por exemplo:
- Um aluno é aprovado se sua média final for ≥ 6.
- Um sistema de irrigação é ativado apenas se o sensor detectar umidade abaixo do nível crítico.

Essas situações são implementadas usando **desvios condicionais**, que executam blocos de código apenas se condições específicas forem atendidas.

Nesta seção, serão abordados os seguintes tópicos:

- [comando `se`](#comando-se)
- [comando `se-senao`](#comando-se-senao)
- [comando `se-senao-se`](#comando-se-senao-se)
- [comando `escolha-caso`](#comando-escolha-caso)


## comando `se`

O comando `se` permite executar um bloco de código **apenas se** uma condição for verdadeira.

### sintaxe
```portugol
se (condição) {
    // Bloco executado se a condição for verdadeira
}
```
- `condição`: Expressão lógica que retorna `verdadeiro` ou `falso`.
- As chaves `{}` delimitam o bloco de código, mesmo para instruções únicas (obrigatório em Portugol).

### exemplos
```portugol
inteiro x = 5
se (x > 3) {
    escreva("x é maior que 3")
}

logico condicao = verdadeiro
se (condicao) {
    escreva("A condição é verdadeira")
}
```

### funcionamento
1. A condição é avaliada (teste lógico).
2. Se for `verdadeiro`, o bloco interno é executado.
3. Se for `falso`, o bloco é ignorado e o programa continua após o `se`.

#### fluxograma
<img src="https://portugol.dev/assets/recursos/ajuda/recursos/imagens/Dark/Se.png" style="background-color: #000000;"/><br>
*Se a condição for verdadeira, executa o bloco; caso contrário, segue adiante.*

### exemplo prático
```portugol
programa {
    funcao inicio() {
        inteiro num
        escreva("Digite um número: ")
        leia(num)

        se (num == 0) {
            escreva("\nO número digitado é 0")
        }
    }
}
```

---

### exercícios - comando `se`

<details>
<summary>Lista de Exercícios</summary>

1. Leia um inteiro e, se for maior que zero, escreva **"Número positivo"**.
2. Leia um inteiro e, se for menor que zero, escreva **"Número negativo"**.
3. Leia um inteiro e, se o resto da divisão por 2 for igual a zero, escreva **"É par"**.
4. Leia um inteiro e, se o resto da divisão por 2 for diferente de zero, escreva **"É ímpar"**.
5. Leia a idade (inteiro) e, se for maior ou igual a 18, escreva **"Maior de idade"**.
6. Leia um inteiro e, se for divisível por 5, escreva **"Divisível por 5"**.
7. Leia dois inteiros A e B e, se A for maior que B, escreva **"A > B"**.
8. Leia um número real e, se estiver no intervalo **[0, 1]** (inclusive), escreva **"Está no intervalo [0,1]"**.
9. Leia um real e, se for maior que 100, escreva **"Acima de 100"**.
10. Leia a temperatura em °C (real) e, se for menor ou igual a 0, escreva **"Água congelada"**.
11. Leia um saldo bancário (real) e, se for maior que zero, escreva **"Saldo positivo"**.
12. Leia um valor (real) e, se for maior que 1000, calcule **10% de desconto** (10% do valor lido) e escreva o valor do desconto.
13. Leia um caractere e, se for igual a **'a'**, **'e'**, **'i'**, **'o'** ou **'u'**, escreva **"Vogal"**.
14. Leia um caractere e, se estiver entre **'A'** e **'Z'**, escreva **"Maiúsculo"**.
15. Leia um caractere e, se estiver entre **'a'** e **'z'**, escreva **"Minúsculo"**.
16. Leia um caractere e, se for igual a **'0'**, escreva **"Zero"**.
17. Leia uma senha (cadeia) e, se for igual a **"abc123"**, escreva **"Acesso permitido"**.
18. Leia um nome (cadeia) e, se for igual a **"Admin"**, escreva **"Usuário administrador"**.
19. Leia uma cadeia e, se o comprimento for igual a zero, escreva **"Cadeia vazia"**.
20. Leia um valor lógico e, se for **verdadeiro**, escreva **"Condição verdadeira"**.
21. Leia um valor lógico e, se for **falso**, escreva **"Condição falsa"**.
22. Leia um inteiro e, se for maior que 10 **e** par, escreva **"Maior que 10 e par"**.
23. Leia um inteiro e, se for menor que **-10** ou maior que **10**, escreva **"Fora do intervalo [-10,10]"**.
24. Leia um ano (inteiro) e, se for divisível por 4, escreva **"Bissexto (simplificado)"**.
25. Leia uma nota (real) e, se for maior ou igual a **7.0**, escreva **"Aprovado"**.
26. Leia uma nota (real) e, se estiver entre **4.0** e **6.9** (inclusive), escreva **"Exame"**.
27. Leia uma nota (real) e, se for menor que **4.0**, escreva **"Reprovado"**.
28. Leia a temperatura (real) e, se for maior que **37.5**, escreva **"Febre"**.
29. Leia dois números reais A e B e, se A for maior que B, calcule **A - B** e escreva **"Diferença = "** seguido do resultado.

</details>

---

## comando `se-senao`

Em situações onde precisamos executar um bloco de código **se uma condição for verdadeira** e outro bloco **se for falsa**, utilizamos a estrutura `se-senao`.

### quando usar?
Imagine um programa que verifica se um aluno foi aprovado com média ≥ 6. Precisamos exibir **"Aprovado"** se a condição for atendida e **"Reprovado"** caso contrário. Para isso, combinamos os comandos `se` e `senao`.

### sintaxe
```portugol
se (condição) {
    // Bloco executado se a condição for VERDADEIRA
}
senao {
    // Bloco executado se a condição for FALSA
}
```

#### funcionamento:
1. A `condição` é avaliada.
2. Se for **verdadeira**, executa o bloco dentro do `se`.
3. Se for **falsa**, executa o bloco dentro do `senao`.

<img src="https://portugol.dev/assets/recursos/ajuda/recursos/imagens/Dark/se_senao.png" style="background-color: #000000;"/><br>
*Diagrama: Se a condição for verdadeira, executa o bloco "É dia"; senão, executa o bloco "É noite".*

### exemplo prático
```portugol
programa {
    funcao inicio() {
        inteiro hora
        escreva("Digite a hora: ")
        leia(hora)

        se (hora >= 6 e hora <= 18) {
            escreva("É dia")
        }
        senao {
            escreva("É noite")
        }
    }
}
```

#### explicação:
- O programa lê uma hora (inteiro).
- Se a hora estiver entre **6** e **18** (inclusive), exibe **"É dia"**.
- Caso contrário, exibe **"É noite"**.

---

### exercícios - comando `se-senao`
<details>
<summary>Lista de Exercícios</summary>

1. Leia um número inteiro. Se for par, escreva **"Par"**, senão escreva **"Ímpar"**.
2. Leia um número inteiro. Se for positivo, escreva **"Positivo"**, senão escreva **"Negativo ou zero"**.
3. Leia a idade. Se for ≥ 18, escreva **"Maior de idade"**, senão **"Menor de idade"**.
4. Leia um número. Se for divisível por 3, escreva **"Divisível por 3"**, senão **"Não divisível por 3"**.
5. Leia uma senha. Se for igual a **"1234"**, escreva **"Acesso permitido"**, senão **"Acesso negado"**.
6. Leia um número. Se estiver entre 1 e 10 (inclusive), escreva **"Dentro do intervalo"**, senão **"Fora do intervalo"**.
7. Leia um caractere. Se for vogal (a, e, i, o, u), escreva **"Vogal"**, senão **"Consoante"**.
8. Leia um número. Se for múltiplo de 5, escreva **"Múltiplo de 5"**, senão **"Não é múltiplo de 5"**.
9. Leia dois números. Se o primeiro for maior que o segundo, escreva **"Primeiro é maior"**, senão **"Segundo é maior ou igual"**.
10. Leia uma nota. Se for ≥ 5.0, escreva **"Aprovado"**, senão **"Reprovado"**.
11. Leia um ano. Se for divisível por 4, escreva **"Bissexto"**, senão **"Não bissexto"**.
12. Leia o saldo. Se for ≥ 0, escreva **"Saldo positivo"**, senão **"Saldo negativo"**.
13. Leia um caractere. Se for maiúsculo (A-Z), escreva **"Maiúscula"**, senão **"Minúscula ou outro"**.<br>
    *Dica:* Considere a **tabela ASCII** para comparações diretas.
14. Leia a hora (0-23). Se estiver entre 6h e 18h, escreva **"Dia"**, senão **"Noite"**.
15. Leia o valor da compra. Se for > 500, calcule 10% de desconto e mostre o valor final, senão escreva **"Sem desconto"**.
16. Leia três lados. Se a soma de dois lados for maior que o terceiro, escreva **"Triângulo válido"**, senão **"Inválido"**.
17. Leia um número. Se for 2, 3, 5 ou 7, escreva **"Primo"**, senão **"Não primo"** (versão simplificada).
18. Leia o nome de usuário. Se for **"admin"**, escreva **"Modo administrador"**, senão **"Usuário comum"**.
19. Leia a altura (m) e o peso (kg). Se o IMC (peso/altura²) for ≤ 25, escreva **"Peso saudável"**, senão **"Sobrepeso"**.
20. Leia um número. Se for igual a 0, escreva **"Zero"**, senão **"Não zero"**.
21. Leia a idade. Se < 13: **"Criança"**, 13-19: **"Adolescente"**, ≥20: **"Adulto"**.
22. Leia duas notas. Se a média for ≥ 6, escreva **"Aprovado"**, senão **"Reprovado"**.
23. Leia um número. Se > 0: **"Positivo"**, se < 0: **"Negativo"**, senão **"Zero"**.
24. Leia um número (1-7). Se for 1-5: **"Dia útil"**, 6-7: **"Fim de semana"**, senão **"Inválido"**.
25. Leia o peso (kg). Se > 10kg, calcule frete de R$ 50.00, senão R$ 20.00. Mostre o valor.
26. Leia °C. Se < 15: **"Frio"**, 15-30: **"Ameno"**, >30: **"Quente"**.
27. Leia a idade. Se ≥ 18: **"Permitido"**, senão **"Proibido para menores"**.
28. Leia login e senha. Se login for **"user"** e senha **"pass"**, escreva **"Login bem-sucedido"**, senão **"Credenciais inválidas"**.

</details>

---

## comando `se-senao se`

Suponha que você precise classificar o desempenho de um aluno em uma prova com base na nota:
- **≥ 9.0**: "Desempenho excelente"
- **≥ 7.0**: "Desempenho bom"
- **≥ 6.0**: "Desempenho razoável"
- **< 6.0**: "Desempenho insuficiente"

Nesses casos, onde múltiplas condições devem ser verificadas em sequência, usamos `se-senao se`.

---

### sintaxe
```portugol
se (condição1) {
    // Executado se condição1 for VERDADEIRA
}
senao se (condição2) {
    // Executado se condição1 for FALSA e condição2 for VERDADEIRA
}
senao {
    // Executado se todas as condições anteriores forem FALSAS
}
```

#### funcionamento:
1. As condições são verificadas em ordem.
2. A primeira condição verdadeira executa seu bloco e ignora as demais.
3. Se nenhuma for verdadeira, executa o bloco do `senao`.

---

### exemplo de uso
#### classificação de notas
```portugol
programa {
    funcao inicio() {
        real nota
        escreva("Digite a nota do aluno: ")
        leia(nota)

        se (nota >= 9.0) {
            escreva("Desempenho excelente")
        }
        senao se (nota >= 7.0) {
            escreva("Desempenho bom")
        }
        senao se (nota >= 6.0) {
            escreva("Desempenho razoável")
        }
        senao {
            escreva("Desempenho insuficiente")
        }
    }
}
```

#### explicação:
- Se a nota for **≥ 9**, exibe "excelente".
- Se não, verifica se é **≥ 7**, exibindo "bom".
- Se não, verifica se é **≥ 6**, exibindo "razoável".
- Se todas falharem, executa o `senao` ("insuficiente").

---

### regras importantes
1. **Ordem das condições**:
    - Comece sempre pela condição mais restritiva (ex: `nota >= 9` antes de `nota >= 7`).
2. **Bloco `senao`**:
    - Opcional, mas útil para tratar casos não cobertos.
3. **Aninhamento**:
    - É possível combinar com estruturas adicionais dentro dos blocos.

---

### outro exemplo: validação de login
```portugol
se (usuario == "admin") {
    escreva("Acesso total")
}
senao se (usuario == "convidado") {
    escreva("Acesso limitado")
}
senao {
    escreva("Usuário desconhecido")
}
```

---

### exercícios - comando `se-senao se`

<details>
<summary>Lista de Exercícios</summary>

1. Leia um número. Se for positivo, escreva **"Positivo"**; se for negativo, **"Negativo"**; senão, **"Zero"**.
2. Leia a idade. Se < 13: **"Criança"**; se < 20: **"Adolescente"**; senão: **"Adulto"**.
3. Leia uma nota (0-10). Se ≥ 9: **"Excelente"**; se ≥ 7: **"Bom"**; se ≥ 5: **"Regular"**; senão: **"Insuficiente"**.
4. Leia um número. Se ≤ 10: **"Pequeno"**; se ≤ 50: **"Médio"**; se ≤ 100: **"Grande"**; senão: **"Muito grande"**.
5. Leia a temperatura. Se ≤ 0: **"Congelante"**; se ≤ 15: **"Frio"**; se ≤ 25: **"Ameno"**; senão: **"Quente"**.
6. Leia o salário. Se ≤ 1500: **"Baixo"**; se ≤ 5000: **"Médio"**; senão: **"Alto"**.
7. Leia um caractere. Se for vogal minúscula: **"Vogal"**; se for consoante minúscula: **"Consoante"**; senão: **"Outro"**.<br>
    *Dica:* Considere a **tabela ASCII** para comparações diretas.
8. Leia a hora (0-23). Se ≤ 5: **"Madrugada"**; se ≤ 12: **"Manhã"**; se ≤ 18: **"Tarde"**; senão: **"Noite"**.
9. Leia o valor da compra. Se > 2000: **20% de desconto**; se > 1000: **10% de desconto**; senão: **Sem desconto**.
10. Leia o IMC. Se < 18.5: **"Abaixo do peso"**; se < 25: **"Normal"**; se < 30: **"Sobrepeso"**; senão: **"Obesidade"**.
11. Leia um número (1-7). Se ≤ 5: **"Dia útil"**; se ≤ 6: **"Sábado"**; senão: **"Domingo"**.
12. Leia a velocidade. Se ≤ 40: **"Baixa"**; se ≤ 80: **"Média"**; se ≤ 120: **"Alta"**; senão: **"Perigosa"**.
13. Leia a classificação etária. Se ≤ 12: **"Livre"**; se ≤ 14: **"12 anos"**; se ≤ 18: **"16 anos"**; senão: **"18 anos"**.
14. Leia o número (1-5). 1: **"P"**; 2: **"M"**; 3: **"G"**; 4: **"GG"**; 5: **"XGG"**.
15. Leia o código de acesso (1-3). 1: **"Usuário"**; 2: **"Moderador"**; 3: **"Administrador"**; senão: **"Inválido"**.
16. Leia o preço. Se ≤ 50: **"Econômico"**; se ≤ 200: **"Padrão"**; se ≤ 1000: **"Premium"**; senão: **"Luxo"**.
17. Leia o mês (1-12). 1-3: **"Verão"**; 4-6: **"Outono"**; 7-9: **"Inverno"**; 10-12: **"Primavera"**.
18. Leia a altura. Se < 1.5: **"Baixa"**; se < 1.8: **"Média"**; senão: **"Alta"**.
19. Leia um código (A-Z). Se ≤ 'F': **"Grupo 1"**; se ≤ 'M': **"Grupo 2"**; senão: **"Grupo 3"**.<br>
    *Dica:* Considere a **tabela ASCII** para comparações diretas.
20. Leia a série (1-12). 1-5: **"Fundamental I"**; 6-9: **"Fundamental II"**; 10-12: **"Ensino Médio"**.
21. Leia o número de patas. 0: **"Peixe"**; 2: **"Ave"**; 4: **"Mamífero"**; senão: **"Desconhecido"**.
22. Leia a distância. Se ≤ 1: **"Curta"**; se ≤ 10: **"Média"**; se ≤ 100: **"Longa"**; senão: **"Muito longa"**.
23. Leia a pressão sistólica. Se ≤ 90: **"Baixa"**; se ≤ 120: **"Normal"**; se ≤ 140: **"Elevada"**; senão: **"Alta"**.
24. Leia um número. Se = 0: **"Zero"**; se > 0: **"Positivo"**; senão: **"Negativo"**.
25. Leia a idade. Se ≤ 2: **"Filhote"**; se ≤ 7: **"Adulto"**; senão: **"Idoso"**.
26. Leia a precipitação. Se = 0: **"Sem chuva"**; se ≤ 5: **"Leve"**; se ≤ 20: **"Moderada"**; senão: **"Forte"**.
27. Leia o ângulo (graus). Se < 90: **"Agudo"**; se = 90: **"Reto"**; se < 180: **"Obtuso"**; senão: **"Raso"**.
28. Leia o consumo. Se ≤ 100: **"Baixo"**; se ≤ 300: **"Médio"**; senão: **"Alto"**.
29. Leia a velocidade (Mbps). Se ≤ 10: **"Lenta"**; se ≤ 50: **"Rápida"**; senão: **"Ultra-rápida"**.

</details>

---

## exercícios mais complexos

<details>
<summary>Lista de Exercícios</summary>

1. Crie um algoritmo que pergunte ao usuário dois números. Mostre as variáveis onde os números foram armazenados, troque os valores entre as variáveis e mostre as variáveis e seus valores trocados.
    ```portugol
    programa {
        funcao inicio() {
            inteiro n1, n2, troca

            escreva("digite um valor para n1 : ")
            leia(n1)
            escreva("digite um valor para n2 : ")
            leia(n2)

            escreva("n1 = ", n1, "\nn2 = ", n2)
            troca = n1
            n1 = n2
            n2 = troca
            escreva("\nn1 = ", n1, "\nn2 = ", n2)
        }
    }
    ```
2. Crie um algoritmo que pergunte ao usuário uma temperatura e que conversão ele gostaria de fazer: Grau Celsius para Grau Fahrenheit ou vice-versa.
    ```portugol
    programa {
        funcao inicio() {
            inteiro opcao
            real temp, conv

            escreva("digite\n1. celsius para fahrenheit")
            escreva("\n2. fahrenheit para celsius\n\t>> ")
            leia(opcao)

            escreva("qual a temperatura que gostaria de converter\n\t>> ")
            leia(temp)

            se(opcao == 1){
                // converter celsius para fahrenheit
                conv = ((9/5) * temp) + 32
                escreva("a temp de celsius para fahrenheit : ", conv)
            }
            senao{
                // converter fahrenheit para celsius
                conv = (temp - 32) / (9/5)
                escreva("a temp de fahrenheit para celsius : ", conv)
            }
        }
    }
    ```
3. Crie um algoritmo que pergunte ao usuário que forma geométrica ele gostaria de saber a área: quadrado, círculo, retângulo ou triângulo. Depois pergunte o tamanho do(s) lado(s) para calcular a área.
    ```portugol
    programa {
        funcao inicio() {
            inteiro opcao
            real raio, base, altura, area

            escreva("escolha uma forma para calcular a area :")
            escreva("\n\t1. quadrado")
            escreva("\n\t2. circulo")
            escreva("\n\t3. retangulo")
            escreva("\n\t4. triangulo")
            escreva("\n>> ")
            leia(opcao)
            limpa()

            se(opcao == 1){
                escreva("qual o lado do quadrado : ")
                leia(base)
                altura = base
                area = base * altura
                escreva("a area do quadrado eh : ", area)
            }
            senao se(opcao == 2){
                escreva("qual o raio do circulo : ")
                leia(raio)
                area = (3.1415926535) * raio * raio
                escreva("a area do circulo eh : ", area)
            }
            senao se(opcao == 3){
                escreva("qual o lado maior do retangulo : ")
                leia(base)
                escreva("qual o lado menor do retangulo : ")
                leia(altura)
                area = base * altura
                escreva("a area do retangulo eh : ", area)
            }
            senao se(opcao == 4){
                escreva("qual a base do triangulo : ")
                leia(base)
                escreva("qual a altura do triangulo : ")
                leia(altura)
                area = (base * altura) / 2
                escreva("a area do triangulo eh : ", area)
            }
            senao{
                escreva("nao sei que forma geometrica eh essa")
            }
        }
    }
    ```
4. Crie um algoritmo que pergunte ao usuário quantas maçãs ele quer comprar e o valor total da compra. Se forem compradas menos do que uma dúzia, elas vão custar R$ 0.70 a unidade. Se forem compradas mais de uma dúzia, o valor é R$ 0.50 por unidade.
5. Crie um algoritmo que peça 3 números inteiros ao usuário. Mostre eles ordenados do maior para o menor e do menor para o maior.
    ```portugol
    // forma 1
    programa {
        funcao inicio() {
            inteiro v1, v2, v3, maior, meio, menor

            escreva("digite v1 : ")
            leia(v1)
            escreva("digite v2 : ")
            leia(v2)
            escreva("digite v3 : ")
            leia(v3)

            maior = v1
            se(v2 > maior){
                maior = v2
            }
            se(v3 > maior)
                maior = v3

            menor = v1
            se(v2 < menor)
                menor = v2
            se(v3 < menor)
                menor = v3

            meio = v1 + v2 + v3 - maior - menor

            escreva(maior, " " ,meio, " ", menor, "\n")
            escreva(menor, " ", meio, " ", maior)

        }
    }

    // forma 2
    programa {
        funcao inicio() {
            inteiro v1, v2, v3

            escreva("digite v1 : ")
            leia(v1)
            escreva("digite v2 : ")
            leia(v2)
            escreva("digite v3 : ")
            leia(v3)

            se(v1 > v2){
                se(v1 > v3){ // v1 é o maior de todos
                    se(v2 > v3){
                        escreva(v1, " ", v2, " ", v3, "\n")
                        escreva(v3, " ", v2, " ", v1)
                    }
                    senao{
                        escreva(v1, " ", v3, " ", v2, "\n")
                        escreva(v2, " ", v3, " ", v1)
                    }
                }
            }
            se(v2 > v1)
                se(v2 > v3) // v2 é o maior de todos
                    se(v1 > v3){
                        escreva(v2, " ", v1, " ", v3, "\n")
                        escreva(v3, " ", v1, " ", v2)
                    }
                    senao{
                        escreva(v2, " ", v3, " ", v1, "\n")
                        escreva(v1, " ", v3, " ", v2)
                    }
            se(v3 > v1)
                se(v3 > v2) // v3 é o maior de todos
                    se(v1 > v2){
                        escreva(v3, " ", v1, " ", v2, "\n")
                        escreva(v2, " ", v1, " ", v3)
                    }
                    senao{
                        escreva(v3, " ", v2, " ", v1, "\n")
                        escreva(v1, " ", v2, " ", v3)
                    }
        }
    }
    ```

</details>

---

## comando `escolha-caso`

A estrutura `escolha-caso` oferece uma forma eficiente de criar menus e tomar decisões múltiplas, especialmente quando comparada ao uso excessivo de `se-senão`. É ideal para situações com valores discretos e pré-definidos.

## características principais
| Vantagem                   | Limitação                      |
|----------------------------|--------------------------------|
| Simplifica código complexo | Só testa igualdade exata       |
| Melhora legibilidade       | Não aceita operadores lógicos  |
| Otimiza performance        | Requer `pare` para evitar fall-through |

## sintaxe básica
```portugol
escolha(<variável>) {
    caso <valor_1>:
        // bloco de código 1
    pare

    caso <valor_2>:
        // bloco de código 2
    pare

    caso contrario:
        // bloco padrão (opcional)
}
```

### componentes chave:
1. `escolha`: Inicia a estrutura com a variável a ser testada
2. `caso`: Define um valor específico para comparação
3. `pare`: Interrompe a execução, prevenindo execução sequencial de casos
4. `caso contrario`: Executado quando nenhum caso anterior é satisfeito (equivalente a [`senao`](#comando-se-senao))

<img src="https://portugol.dev/assets/recursos/ajuda/recursos/imagens/Dark/escolha_caso.png" style="background-color: #000000;"/><br>
*Diagrama: A figura acima ilustra um algoritmo que verifica se o a variável valor é igual a 0, 1 ou 2.*

## exemplo - calculadora
```portugol
programa {
    funcao inicio() {
        inteiro opcao
        real num_1, num_2

        escreva("Calculadora Simples\n1-Soma\n2-Subtração\n3-Multiplicação\nOpção: ")
        leia(opcao)

        escreva("Digite um número: ")
        leia(num_1)
        escreva("Digite outro número: ")
        leia(num_2)

        escolha(opcao) {
            caso 1:
                escreva("Resultado: ", num_1 + num_2)
            pare

            caso 2:
                escreva("Resultado: ", num_1 - num_2)
            pare

            caso 3:
                escreva("Resultado: ", num_1 * num_2)
            pare

            caso contrario:
                escreva("Opção inválida!")
        }
    }
}
```

## comportamento sem `pare`
```portugol
inteiro valor = 1
escolha(valor) {
    caso 1:
        escreva("Um")
    // sem pare - continua execução
    caso 2:
        escreva("Dois")
    pare
}
// Saída: "UmDois"
```

## boas práticas
1. **Sempre use `pare`** exceto em fall-through intencional
2. **Ordene casos** numericamente/alfabeticamente para melhor legibilidade
3. **Use `caso contrario`** para tratamento de erros/exceções
4. **Evite aninhamento** complexo dentro dos casos

## comparação com [`se-senão`](#comando-se-senao)
| Cenário                | Escolha-Caso           | Se-Senão            |
|------------------------|------------------------|---------------------|
| Teste de igualdade     | Ideal (1 variável)     | Ineficiente         |
| Intervalos/Operações   | Não aplicável          | Melhor opção        |
| Legibilidade           | Superior (>3 casos)    | Complexa            |

### casos de uso recomendados
- Menus interativos
- Processamento de códigos/opções
- Máquinas de estado finito
- Tratamento de comandos de usuário

---

### exercícios - `escolha-caso`

<details>
<summary>Lista de Exercícios</summary>

### **Básico**
1. Peça um número (1-7) e exiba o nome do dia correspondente (1 = Domingo, 7 = Sábado).
2. Crie um menu para operações básicas (+, -, *, /) entre dois números.
3. Converta Celsius para Fahrenheit ou vice-versa, conforme a opção do usuário.
4. Categorize a idade em: criança (0-12), adolescente (13-17), adulto (18-59), idoso (60+).
5. Exiba cores primárias (1-Vermelho, 2-Azul, 3-Amarelo) e mostre uma mensagem relacionada.
6. Valide códigos de produtos (Ex: 100 = Eletrônico, 200 = Alimentício).
7. Traduza códigos de status: 1 = "Em preparo", 2 = "Entregue", 3 = "Cancelado".
8. Associe números a notas (1-Dó, 2-Ré, etc.) e exiba o texto da nota.
9. Use opções (1-Vermelho, 2-Amarelo, 3-Verde) para indicar ações.
10. Crie uma mini-história com 3 finais diferentes baseados na escolha do usuário.

### **Intermediário**
11. Converta Real para Dólar, Euro ou Libra conforme a opção.
12. Converta notas numéricas (0-10) em conceitos (A, B, C, D, F).
13. Exiba pratos (1-Lasanha, 2-Pizza, etc.) e calcule o preço total.
14. Classifique o IMC em: abaixo do peso, normal, sobrepeso, obeso.
15. Ofereça opções: 1-Saque, 2-Depósito, 3-Consultar Saldo.
16. Use números fixos (ex: 7, 15, 22) como respostas "secretas".
17. Permita adicionar, buscar ou excluir contatos via menu.
18. Peça um número ao usuário e uma escolha a qual potência ele deve ser elevado.
19. Associe números a perguntas e valide respostas pré-definidas.
20. Aplique descontos conforme o código promocional inserido (ex: CODE10 = 10%).

### **Avançado**
21. Associe datas fixas (ex: 25/12 = Natal) a eventos.
22. Use um menu para iniciar, ver regras ou sair do jogo.
23. Controle permissões baseadas em códigos de usuário (1-Admin, 2-Usuário, 3-Convidado).
24. Implemente saque, depósito e extrato com validação de notas (ex: R$50, R$100).
25. Converta entre metros/km, litros/m³, etc., conforme a opção.
26. Ofereça horários pré-definidos (ex: 14h, 16h, 18h) para reservas.
27. Use escolhas para definir ações em batalhas (atacar, defender, fugir).
28. Compare senhas pré-cadastradas (ex: "1234", "admin") e dê feedback.
29. Peça um número (1-10) e exiba sua tabuada usando `caso`.
30. Calcule preços por faixa etária (criança, adulto, idoso).

</details>
