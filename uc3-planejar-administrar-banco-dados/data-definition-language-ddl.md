# data definition language - ddl

## `create`

### `CREATE DATABASE`

Cria um **novo banco de dados vazio**, que atuará como um "container" para armazenar todas as tabelas, índices, funções e outros objetos relacionados a uma aplicação específica.

Sintaxe :

```sql
CREATE DATABASE nome_do_banco
    [ WITH ]
    [ OWNER [=] nome_usuario ]
    [ ENCODING [=] codificação ]
    [ LC_COLLATE [=] collation ]
    [ LC_CTYPE [=] ctype ]
    [ TEMPLATE [=] template ]
    [ ALLOW_CONNECTIONS [=] permitir_conexoes ]
    [ CONNECTION LIMIT [=] limite_conexoes ]
    [ IS_TEMPLATE [=] eh_template ];
```

#### **Parâmetros Explicados:**
1. **`OWNER`**
    - Define o usuário proprietário do banco.
    - Padrão: usuário que executou o comando.
    ```sql
    CREATE DATABASE vendas OWNER = joao_silva;
    ```

2. **`ENCODING`**
    - Especifica a codificação de caracteres (ex: `UTF8` para suporte a múltiplos idiomas).
    ```sql
    CREATE DATABASE vendas ENCODING = 'UTF8';
    ```

3. **`LC_COLLATE` e `LC_CTYPE`**
    - Controlam ordenação de texto e classificação de caracteres.
    - Exemplo para português brasileiro:
    ```sql
    CREATE DATABASE vendas
        LC_COLLATE = 'pt_BR.UTF-8'
        LC_CTYPE = 'pt_BR.UTF-8';
    ```

4. **`TEMPLATE`**
    - Clona a estrutura de outro banco existente.
    - Padrão: `template1` (banco modelo do PostgreSQL).
    ```sql
    CREATE DATABASE vendas_dev TEMPLATE = vendas;
    ```

5. **`CONNECTION LIMIT`**
    - Limita conexões simultâneas (útil para evitar sobrecarga).
    ```sql
    CREATE DATABASE vendas CONNECTION LIMIT = 50;
    ```

#### **Funcionamento Interno:**
- O PostgreSQL cria uma **cópia física** do banco modelo (`template1`) no diretório `PGDATA/base`.
- Gera um **OID único** (Object Identifier) para o novo banco.
- Registra metadados na tabela de catálogo `pg_database`.

---

### `CREATE TABLE`

Cria uma nova tabela com colunas pré-definidas, tipos de dados, e restrições. É o "esqueleto" onde os dados serão armazenados.

Sintaxe :
```sql
CREATE TABLE [ IF NOT EXISTS ] nome_tabela (
    nome_coluna tipo_dado [ RESTRIÇÕES ],
    ...
);
```

#### Tipos de Dados Usados

| Tipo         | Descrição                                  | Exemplo                |
|--------------|--------------------------------------------|------------------------|
| **`INT`**    | Números inteiros (-2,147,483,648 a 2,147,483,647) | `id INT` |
| **`VARCHAR(n)`** | Texto de comprimento variável (max `n` caracteres) | `nome VARCHAR(50)` |

#### Restrições Comuns

| Restrição      | Descrição                               | Exemplo                     |
|----------------|-----------------------------------------|-----------------------------|
| **`PRIMARY KEY`** | Identificador único da linha            | `id INT PRIMARY KEY`        |
| **`NOT NULL`**   | Valor obrigatório (não pode ser vazio)  | `nome VARCHAR(50) NOT NULL` |
| **`UNIQUE`**     | Valor único na tabela                   | `email VARCHAR(100) UNIQUE` |
| **`CHECK`**      | Validação personalizada                 | `idade INT CHECK (idade >= 18)` |

---

### Exemplo Completo com Funcionamento Passo a Passo

#### 1. Criando o Banco de Dados
```sql
-- Cria um banco com codificação UTF-8 e limite de 30 conexões
CREATE DATABASE escola;
```

#### 2. Criando uma Tabela de Alunos
```sql
CREATE TABLE alunos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(10)
);
```

#### O Que Acontece nos Bastidores?
1. **Alocação de Espaço:**
    - O PostgreSQL cria um arquivo físico em `PGDATA/base/escola/` (ex: `16543`) para armazenar os dados.

2. **Registro de Metadados:**
    - Armazena a estrutura da tabela no catálogo `pg_class`.
    - Grava informações das colunas em `pg_attribute`.

