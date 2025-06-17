# filtros

## `WHERE`

A cláusula `WHERE` é o coração da filtragem de dados em consultas SQL. Ela permite selecionar registros específicos com base em condições que combinam operadores **relacionais**, **lógicos** e **aritméticos**.

### Tabela de Exemplo: `produtos`

| id | nome       | categoria | preco | estoque | peso_g |
|----|------------|-----------|-------|---------|--------|
| 1  | Notebook   | Eletronic | 4200  | 15      | 1500   |
| 2  | Smartphone | Eletronic | 2800  | 8       | 200    |
| 3  | Mesa       | Móveis    | 899   | 22      | 8000   |
| 4  | Camiseta   | Roupas    | 79.90 | 0       | 150    |
| 5  | Livro      | Livros    | 59.50 | 30      | 350    |

### Operadores Relacionais

Comparam valores e retornam `VERDADEIRO` ou `FALSO`.

| Operador | Descrição          | Exemplo                     |
|----------|--------------------|-----------------------------|
| `=`      | Igual             | `WHERE categoria = 'Livros'` |
| `<>`     | Diferente         | `WHERE preco <> 0`          |
| `>`      | Maior que         | `WHERE peso_g > 1000`       |
| `<`      | Menor que         | `WHERE estoque < 10`        |
| `>=`     | Maior ou igual    | `WHERE preco >= 100`        |
| `<=`     | Menor ou igual    | `WHERE id <= 3`             |

**Exemplos:**
```sql
-- Produtos com preço maior que R$ 100:
SELECT * FROM produtos WHERE preco > 100;

-- Produtos fora de estoque (estoque = 0):
SELECT nome FROM produtos WHERE estoque = 0;
-- Resultado: "Camiseta"
```

---

### Operadores Aritméticos
Realizam cálculos matemáticos em colunas numéricas.
Usadas para cálculos matemáticos em consultas. Principais operadores:

| Operador | Descrição         | Exemplo               | Resultado |
|----------|-------------------|-----------------------|-----------|
| `+`      | Adição            | `SELECT 5 + 3;`       | 8         |
| `-`      | Subtração         | `SELECT 10 - 4;`      | 6         |
| `*`      | Multiplicação     | `SELECT 7 * 2;`       | 14        |
| `/`      | Divisão           | `SELECT 15 / 3;`      | 5.0000    |
| `%`      | Módulo (resto)    | `SELECT 11 % 4;`      | 3         |
| `DIV`    | Divisão inteira   | `SELECT 10 DIV 3;`    | 3         |

**Exemplos:**
```sql
-- Produtos com desconto de 15% (novo preço):
SELECT nome, preco * 0.85 AS preco_desconto
FROM produtos
WHERE categoria = 'Eletronic';

-- Valor total do estoque por produto:
SELECT nome, preco * estoque AS valor_total
FROM produtos
WHERE preco * estoque > 1000;
```

**Resultado:**
| nome       | valor_total |
|------------|-------------|
| Notebook   | 63000       |
| Smartphone | 22400       |
| Mesa       | 19778       |

---

### Operadores Lógicos

Combinam múltiplas condições.

| Operador | Descrição                     | Comportamento                                                                 |
|----------|-------------------------------|-------------------------------------------------------------------------------|
| `AND`    | Conjunção lógica (E)          | Retorna TRUE se **todas** as condições forem verdadeiras                     |
| `OR`     | Disjunção lógica (OU)         | Retorna TRUE se **pelo menos uma** condição for verdadeira                   |
| `NOT`    | Negação lógica (NÃO)          | Inverte o resultado de uma expressão booleana                                |
| `XOR`    | OU Exclusivo                  | Retorna TRUE se **exatamente uma** das condições for verdadeira              |

#### `AND`

- **Funcionamento**: Todas as condições devem ser verdadeiras
- **Tabela Verdade**:
    | A     | B     | A AND B |
    |-------|-------|---------|
    | TRUE  | TRUE  | TRUE    |
    | TRUE  | FALSE | FALSE   |
    | FALSE | TRUE  | FALSE   |
    | FALSE | FALSE | FALSE   |
    | NULL  | TRUE  | NULL    |
    | TRUE  | NULL  | NULL    |

**Exemplos**:
```sql
-- Produtos em estoque com preço entre 50 e 100
SELECT * FROM produtos
WHERE estoque > 0 AND preco BETWEEN 50 AND 100;
```

#### `OR`

- **Funcionamento**: Pelo menos uma condição deve ser verdadeira
- **Tabela Verdade**:
    | A     | B     | A OR B |
    |-------|-------|--------|
    | TRUE  | TRUE  | TRUE   |
    | TRUE  | FALSE | TRUE   |
    | FALSE | TRUE  | TRUE   |
    | FALSE | FALSE | FALSE  |
    | NULL  | TRUE  | TRUE   |
    | FALSE | NULL  | NULL   |

