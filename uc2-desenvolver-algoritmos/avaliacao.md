# Validador de CPF

## Introdução

O CPF, ou **Cadastro de Pessoas Físicas**, é um documento emitido pela Receita Federal do Brasil que identifica contribuintes brasileiros, residentes ou não no país. Ele é essencial para diversas atividades, como:

- Abrir contas bancárias;
- Declarar imposto de renda;
- Realizar compras a crédito, entre outras.

O CPF é composto por **11 dígitos numéricos**, geralmente formatados como `XXX.XXX.XXX-YY`, onde:

- `XXX.XXX.XXX` são os números do CPF propriamente ditos;
- `YY` são os **dígitos verificadores**, usados para validar a autenticidade do número.

### Como funciona a validação?

A validação do CPF é feita por meio de um algoritmo que:

1. Calcula o **primeiro dígito verificador** a partir dos **nove primeiros dígitos** do CPF;
2. Em seguida, calcula o **segundo dígito verificador** usando os **nove dígitos iniciais + o primeiro dígito verificador**.

Para este projeto, utilize como modelo o CPF fictício, mas válido:
**`111.444.777-35`**.

## Avaliação do Projeto

A avaliação será **incremental**: à medida que novos conteúdos forem abordados em aula, eles serão cobrados na construção do projeto.

### Trabalho em Grupo