3. **Criação de Índices:**
    - Automaticamente cria um índice **B-tree** para a `PRIMARY KEY` (`id`).

---

### Boas Práticas
1. **Nomenclatura Clara:**
    ```sql
    -- Ruim
    CREATE TABLE t1 (f1 INT, f2 VARCHAR);

    -- Bom
    CREATE TABLE funcionarios (id INT, nome VARCHAR);
    ```

---

### Erros Comuns

1. **Banco já existe:**
    ```sql
    CREATE DATABASE escola; -- ERRO! se "escola" já existir
    CREATE DATABASE IF NOT EXISTS escola; -- Ignora se existir
    ```

2. **Tabela sem chave primária:**
    - Sem `PRIMARY KEY`, não há como identificar registros únicos.

3. **`VARCHAR` sem tamanho:**
    ```sql
    CREATE TABLE errada (nome VARCHAR); -- Permitirá textos de QUALQUER tamanho!
    ```

---

## `Primary Key` (Chave Primária)

A chave primária é um **conceito fundamental** em bancos de dados relacionais que garante que cada registro em uma tabela seja **único e identificável de forma inequívoca**. É como o CPF de uma pessoa ou o número de série de um produto: não pode haver duplicatas!

### Características Essenciais

| Propriedade         | Descrição                                                                 |
|----------------------|---------------------------------------------------------------------------|
| **Unicidade**        | Cada valor deve ser **exclusivo** na tabela (nunca repetido).             |
| **Não Nulidade**     | **Não pode ser `NULL`** (valor ausente).                                  |
| **Identificação**    | Atua como "endereço" para referenciar o registro em outras tabelas.       |
| **Índice Automático**| O SGBD cria um **índice otimizado** para buscas rápidas (ex: B-tree).     |

### Por Que Usar uma Chave Primária?

1. **Evitar Duplicatas**
    - Garante que não existam dois registros idênticos (ex: dois clientes com mesmo ID).

2. **Criar Relacionamentos**
    - Permite ligar tabelas através de **chaves estrangeiras** (*foreign keys*).
    - Exemplo:
        ```sql
        -- Tabela PEDIDOS referencia CLIENTES via chave primária (id)
        CREATE TABLE pedidos (
            id INT PRIMARY KEY,
            cliente_id INT REFERENCES clientes(id), -- Chave estrangeira
            total DECIMAL
        );
        ```

3. **Acelerar Consultas**
    - Buscar um registro pela chave primária é **extremamente rápido** (uso de índice).
    ```sql
    SELECT * FROM clientes WHERE id = 100; -- Busca instantânea!
   ```

### Tipos de Chaves Primárias Comuns

| Tipo                | Descrição                                     | Exemplo                      |
|---------------------|-----------------------------------------------|------------------------------|
| **Coluna Única**    | Uma única coluna como identificador.          | `id INT PRIMARY KEY`         |
| **Chave Natural**   | Dado existente com unicidade garantida (ex: CPF). | `cpf VARCHAR(11) PRIMARY KEY` |
| **Chave Surrogada** | Valor artificial (gerado automaticamente).    | `id SERIAL PRIMARY KEY`      |
| **Chave Composta**  | Combinação de 2+ colunas para formar a chave. | `PRIMARY KEY (pais, cidade)` |

### Exemplo Prático: Funcionamento

**Tabela sem Chave Primária:**
```
| nome     | departamento |
|----------|--------------|
| João     | Vendas       |
| Maria    | TI           |
| João     | Vendas       |  -- Registro duplicado!
```
**Problema:** Não é possível distinguir os dois "João" da Vendas.

**Tabela com Chave Primária:**
```sql
CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,         -- Chave artificial única
    nome VARCHAR(50) NOT NULL,
    departamento VARCHAR(20)
);
```
**Resultado:**
```
| id | nome     | departamento |
|----|----------|--------------|
| 1  | João     | Vendas       |
| 2  | Maria    | TI           |
| 3  | João     | Vendas       |  -- Registro válido! ID diferente.
```

### Regras de Implementação
1. **Sintaxe:**
    ```sql
    -- Opção 1: Direto na coluna
    CREATE TABLE tabela (
        id INT PRIMARY KEY
    );

    -- Opção 2: Declaração explícita
    CREATE TABLE tabela (
        id INT,
        CONSTRAINT pk_tabela PRIMARY KEY (id)
    );
    ```

