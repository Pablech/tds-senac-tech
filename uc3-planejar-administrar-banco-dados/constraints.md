# constraints

As **constraints** (restrições) são regras aplicadas a colunas ou tabelas para garantir a **integridade, precisão e consistência** dos dados. No MySQL, elas são fundamentais para manter a qualidade do banco de dados.

### O que são Constraints?

São limitações que definem como os dados podem ser inseridos, atualizados ou excluídos:
- **Propósito**: Evitar dados inválidos, duplicatas ou relações quebradas.
- **Localização**: Aplicadas no nível de coluna ou tabela.
- **Tempo**: Validadas durante operações de `INSERT`, `UPDATE` e `DELETE`.

### Tipos de Constraints

- `PRIMARY KEY` : identifica unicamente cada registro em uma tabela;
- `FOREIGN KEY` : mantém a **integridade referencial** entre tabelas relacionadas;
- `UNIQUE` : garante que todos os valores em uma coluna sejam distintos;
- `NOT NULL` : impede que valores `NULL` sejam inseridos em uma coluna;
- `CHECK` : valida dados com base em uma expressão lógica;
- `DEFAULT` : define um valor automático quando nenhum é especificado;

## `Primary Key`

A **Primary Key** (chave primária) é um conceito fundamental em bancos de dados relacionais. No MySQL, ela garante a **integridade e unicidade** dos dados em uma tabela.

### O que é uma Primary Key?

É uma **coluna (ou conjunto de colunas)** que identifica **exclusivamente** cada registro em uma tabela.
- **Valores únicos**: Não podem existir dois registros com a mesma chave primária.
- **Não nulos (`NOT NULL`)**: A coluna não pode ter valores `NULL`.
- **Única por tabela**: Cada tabela pode ter **apenas uma** primary key.
- **Índice automático**: O MySQL cria automaticamente um índice `PRIMARY` (clustered) para otimizar buscas.

### Por que usar uma Primary Key?

- **Evitar duplicatas**: Garante que cada registro seja único.
- **Relacionamentos**: Permite criar chaves estrangeiras (`FOREIGN KEY`) para vincular tabelas.
- **Desempenho**: Acelera operações de busca (`SELECT`), atualização (`UPDATE`) e exclusão (`DELETE`).
- **Integridade referencial**: Base para relações entre tabelas.

### Sintaxe

- **Durante a criação da tabela (coluna única):**
    ```sql
    CREATE TABLE clientes (
        id INT PRIMARY KEY,           -- Coluna única como PK
        nome VARCHAR(50) NOT NULL,
        email VARCHAR(100)
    );
    ```

- **Durante a criação (múltiplas colunas):**
    ```sql
    CREATE TABLE pedidos (
        cliente_id INT,
        pedido_id INT,
        data DATE,
        PRIMARY KEY (cliente_id, pedido_id)  -- PK composta (2 colunas)
    );
    ```

- **Adicionando após a criação da tabela:**
    ```sql
    ALTER TABLE produtos ADD PRIMARY KEY (codigo_barras);
    ```

### Exemplos Práticos

- **Exemplo 1: Primary Key Simples (Auto Incremento)**
    ```sql
    CREATE TABLE usuarios (
        id INT AUTO_INCREMENT PRIMARY KEY,  -- Valor gerado automaticamente
        nome VARCHAR(50) NOT NULL,
        data_cadastro DATE
    );

    -- Inserções:
    INSERT INTO usuarios (nome, data_cadastro) VALUES ('Ana', '2023-10-01');
    INSERT INTO usuarios (nome, data_cadastro) VALUES ('João', '2023-10-02');
    ```
    - O `id` será **1, 2, 3...** automaticamente.
    - Tentar inserir `id` duplicado gera erro: `Duplicate entry '1' for key 'PRIMARY'`.

- **Exemplo 2: Primary Key Composta**
    ```sql
    CREATE TABLE matricula (
        aluno_id INT,
        curso_id INT,
        data_matricula DATE,
        PRIMARY KEY (aluno_id, curso_id)  -- Combinação única
    );

    -- Inserções válidas:
    INSERT INTO matricula VALUES (1, 101, '2023-09-01');
    INSERT INTO matricula VALUES (1, 102, '2023-09-02');  -- aluno_id repete, mas curso_id é diferente
    INSERT INTO matricula VALUES (2, 101, '2023-09-01');

    -- Inserção inválida (duplicata):
    INSERT INTO matricula VALUES (1, 101, '2023-10-01');  -- Erro! Combinação (1,101) já existe.
    ```

- **Exemplo 3: Erros Comuns**
    ```sql
    -- Erro 1: Valor NULL em PK
    INSERT INTO usuarios (id, nome) VALUES (NULL, 'Carlos');  -- Falha: id não pode ser NULL.

    -- Erro 2: Duplicata
    INSERT INTO usuarios (id, nome) VALUES (1, 'Maria');  -- Falha: id=1 já existe.

    -- Erro 3: Adicionar PK em coluna com dados inválidos
    ALTER TABLE funcionarios ADD PRIMARY KEY (cpf);
    -- Se houver cpfs duplicados ou NULLs, o comando falhará.
    ```

### Regras Importantes

- **Nomes de Índice**: O MySQL nomeia automaticamente o índice da PK como `PRIMARY`.
- **Tipos de Dados**: Pode ser qualquer tipo (e.g., `INT`, `VARCHAR`, `DATE`), mas `INT AUTO_INCREMENT` é comum para eficiência.
- **Modificação**: Para alterar uma PK, primeiro remova a existente:
    ```sql
    ALTER TABLE tabela DROP PRIMARY KEY;
    ALTER TABLE tabela ADD PRIMARY KEY (nova_coluna);
    ```
- **Chaves Compostas**: A ordem das colunas importa! `PRIMARY KEY (A, B)` ≠ `PRIMARY KEY (B, A)`.

### Vantagens de Usar `AUTO_INCREMENT`

- **Geração automática**: Não precisa gerenciar valores manualmente.
- **Eficiência**: Índices inteiros são mais rápidos que strings.
- **Boas práticas**: Padrão em projetos para colunas como `id`.

```sql
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2)
);
```

### Boas Práticas

- Use `INT` ou `BIGINT` para PKs quando possível.
- Em chaves compostas, minimize o número de colunas (desempenho).
- Evite usar dados mutáveis (e.g., `VARCHAR`) como PK. Prefira valores estáticos.
- Sempre defina uma PK: Tabelas sem PK têm desempenho reduzido e risco de duplicatas.
