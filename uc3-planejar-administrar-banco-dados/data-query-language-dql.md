# data query language - dql

## `SELECT`

O comando `SELECT` é o principal comando **DQL (Data Query Language)** do MySQL, usado para recuperar dados de um ou mais tabelas. É a ferramenta mais importante para consultas e análises de dados.

Sintaxe :

```sql
SELECT [colunas|expressões]
FROM [tabela(s)]
[WHERE condição]
[GROUP BY agrupamento]
[HAVING filtro_agregado]
[ORDER BY ordenação]
[LIMIT quantidade]
[OFFSET início];
```

---

### Selecionando Colunas

- **Selecionar todas as colunas:**
```sql
SELECT * FROM clientes;
```

- **Selecionar colunas específicas:**
```sql
SELECT nome, email, data_cadastro FROM clientes;
```

- **Usar aliases (`AS`):**
```sql
SELECT
    nome AS 'Nome Completo',
    email AS 'E-mail'
FROM clientes;
```

---

### Filtros com `WHERE`

- **Operadores de comparação:**
```sql
SELECT * FROM produtos WHERE preco > 100;
```

| Operador | Descrição          | Exemplo                     |
|----------|--------------------|-----------------------------|
| `=`      | Igual              | `WHERE id = 10`             |
| `<>`     | Diferente          | `WHERE status <> 'inativo'` |
| `>`      | Maior que          | `WHERE salario > 5000`      |
| `<`      | Menor que          | `WHERE idade < 18`          |
| `>=`     | Maior ou igual     | `WHERE estoque >= 100`      |
| `<=`     | Menor ou igual     | `WHERE preco <= 50.00`      |

- **Operadores lógicos (AND, OR, NOT):**
```sql
SELECT * FROM pedidos
WHERE total > 1000 AND quantidade > 1;
```

- **Intervalos (BETWEEN, IN):**
```sql
-- Entre dois valores
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 200;

-- Lista de valores
SELECT * FROM clientes WHERE estado IN ('SP', 'RJ', 'MG');
```

### Buscas com `LIKE`

```sql
-- Nomes que começam com 'A'
SELECT * FROM clientes WHERE nome LIKE 'A%';

-- Emails que contêm '@gmail'
SELECT * FROM clientes WHERE email LIKE '%@gmail%';
```

---

### `ORDER BY`

O comando `ORDER BY` é usado para classificar os resultados de uma consulta SQL em ordem ascendente ou descendente.

Sintaxe :
```sql
SELECT coluna1, coluna2, ...
FROM tabela
ORDER BY coluna1 [ASC|DESC], coluna2 [ASC|DESC], ...;
```

#### Funcionalidades:

1. **Ordenação simples**:
    ```sql
    SELECT * FROM produtos ORDER BY preco;
    ```
    (ordena por preço em ordem crescente - ASC é o padrão)

2. **Ordenação descendente**:
    ```sql
    SELECT * FROM clientes ORDER BY data_cadastro DESC;
    ```

3. **Ordenação múltipla**:
    ```sql
    SELECT * FROM funcionarios ORDER BY departamento ASC, salario DESC;
    ```
    (ordena por departamento em ordem alfabética e depois por salário do maior para o menor)

4. **Ordenação por expressão**:
    ```sql
    SELECT * FROM pedidos ORDER BY (quantidade * preco_unitario) DESC;
    ```

5. **Ordenação por posição da coluna** (não recomendado para código permanente):
    ```sql
    SELECT nome, email, telefone FROM contatos ORDER BY 2;
    ```
    (ordena pela segunda coluna selecionada - email)

### `LIMIT`

O `LIMIT` restringe o número de linhas retornadas por uma consulta.

Sintaxe :
```sql
SELECT coluna1, coluna2, ...
FROM tabela
LIMIT numero_de_linhas;
```

#### Funcionalidades:

1. **Limitar resultados**:
    ```sql
    SELECT * FROM produtos LIMIT 10;
    ```
    (retorna apenas os 10 primeiros registros)

2. **Combinação com ORDER BY** (muito comum):
    ```sql
    SELECT * FROM filmes ORDER BY ano_lancamento DESC LIMIT 5;
    ```
    (os 5 filmes mais recentes)

3. **Dois parâmetros** (LIMIT offset, count):
    ```sql
    SELECT * FROM clientes LIMIT 5, 10;
    ```
    (pula os 5 primeiros e retorna os próximos 10)

### `OFFSET`

O `OFFSET` especifica a partir de qual linha os resultados devem ser retornados, geralmente usado com `LIMIT` para paginação.

Sintaxe :
```sql
SELECT coluna1, coluna2, ...
FROM tabela
LIMIT numero_de_linhas OFFSET inicio;
```

#### Funcionalidades:

1. **Paginação básica**:
    ```sql
    SELECT * FROM artigos ORDER BY data_publicacao DESC LIMIT 10 OFFSET 20;
    ```
    (retorna 10 artigos, começando do 21º - página 3 para resultados com 10 itens por página)

2. **Sintaxe alternativa** (equivalente à anterior):
    ```sql
    SELECT * FROM artigos ORDER BY data_publicacao DESC LIMIT 20, 10;
    ```

3. **Uso em aplicações web** (exemplo com cálculo dinâmico):
    ```php
    $pagina = 3;
    $itens_por_pagina = 10;
    $offset = ($pagina - 1) * $itens_por_pagina;

    $query = "SELECT * FROM produtos LIMIT $itens_por_pagina OFFSET $offset";
    ```
