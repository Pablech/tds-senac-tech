# string data type

## `CHAR`

- **Funcionamento**:
    - Aloca espaço **fixo** para cada valor, independentemente do conteúdo.
    - Preenche valores menores com **espaços em branco** à direita.
    - Exemplo: `CHAR(10)` sempre ocupa 10 caracteres.

- **Sintaxe**:
    ```sql
    coluna_nome CHAR(tamanho)
    ```
    - `tamanho`: Número de caracteres (1 a 255)

- **Armazenamento**:
    | Valor Inserido | Valor Armazenado (CHAR(5)) | Espaço Ocupado |
    |----------------|----------------------------|----------------|
    | "A"            | `"A    "` (5 caracteres)   | 5 bytes        |
    | "MySQL"        | `"MySQL"`                  | 5 bytes        |
    | "Database"     | ❌ Erro (truncado)         | -              |

- **Características**:
    - **Mais rápido** para leitura (tamanho previsível)
    - Ideal para dados de **tamanho uniforme** (ex: códigos de país, IDs fixos)
    - Comparações ignoram espaços extras
    - Waste de espaço se valores forem menores que o tamanho definido

---

## `VARCHAR`

- **Funcionamento**:
    - Armazena apenas os caracteres **efetivamente usados**.
    - Usa 1-2 bytes extras para registrar o tamanho real.
    - Exemplo: `VARCHAR(50)` pode armazenar de 0 a 50 caracteres.

- **Sintaxe**:
    ```sql
    coluna_nome VARCHAR(tamanho_max)
    ```
    - `tamanho_max`: 1 a 65.535 caracteres (limite do MySQL)

- **Armazenamento**:
    | Valor Inserido | Valor Armazenado (VARCHAR(5)) | Espaço Ocupado |
    |----------------|-------------------------------|----------------|
    | "A"            | `"A"`                        | 1 byte + 1 byte de overhead |
    | "MySQL"        | `"MySQL"`                     | 5 bytes + 1 byte de overhead |
    | "Database"     | ❌ Erro (se > 5 caracteres)   | -              |

- **Características**:
    - **Econômico** em espaço (só usa o necessário)
    - Ideal para dados de **tamanho variável** (nomes, endereços, descrições)
    - Levemente mais lento que `CHAR` (devido ao cálculo de tamanho)
    - Preserva espaços em branco

---

## `CHAR` vs. `VARCHAR`

| Característica               | `CHAR`                         | `VARCHAR`                      |
|------------------------------|--------------------------------|--------------------------------|
| **Comprimento**              | Fixo                           | Variável                       |
| **Espaço em disco**          | Sempre o tamanho definido      | Tamanho real + overhead (1-2 bytes) |
| **Overhead**                 | Nenhum                         | 1 byte (≤255 chars) ou 2 bytes (>255) |
| **Velocidade de leitura**    | Mais rápido                    | Levemente mais lento           |
| **Uso ideal**                | Dados de tamanho uniforme      | Dados de tamanho variável      |
| **Espaços à direita**        | Removidos na inserção          | Preservados                    |

### Exemplos Práticos

#### Tabela de Exemplo
```sql
CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    codigo_pais CHAR(2),       -- Sempre 2 caracteres (ex: BR, US)
    cpf CHAR(11),              -- Sempre 11 dígitos
    nome VARCHAR(50),          -- Tamanho variável
    email VARCHAR(100)         -- Tamanho variável
);
```

#### Inserindo Dados
```sql
INSERT INTO usuarios VALUES
(1, 'BR', '12345678901', 'João Silva', 'joao@empresa.com'),
(2, 'US', '98765432109', 'Maria', 'maria@startup.io');
```

#### Verificando o Armazenamento
```sql
SELECT
    codigo_pais,
    LENGTH(codigo_pais) AS tamanho_real,
    CHAR_LENGTH(codigo_pais) AS num_caracteres
FROM usuarios;
```
| codigo_pais | tamanho_real | num_caracteres |
|-------------|--------------|----------------|
| BR          | 2            | 2              |
| US          | 2            | 2              |

```sql
SELECT
    nome,
    LENGTH(nome) AS tamanho_real,
    CHAR_LENGTH(nome) AS num_caracteres
FROM usuarios;
```
| nome       | tamanho_real | num_caracteres |
|------------|--------------|----------------|
| João Silva | 10           | 10             |
| Maria      | 5            | 5              |

---

### Quando Usar Cada Tipo?

- **Use `CHAR` quando**:
    - Todos os valores têm **exatamente o mesmo tamanho**
        (ex: códigos ISO de países, CPF, RG, códigos de produto fixos)
    - Colunas com **poucos caracteres** (1-5)
    - Performance crítica em leituras frequentes

- **Use `VARCHAR` quando**:
    - Valores têm **tamanhos variados**
        (ex: nomes, endereços, descrições)
    - **Economia de espaço** é importante
    - Dados podem ser grandes (ex: até 65KB)

---

### Curiosidades e Cuidados

1. **Truncamento**:
    - Se inserir "Brasil" em `CHAR(2)` → "Br"
    - Se inserir "Brasil" em `VARCHAR(2)` → "Br"

