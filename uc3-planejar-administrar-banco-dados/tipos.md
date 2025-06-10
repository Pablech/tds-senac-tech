# tipos de dados

## `INTEGER`

Um tipo numérico que armazena **valores inteiros** (números sem parte decimal). Ideal para quantidades, IDs, idades, ou qualquer dado numérico discreto.

### Características Técnicas
| Propriedade       | Valor no PostgreSQL                  |
|-------------------|--------------------------------------|
| **Faixa**         | -2.147.483.648 a +2.147.483.647     |
| **Armazenamento** | 4 bytes (32 bits)                   |
| **Sinônimos**     | `INT`, `INT4`                       |
| **Valor Padrão**  | `NULL` (se não especificado)        |

### Subtipos Relacionados
| Tipo         | Faixa                           | Armazenamento | Uso Típico                |
|--------------|---------------------------------|---------------|---------------------------|
| `SMALLINT`   | -32.768 a 32.767               | 2 bytes       | Idades, pequenas quantidades |
| `BIGINT`     | ±9.2 quintilhões               | 8 bytes       | Sistemas financeiros, Big Data |
| `SERIAL`     | 1 a 2.147.483.647 (auto-inc.)  | 4 bytes       | Chaves primárias automáticas |

### Exemplos de Uso
```sql
-- Tabela de produtos
CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,      -- INTEGER automático
    estoque INT NOT NULL,        -- Quantidade em estoque
    preco_custo INTEGER          -- Em centavos (ex: R$10,00 = 1000)
);
```

### Comportamento em Operações
```sql
SELECT 5 / 2; -- Resultado: 2 (divisão inteira!)
```
> ⚠️ **Cuidado!** Para divisões decimais, use `NUMERIC` ou converta: `SELECT 5.0 / 2` → `2.5`.


## `VARCHAR`

Um tipo de texto de **comprimento variável**. Armazena strings de caracteres com tamanho máximo pré-definido, ocupando apenas o espaço necessário.

### Características Técnicas
| Propriedade       | Detalhe                                                                 |
|-------------------|-------------------------------------------------------------------------|
| **Sintaxe**       | `VARCHAR(n)` onde `n` = máximo de caracteres (ex: `VARCHAR(100)`)      |
| **Limite Máximo** | Até 1 GB (1.073.741.824 caracteres)                                    |
| **Armazenamento** | 1 byte por caractere + 4 bytes de overhead                             |
| **Equivalente**   | `CHARACTER VARYING(n)`                                                 |

#### Comparação com `TEXT` e `CHAR`
| Tipo         | Comportamento                                                                 | Exemplo (`'abc'`) |
|--------------|-------------------------------------------------------------------------------|-------------------|
| **`VARCHAR(50)`** | Armazena exatamente o tamanho usado (3 caracteres)                         | Tamanho: 3 bytes  |
| **`CHAR(50)`**    | Preenche com espaços até completar 50 caracteres                              | Tamanho: 50 bytes |
| **`TEXT`**        | Sem limite pré-definido (ideal para textos longos)                            | Tamanho: 3 bytes  |

#### Exemplos Práticos
```sql
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,       -- Nome completo
    email VARCHAR(255) UNIQUE,        -- E-mail com limite seguro
    senha CHAR(60)                    -- Hash fixo de 60 caracteres
);
```

### Quando Usar Cada Tipo?
- ** `INTEGER` é ideal para:**
    - Chaves primárias (`SERIAL`)
    - Campos numéricos discretos (estoque, idade, IDs)
    - Valores que participarão de cálculos matemáticos

- ** `VARCHAR` é ideal para:**
    - Textos de tamanho variável (nomes, e-mails, descrições curtas)
    - Campos com limite máximo conhecido (ex: CEP, telefone)
    - Evitar desperdício de espaço (vs. `CHAR`)

### Quando Evitar

| Tipo         | Casos de Uso Inadequados                          | Alternativa Recomendada |
|--------------|--------------------------------------------------|-------------------------|
| `INTEGER`    | Valores decimais (preços, medidas)               | `NUMERIC` ou `DECIMAL`  |
| `VARCHAR`    | Textos longos (relatórios, artigos)              | `TEXT`                  |
| `VARCHAR`    | Dados numéricos que não serão calculados (ex: CPF)| `VARCHAR` (mesmo assim) |

## Exemplo Integrado em uma Tabela
```sql
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,                  -- INTEGER automático
    cpf VARCHAR(11) UNIQUE NOT NULL,        -- 11 caracteres fixos
    nome VARCHAR(100) NOT NULL,             -- Nome com até 100 chars
    idade SMALLINT NULL,                    -- Inteiro pequeno
    cidade VARCHAR(50)                      -- Valor padrão
);
```

### Inserindo Dados
```sql
INSERT INTO clientes (cpf, nome, idade, cidade)
VALUES ('12345678901', 'Maria Silva', 28, 'Rio de Janeiro');
```

### Armazenamento Físico Estimado
| Campo   | Tipo          | Tamanho | Observação                          |
|---------|---------------|---------|-------------------------------------|
| `id`    | `INTEGER`     | 4 bytes | Valor sequencial (ex: 1)            |
| `cpf`   | `VARCHAR(11)` | 11 bytes| Armazena exatamente 11 caracteres   |
| `nome`  | `VARCHAR(100)`| 11 bytes| "Maria Silva" tem 11 caracteres     |
| `idade` | `SMALLINT`    | 2 bytes | Valor 28                            |
| `cidade`| `VARCHAR(50)` | 14 bytes| "Rio de Janeiro" tem 14 caracteres  |

> Total: ~42 bytes por registro (sem overhead do sistema).

## Boas Práticas

1. **`VARCHAR` com tamanho adequado:**
    - Evite `VARCHAR(255)` por padrão; analise o dado real (ex: CEP → `VARCHAR(8)`).

2. **Prefira `SERIAL` para PKs:**
    ```sql
    -- Em vez de:
    id INTEGER PRIMARY KEY
    -- Use:
    id SERIAL PRIMARY KEY  -- Gera valores automaticamente
    ```

3. **Validação de Dados:**
    ```sql
    CREATE TABLE produtos (
        codigo VARCHAR(10) CHECK (codigo ~ '^[A-Z]{3}\d{7}$') -- Formato ABC1234567
    );
    ```

## Curiosidades do PostgreSQL**

- **Conversão Implícita:**
    ```sql
    SELECT '100' + 5; -- Resultado: 105 (converte texto para inteiro)
    ```
- **Performance:**
    - Operações com `INTEGER` são **10x mais rápidas** que com `VARCHAR`.
- **Armazenamento:**
    - Strings `VARCHAR` são compactadas automaticamente quando possível.