- Forme grupos de **2 a 3 integrantes**.
- Apesar do trabalho ser colaborativo, **a avaliação será individual**, baseada nas contribuições de cada membro.
- O projeto deverá ser **hospedado no GitHub**:
    - Um integrante cria o repositório e hospeda o projeto;
    - Os demais integrantes devem fazer um [`fork`](https://docs.github.com/pt/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo), contribuir e criar [`pull requests`](https://docs.github.com/pt/pull-requests/collaborating-with-pull-requests/getting-started/about-collaborative-development-models).

### Observações

- Inicialmente, apenas **um aluno** precisa ter uma conta no [GitHub](git.md#github).
- Em breve, **todos** deverão criar suas próprias contas para realizar as operações necessárias.

---

## Cálculo dos Dígitos

### Cálculo do Primeiro Dígito

Para validar um CPF, é preciso começar com o calculo do primeiro dígito verificador. Para isso, é preciso separar os 9 primeiros dígitos do CPF (111444777) e multiplicar cada um dos números, da esquerda para a direita por números decrescentes a partir do 10.

Veja a tabela abaixo :

> | Dígito CPF|| Multiplicador|| Resultado |
> | :----: | :----: | :----: | :----: | :----: |
> ||||||
> | `1` | * | `10` | = | `10` |
> | `1` | * | `9` | = | `9` |
> | `1` | * | `8` | = | `8` |
> | `4` | * | `7` | = | `28` |
> | `4` | * | `6` | = | `24` |
> | `4` | * | `5` | = | `20` |
> | `7` | * | `4` | = | `28` |
> | `7` | * | `3` | = | `21` |
> | `7` | * | `2` | = | `14` |
> ||||||

Cada dígito do CPF é multiplicado pelo respectivo número. Depois todos os resultados são somados :

> `10` + `9` + `8` + `28` + `24` + `20` + `28` + `21` + `14` = `162`

A partir do resultado obtido na soma, é realizada 1 divisão por `11`. Esse cálculo irá gerar um quociente e um resto inteiros. Então, dividir `162` por `11` irá gerar um quociente igual a `14` e um resto igual `8`.

A partir desse resultado, é feita a seguinte avaliação :
- se o resto da divisão for `menor que 2`, então o primeiro dígito é igual a `zero`;
- se o resto da divisão for `maior ou igual a 2`, então o dígito verificador é igual a `11 menos o resto da divisão`;

No exemplo, o resto obitido foi oito, logo o primeiro dígito verificador é o onze menor o resto :

> `11 - 8 = 3`

O primeiro dígito verificador é `3`.

---

# Desenvolvimento do Projeto

## Checklist de Etapas

Cada etapa deverá ser documentada corretamente nas mensagens de commit, usando uma descrição como:
**`etapa 1: mostrando o CPF com escreva`** ou **`e1: mostrando o CPF com escreva`**

## Etapa 1: Configuração Inicial

### Objetivo
Configurar o ambiente de trabalho no GitHub e realizar a primeira exibição de um CPF no programa.

### Tarefas
- [x] Criar uma conta no GitHub (caso ainda não possua).
- [x] Criar um novo repositório no GitHub.
- [x] Adicionar:
    - Um arquivo `README.md`, descrevendo o projeto e listando estas etapas.
    - Um arquivo de **licença** (por exemplo, MIT License).
    - Um arquivo de código `.por`.
- [ ] Exibir um CPF usando o comando [`escreva`](https://github.com/gutohertzog/tds-senac-tech/blob/main/uc2-desenvolver-algoritmos/1.portugol/entrada-saida.md#fun%C3%A7%C3%A3o-escreva).

## Etapa 2: Uso de Variáveis

### Objetivo
Armazenar e exibir o CPF formatado utilizando variáveis.

### Tarefas
- [ ] Criar **quatro variáveis inteiras**.
- [ ] Atribuir valores a essas variáveis (valores fixos).
- [ ] Exibir o CPF formatado a partir dessas variáveis.

## Etapa 3: Entrada de Dados

### Objetivo
Permitir a entrada de dados pelo usuário e exibir o CPF formatado.

### Tarefas
- [ ] Ler valores digitados para **quatro variáveis inteiras**.
- [ ] Exibir o CPF formatado a partir dos valores lidos.

## Etapa 4: Validando Positivos

### Objetivos
Valide para que os números digitados sejam maiores que zero.

### Tarefas
- [ ] Ler apenas valores maiores que zero.
- [ ] Exibir o CPF formatado a partir dos valores lidos.

## Etapa 5: Entrando Texto

### Objetivos
Receba um CPF completo (com pontos e traço) e mostre ele separado em 2 partes.

### Tarefas
- [ ] Coloque o nome dos integrantes estar na parte inicial do README.md.
- [ ] Todos os integrantes devem ter suas contas no GitHub.
- [ ] Leia um CPF completo do usuário (`XXX.XXX.XXX-YY`).
- [ ] Separe os 9 números do CPF dos 2 Dígitos Verificadores em duas variáveis.
- [ ] Exiba as duas variáveis separadamente.

## Etapa 6: Validando Entrada

### Objetivos
Receba um CPF completo e valide ele.

### Tarefas
- [ ] Leia um CPF completo do usuário.
- [ ] Valide para que o CPF esteja nos formatos `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`.

## Etapa 7: Dígito 1

### Objetivos
Calcular e encontrar o Primeiro Dígito Verificador - PDV.

### Tarefas
- [ ] Receba um CPF válido do usuário (formatos suportados `XXX.XXX.XXX-YY` ou `XXXXXXXXXYY`).
- [ ] Se o formato não for válido, encerre o programa.
- [ ] Calcule o [Primeiro Dígito Verificador](#cálculo-do-primeiro-dígito) conforme especificado.
- Ao final, mostre :
    - [ ] O CPF conforme foi digitado;
    - [ ] O Primeiro Dígito Verificador encontrado;
    - [ ] O resultado da comparação do PDV encontrado com o PDV do CPF digitado;
- [ ] A atualização do código tem que ser feito por um integrante que ainda não realizou um [`Pull Request`](https://docs.github.com/pt/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork);

---

# Como usar checkbox no README

Copie a seção `Desenvolvimento do Projeto` direto no seu `README.md`.<br>
Marque as tarefas concluídas trocando `[ ]` por `[x]` à medida que for avançando.

Exemplo antes e depois de completar uma tarefa:

```markdown
- [ ] Criar um novo repositório no GitHub <--- antes de realizar a tarefa
- [x] Criar um novo repositório no GitHub <--- após realizar a tarefa
```