2. **Geração Automática (Chave Surrogada):**
    Use `SERIAL` ou `IDENTITY` para IDs incrementais:
    ```sql
    CREATE TABLE produtos (
        id SERIAL PRIMARY KEY,          -- Auto-incremento (1, 2, 3...)
        nome VARCHAR(100)
    );
    ```

3. **Chave Composta:**
    ```sql
    CREATE TABLE matriculas (
        aluno_id INT,
        disciplina_id INT,
        PRIMARY KEY (aluno_id, disciplina_id)
    );
    ```

### Impacto no Desempenho

- **Vantagem:** Consultas por chave primária são as **mais rápidas** do banco de dados.
- **Cuidado:** Chaves primárias longas (ex: UUIDs) ocupam mais espaço e podem reduzir performance em índices.

### Erros Comuns

1. **Não definir chave primária:**
    - Torna o banco propenso a dados duplicados e inviabiliza relacionamentos.

2. **Usar dados mutáveis:**
    - Evite colunas que podem mudar (ex: email). Prefira IDs estáveis.

3. **Chave composta complexa:**
    - Muitas colunas na chave dificultam consultas e relacionamentos.

### Boas Práticas

1. **Prefira chaves surrogadas:**
    - `SERIAL` ou `IDENTITY` simplificam o gerenciamento.
2. **Nomes intuitivos:**
    - Use `id` ou sufixos como `_id` (ex: `produto_id`).
3. **Sempre defina uma PK:**
    - Mesmo em tabelas pequenas!

> **Resumo Final:** A chave primária é o alicerce da integridade e eficiência de um banco de dados relacional. Sem ela, os dados perdem confiabilidade e as relações entre tabelas tornam-se impossíveis.

## exercícios

<details>
<summary>Lista de Exercícios</summary>

### **Exercício 1: Tabela Básica de Usuários**
Crie uma tabela `usuarios` com:
- ID inteiro auto-incrementado (chave primária)
- Nome (texto, máx 50 caracteres, obrigatório)
- Email (texto, máx 100 caracteres, único)
- Idade (inteiro opcional)

### **Exercício 2: Tabela de Produtos com Validação**
Crie uma tabela `produtos` com:
- Código (chave primária inteira)
- Nome (texto, máx 80 caracteres, obrigatório)
- Preço (inteiro positivo)
- Categoria (texto, máx 30 caracteres, padrão "Geral")

### **Exercício 3: Tabela de Pedidos com Chave Composta**
Crie uma tabela `pedidos` com chave primária composta por:
- Número do pedido (inteiro)
- Item (inteiro)
- Produto (texto, máx 50 caracteres)
- Quantidade (inteiro, mínimo 1)

### **Exercício 4: Tabela com Restrição de Domínio**
Crie uma tabela `funcionarios` com:
- Matrícula (texto, formato "FUNC-000", único)
- Nome (texto, máx 100 caracteres)
- Departamento (texto, só aceita "TI", "RH" ou "Vendas")

### **Exercício 5: Tabela com Chave Natural**
Crie uma tabela `cidades` usando como chave primária:
- CEP (texto, 8 caracteres)
- Nome (texto, máx 50 caracteres)
- População (inteiro, não negativo)

### **Exercício 6: Tabela com Auto-Incremento Personalizado**
Crie uma tabela `logs` onde:
- ID começa em 1000 e incrementa de 5 em 5
- Mensagem (texto, máx 200 caracteres)
- Nível (inteiro entre 1 e 3)

### **Exercício 7: Tabela com Valores Obrigatórios**
Crie uma tabela `contatos` onde:
- ID (auto-incrementado)
- Telefone (texto, 11 caracteres, obrigatório)
- Tipo (texto, máx 10 caracteres, padrão "Celular")

### **Exercício 8: Tabela com Múltiplas Restrições**
Crie uma tabela `estoque` com:
- Produto_ID (inteiro, chave primária)
- Nome (texto, máx 50 caracteres, único)
- Quantidade (inteiro, não negativo)
- Localização (texto, máx 10 caracteres, padrão "A001")

### **Exercício 9: Tabela com Chave e Dados Combinados**
Crie uma tabela `matriculas` com chave primária composta por:
- Aluno_ID (inteiro)
- Disciplina (texto, máx 30 caracteres)
E uma coluna:
- Nota (inteiro entre 0 e 10)

### **Exercício 10: Tabela com Validação Complexa**
Crie uma tabela `veiculos` com:
- Placa (texto, 7 caracteres, formato "ABC1D23", chave primária)
- Modelo (texto, máx 40 caracteres, obrigatório)
- Ano (inteiro entre 1886 e 2024)

</details>