**Exemplos**:
```sql
-- Produtos com estoque baixo OU preço abaixo de 800
SELECT * FROM produtos
WHERE estoque < 10 OR preco < 800;
```

#### `NOT`

- **Funcionamento**: Inverte o valor booleano
- **Tabela Verdade**:
    | A     | NOT A |
    |-------|-------|
    | TRUE  | FALSE |
    | FALSE | TRUE  |
    | NULL  | NULL  |

**Exemplos**:
```sql
-- Produtos que NÃO são Eletronic
SELECT * FROM produtos
    WHERE categoria NOT IN ('Eletronic');
```

#### `XOR` (OU Exclusivo)

- **Funcionamento**: Verdadeiro quando as condições são diferentes
- **Tabela Verdade**:
    | A     | B     | A XOR B |
    |-------|-------|---------|
    | TRUE  | TRUE  | FALSE   |
    | TRUE  | FALSE | TRUE    |
    | FALSE | TRUE  | TRUE    |
    | FALSE | FALSE | FALSE   |
    | NULL  | TRUE  | NULL    |
    | TRUE  | NULL  | NULL    |

**Exemplos**:
```sql
-- Produtos que OU estão em promoção OU têm estoque alto, mas não os dois
SELECT * FROM produtos
WHERE promocao = 1 XOR estoque > 100;
```

#### Combinação de Operadores Lógicos

**Exemplo Complexo**:
```sql
SELECT * FROM pedidos
WHERE (cliente_id = 100 OR cliente_id = 200)  -- Cliente específico
    AND (valor_total > 500)                     -- Pedidos acima de 500
    AND NOT cancelado                           -- Não cancelados
    AND (forma_pagamento = 'cartao' XOR forma_pagamento = 'pix'); -- Pagamento exclusivo
```

### Regras de Precedência

A ordem de avaliação é crítica:
1. **Parênteses `()`**
2. **Operadores aritméticos** (`*`, `/`, `%` → `+`, `-`)
3. **Operadores relacionais** (`>`, `<`, `=`, etc.)
4. **Operadores lógicos** (`NOT` → `AND` → `OR`)

**Exemplo crítico:**
```sql
SELECT * FROM produtos
WHERE categoria = 'Eletronic' OR estoque > 10 AND preco < 1000;
```
É interpretado como:
```sql
WHERE categoria = 'Eletronic' OR (estoque > 10 AND preco < 1000)
```
**Resultado inesperado:**
| id | nome       | categoria | preco | estoque |
|----|------------|-----------|-------|---------|
| 1  | Notebook   | Eletronic | 4200  | 15      |  → Atende 1ª condição
| 3  | Mesa       | Móveis    | 899   | 22      |  → Atende 2ª condição
| 5  | Livro      | Livros    | 59.50 | 30      |  → Atende 2ª condição

**Solução correta:**
```sql
WHERE (categoria = 'Eletronic' OR estoque > 10) AND preco < 1000;
```

### Comportamento com NULL

Os valores NULL afetam os resultados:
```sql
SELECT 1 AND NULL;   -- Resultado: NULL
SELECT 0 OR NULL;    -- Resultado: NULL
SELECT 1 OR NULL;    -- Resultado: 1
SELECT NOT NULL;     -- Resultado: NULL
```

**Boas Práticas com NULL**:
```sql
-- Verificação segura para NULL
SELECT * FROM clientes
WHERE telefone IS NOT NULL AND NOT bloqueado;

-- COALESCE para tratar NULL
SELECT * FROM produtos
WHERE COALESCE(estoque, 0) > 10;
```

### Boas Práticas

1. **Parênteses para clareza:**
    Sempre use `()` quando combinar `AND`/`OR`, mesmo quando desnecessários.

2. **Funções em cálculos:**
    Para operações complexas, use funções como `ROUND()`:
    ```sql
    SELECT nome, ROUND(preco / peso_g, 3) AS preco_grama
    FROM produtos
    ```

3. **Performance em cálculos:**
    Evite cálculos pesados em colunas não indexadas:
    ```sql
    -- Ineficiente:
    WHERE preco * 1.1 > 5000

    -- Melhor:
    WHERE preco > 5000 / 1.1
    ```

4. **Valores `NULL`:**
    Use `IS NULL`/`IS NOT NULL` para checar `NULL`:
    ```sql
    SELECT * FROM produtos WHERE estoque IS NULL;
    ```

### Combinações Avançadas

**Exemplo 1: Filtro complexo com parênteses**
```sql
SELECT nome, preco
FROM produtos
WHERE categoria = 'Eletronic'
    AND (preco > 3000 OR estoque <= 10);
```
**Resultado:**
| nome       | preco |
|------------|-------|
| Notebook   | 4200  |
| Smartphone | 2800  |