2. **Collation e Charset**:
    - Em `utf8mb4` (suporte a emojis):
        - Cada caractere pode usar até 4 bytes
        - `VARCHAR(255)` pode ocupar até 255 × 4 + 2 = 1022 bytes

3. **Comparações**:
    ```sql
    SELECT * FROM usuarios WHERE codigo_pais = 'US ';
    -- Retorna linha 2 (espaços ignorados no CHAR)
    ```

4. **Performance em Indexação**:
    - Índices em colunas `CHAR` são ligeiramente mais eficientes
    - Para `VARCHAR` grandes, considere prefixos de índice:
        ```sql
        CREATE INDEX idx_nome ON usuarios (nome(10));
        ```

### **Resumo Final**
| **Critério**         | **`CHAR`**                  | **`VARCHAR`**                |
|----------------------|----------------------------|------------------------------|
| **Armazenamento**    | Estático                   | Dinâmico                     |
| **Velocidade**       | ⚡ Mais rápido             | ⚠ Levemente mais lento      |
| **Eficiência Espaço**| Baixa (se valores variam)  | Alta                         |
| **Caso de Uso**      | Identificadores fixos      | Textos variáveis             |

## Exercícios

<details>
<summary>Lista de Exercícios</summary>

### Estrutura da Tabela `produtos`

Para os exercícios abaixo, use a seguinte tabela.
```sql
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    categoria CHAR(3),          -- Ex: 'ELE' (eletrônicos), 'MOV' (móveis), 'ROU' (roupas)
    preco DECIMAL(10,2),
    estoque TINYINT UNSIGNED,   -- 0 a 255
    peso_g INT UNSIGNED,        -- Peso em gramas
    fornecedor_id BIGINT,       -- IDs grandes
    data_cadastro DATE
);
```

1. Conte quantos produtos têm `estoque` (TINYINT) igual a zero.
2. Liste o preço médio dos produtos com `peso_g` (INT) entre 500 e 2000 gramas.
3. Selecione o `nome` (VARCHAR) e `preco` dos produtos onde `categoria` (CHAR) está em ('ELE', 'MOV').
4. Calcule o valor total do estoque (`preco * estoque`) para produtos com `estoque` > 10.
5. Encontre o produto mais caro com `categoria` = 'ROU' e `estoque` > 0.
6. Conte quantos produtos têm `fornecedor_id` (BIGINT) entre 1000 e 5000.
7. Liste os produtos com `data_cadastro` (DATE) entre '2023-01-01' e '2023-06-30' e `preco` < 100.00.
8. Calcule a média de `peso_g` para produtos da categoria 'ELE' ou 'MOV'.
9. Selecione o menor `estoque` entre produtos com `preco` > 500.00.
10. Conte quantos produtos têm `nome` (VARCHAR) começando com 'S' e `categoria` = 'ELE'.
11. Calcule a soma total de `estoque` para produtos com `fornecedor_id` IN (123, 456, 789).
12. Encontre o `peso_g` máximo entre produtos com `preco` BETWEEN 50.00 AND 200.00.
13. Liste produtos onde `categoria` (CHAR) tem exatamente 3 caracteres e `estoque` < 5.
14. Calcule o preço médio dos produtos com `estoque` = 0 e `fornecedor_id` > 10000.
15. Conte quantos produtos têm `peso_g` < 1000 ou `preco` > 1000.00.
16. Selecione `nome` e `preco` dos produtos com `data_cadastro` em 2023 e `categoria` NOT IN ('ROU').
17. Calcule a soma total de `preco * estoque` para produtos da categoria 'MOV'.
18. Encontre o `fornecedor_id` mais alto entre produtos com `estoque` > 20.
19. Liste produtos com `nome` contendo 'Pro' e `peso_g` BETWEEN 300 AND 1500.
20. Calcule a média de `preco` para produtos com `categoria` = 'ELE' e `fornecedor_id` IN (555, 777).
21. Conte quantos produtos têm `estoque` (TINYINT) par (use operador aritmético `%`).
22. Selecione o produto mais leve (`peso_g` mínimo) com `preco` > 200.00.
23. Calcule o total de produtos por `categoria` (CHAR), mostrando categoria e count.
24. Liste produtos com `fornecedor_id` (BIGINT) terminando em '99' e `estoque` BETWEEN 5 AND 15.
25. Encontre a maior diferença entre `preco` máximo e mínimo na tabela.
26. Conte produtos com `data_cadastro` anterior a 2023 e `categoria` = 'LIV' (CHAR(3)).
27. Calcule a média de `preco` para produtos com `nome` (VARCHAR) de até 10 caracteres.
28. Selecione produtos onde `categoria` IN ('ELE', 'MOV') e `estoque` < AVG(`estoque`) (subconsulta).
29. Conte quantos produtos têm `peso_g` (INT) > 1000 e `fornecedor_id` NOT IN (111, 222).
30. Liste `nome`, `preco` e `estoque` para produtos com `preco`/`peso_g` > 0.1 (preço por grama).

</details>
