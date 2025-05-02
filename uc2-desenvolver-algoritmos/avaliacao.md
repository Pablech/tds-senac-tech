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

---

# Como usar checkbox no README

Copie a seção `Desenvolvimento do Projeto` direto no seu `README.md`.<br>
Marque as tarefas concluídas trocando `[ ]` por `[x]` à medida que for avançando.

Exemplo antes e depois de completar uma tarefa:

```markdown
- [ ] Criar um novo repositório no GitHub <--- antes de realizar a tarefa
- [x] Criar um novo repositório no GitHub <--- após realizar a tarefa
```