**Exemplo 2: Cálculo aritmético + condicional**
```sql
-- Produtos onde o preço por grama é < R$ 0.50
SELECT nome, preco / peso_g AS preco_por_grama
FROM produtos
WHERE (preco / peso_g) < 0.50;
```
**Resultado:**
| nome     | preco_por_grama |
|----------|-----------------|
| Mesa     | 0.112           |
| Camiseta | 0.533           | ❌ (não atende ao filtro)
| Livro    | 0.170           |

### Resumo de Aplicação
```sql
SELECT colunas
FROM tabela
WHERE
    [Condições Relacionais]
    AND/OR [Combinações Lógicas]
    AND/OR [Expressões Aritméticas]
```

**Exemplo final:**
```sql
-- Produtos eletrônicos ou com estoque > 20,
-- com preço entre R$ 500 e R$ 3000,
-- e valor total do estoque > R$ 5000
SELECT nome, preco * estoque AS valor_estoque
FROM produtos
WHERE (categoria = 'Eletronic' OR estoque > 20)
    AND preco BETWEEN 500 AND 3000
    AND (preco * estoque) > 5000;
```

**Resultado:**
| nome   | valor_estoque |
|--------|---------------|
| Mesa   | 19778         |

### `LIKE`

O comando `LIKE` no MySQL é um operador de comparação usado em cláusulas `WHERE` para buscar padrões específicos em colunas de texto. Ele é particularmente útil quando você precisa encontrar registros que contenham determinadas sequências de caracteres, sem precisar de uma correspondência exata.

Sintaxe :

```sql
SELECT coluna1, coluna2, ...
FROM tabela
WHERE coluna LIKE padrão;
```

#### Caracteres Coringa (Wildcards)

O `LIKE` utiliza dois caracteres coringa principais:

- **1. `%` - Representa zero, um ou múltiplos caracteres**
    - `'a%'`: Encontra qualquer valor que comece com "a"
    - `'%a'`: Encontra qualquer valor que termine com "a"
    - `'%a%'`: Encontra qualquer valor que tenha "a" em qualquer posição
    - `'a%b'`: Encontra valores que começam com "a" e terminam com "b"

- **2. `_` - Representa um único caractere**
    - `'_a'`: Encontra valores onde "a" é o segundo caractere
    - `'a_'`: Encontra valores que começam com "a" e têm pelo menos 2 caracteres
    - `'a__b'`: Encontra valores que começam com "a" e terminam com "b" com exatamente 4 caracteres

Exemplos :

- Buscando nomes que começam com "Mar":
    ```sql
    SELECT * FROM clientes WHERE nome LIKE 'Mar%';
    ```
    Isso retornaria "Maria", "Marcos", "Mariana", etc.

- Buscando emails que terminam com "@gmail.com":
    ```sql
    SELECT * FROM usuarios WHERE email LIKE '%@gmail.com';
    ```

- Buscando produtos com "teclado" em qualquer posição:
    ```sql
    SELECT * FROM produtos WHERE descricao LIKE '%teclado%';
    ```

- Buscando códigos com formato específico (ex: A seguido de 3 caracteres):
    ```sql
    SELECT * FROM itens WHERE codigo LIKE 'A___';
    ```

#### `LIKE` com `ESCAPE`

Quando você precisa pesquisar pelos próprios caracteres `%` ou `_`, use a cláusula `ESCAPE`:

```sql
SELECT * FROM documentos WHERE conteudo LIKE '%50\%%' ESCAPE '\';
```
Isso busca textos contendo "50%", onde a barra invertida define que o próximo % é um caractere literal.

#### `LIKE` vs. `=`

- `=` busca correspondência exata
- `LIKE` permite padrões com wildcards e é case-insensitive em collations padrão

#### Performance

O uso de `LIKE` pode impactar a performance, especialmente com:
- Padrões que começam com `%` (ex: `%palavra`) - não usam índices
- Padrões muito amplos

Para melhor performance, quando possível, use padrões que começam com caracteres específicos (ex: `palavra%`).

---

## Casos Especiais e Armadilhas

### Comparação com NULL
```sql
-- Retorna NULL (não verdadeiro!)
SELECT 5 = NULL;   -- Resultado: NULL

-- Correto para verificar NULLs
SELECT * FROM tabela WHERE coluna IS NULL;
```

### Precisão em comparações decimais
```sql
-- Pode falhar devido a arredondamentos
SELECT * FROM vendas WHERE total = 10.00;

-- Melhor usar margem de erro
SELECT * FROM vendas WHERE ABS(total - 10.00) < 0.001;
```

### Comparação de tipos diferentes
MySQL faz conversão implícita:
```sql
SELECT '10' = 10;   -- Resultado: 1 (verdadeiro)
SELECT 'abc' = 0;   -- Resultado: 1 (verdadeiro! 'abc' convertido para 0)
```
