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

-- Emails que têm a como segundo caracter e contêm '@gmail'
SELECT * FROM clientes WHERE email LIKE '_a%@gmail%';
```
