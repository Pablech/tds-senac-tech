# Operações Aritméticas e Relacionais

## Operadores Aritméticos

Usadas para cálculos matemáticos em consultas. Principais operadores:

| Operador | Descrição         | Exemplo               | Resultado |
|----------|-------------------|-----------------------|-----------|
| `+`      | Adição            | `SELECT 5 + 3;`       | 8         |
| `-`      | Subtração         | `SELECT 10 - 4;`      | 6         |
| `*`      | Multiplicação     | `SELECT 7 * 2;`       | 14        |
| `/`      | Divisão           | `SELECT 15 / 3;`      | 5.0000    |
| `%`      | Módulo (resto)    | `SELECT 11 % 4;`      | 3         |
| `DIV`    | Divisão inteira   | `SELECT 10 DIV 3;`    | 3         |

### Exemplos

**1. Cálculos com colunas:**
```sql
-- Calcular preço total com desconto
SELECT
    produto,
    preco,
    desconto,
    preco - (preco * desconto) AS preco_final
FROM produtos;
```
| produto    | preco | desconto | preco_final |
|------------|-------|----------|-------------|
| Camiseta   | 50.00 | 0.10     | 45.00       |
| Calça      | 120.00| 0.15     | 102.00      |

**2. Operações combinadas:**
```sql
-- Calcular média ponderada
SELECT
    aluno,
    (nota1 * 0.3) + (nota2 * 0.7) AS media
FROM notas;
```

**3. Divisão por zero:**
```sql
-- Retorna NULL com divisão por zero
SELECT 10 / 0;  -- Resultado: NULL
```

---

## Operadores Relacionais

Usadas para comparar valores em cláusulas `WHERE`, `HAVING`, e `JOIN`. Retornam `1` (verdadeiro), `0` (falso) ou `NULL`.

| Operador | Descrição          | Exemplo               |
|----------|--------------------|-----------------------|
| `=`      | Igual              | `WHERE id = 10`      |
| `<>`     | Diferente          | `WHERE status <> 'inativo'` |
| `>`      | Maior que          | `WHERE salario > 5000` |
| `<`      | Menor que          | `WHERE idade < 18`    |
| `>=`     | Maior ou igual     | `WHERE estoque >= 100` |
| `<=`     | Menor ou igual     | `WHERE preco <= 50.00` |

### Exemplos

**1. Comparações básicas:**
```sql
-- Produtos com preço entre 20 e 100
SELECT * FROM produtos
WHERE preco >= 20 AND preco <= 100;
```

**2. Comparação de strings (case-insensitive por padrão):**
```sql
-- Buscar clientes de São Paulo
SELECT * FROM clientes
WHERE estado = 'SP';
```

**3. Comparação com datas:**
```sql
-- Pedidos após 1º de janeiro de 2023
SELECT * FROM pedidos
WHERE data_pedido > '2023-01-01';
```

---

## Operadores Lógicos

Os operadores lógicos são fundamentais para combinar múltiplas condições em consultas SQL, permitindo criar expressões complexas em cláusulas `WHERE`, `HAVING` e `JOIN`.

---

### Principais Operadores Lógicos

| Operador | Descrição                     | Comportamento                                                                 |
|----------|-------------------------------|-------------------------------------------------------------------------------|
| `AND`    | Conjunção lógica (E)          | Retorna TRUE se **todas** as condições forem verdadeiras                     |
| `OR`     | Disjunção lógica (OU)         | Retorna TRUE se **pelo menos uma** condição for verdadeira                   |
| `NOT`    | Negação lógica (NÃO)          | Inverte o resultado de uma expressão booleana                                |
| `XOR`    | OU Exclusivo                  | Retorna TRUE se **exatamente uma** das condições for verdadeira              |

---

### `AND`

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
-- Funcionários do departamento de TI com salário > 5000
SELECT * FROM funcionarios
WHERE departamento = 'TI' AND salario > 5000;

-- Produtos em estoque com preço entre 50 e 100
SELECT * FROM produtos
WHERE estoque > 0 AND preco BETWEEN 50 AND 100;
```

---

### `OR`

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
-- Clientes de SP ou RJ
SELECT * FROM clientes
WHERE estado = 'SP' OR estado = 'RJ';

-- Produtos com estoque baixo OU preço abaixo de custo
SELECT * FROM produtos
WHERE estoque < 10 OR preco_venda < preco_custo;
```

---

### `NOT`

- **Funcionamento**: Inverte o valor booleano
- **Tabela Verdade**:
    | A     | NOT A |
    |-------|-------|
    | TRUE  | FALSE |
    | FALSE | TRUE  |
    | NULL  | NULL  |

**Exemplos**:
```sql
-- Produtos que NÃO estão descontinuados
SELECT * FROM produtos
WHERE NOT descontinuado;

-- Pedidos que NÃO foram cancelados e NÃO são de SP
SELECT * FROM pedidos
WHERE NOT cancelado AND NOT estado = 'SP';
```

---

### `XOR` (OU Exclusivo)

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
-- Usuários que são OU administradores OU moderadores, mas não ambos
SELECT * FROM usuarios
WHERE admin = 1 XOR moderador = 1;

-- Produtos que OU estão em promoção OU têm estoque alto, mas não os dois
SELECT * FROM produtos
WHERE promocao = 1 XOR estoque > 100;
```

---

### Combinação de Operadores Lógicos

**Exemplo Complexo**:
```sql
SELECT * FROM pedidos
WHERE (cliente_id = 100 OR cliente_id = 200)  -- Cliente específico
  AND (valor_total > 500)                     -- Pedidos acima de 500
  AND NOT cancelado                           -- Não cancelados
  AND (forma_pagamento = 'cartao' XOR forma_pagamento = 'pix'); -- Pagamento exclusivo
```

---

### Precedência de Operadores

A ordem de avaliação é importante:
1. `NOT`
2. `AND`
3. `OR`, `XOR`

**Exemplo de Precedência**:
```sql
-- Sem parênteses: diferente significado
SELECT * FROM tabela
WHERE condicao1 OR condicao2 AND condicao3;
-- Equivale a: condicao1 OR (condicao2 AND condicao3)

-- Com parênteses: controle explícito
SELECT * FROM tabela
WHERE (condicao1 OR condicao2) AND condicao3;
```

---

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

---

### **Boas Práticas**

1. **Use parênteses** para clareza, mesmo quando não forem necessários:
    ```sql
    -- Mais legível
    WHERE (condicao1 OR condicao2) AND condicao3
    ```

2. **Evite negações complexas**:
    ```sql
    -- Difícil de ler
    WHERE NOT (status = 'cancelado' OR valor < 50)

    -- Melhor alternativa
    WHERE status <> 'cancelado' AND valor >= 50
    ```

3. **Teste combinações complexas** com dados reais

4. **Use comentários** para explicar lógica complexa

5. **Considere performance**:
    ```sql
    -- Pode ser mais eficiente
    WHERE coluna IN (1, 2, 3)
    -- Do que
    WHERE coluna = 1 OR coluna = 2 OR coluna = 3
    ```

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

---

## Operadores Combinados

**Exemplo 1: Filtros complexos**
```sql
SELECT * FROM funcionarios
WHERE (departamento = 'TI' AND salario >= 7000)
    OR (anos_experiencia > 5 AND salario < 5000);
```

**Exemplo 2: Atualizações condicionais**
```sql
UPDATE produtos
SET preco = preco * 1.10  -- Aumento de 10%
WHERE categoria = 'Eletrônicos'
    AND data_lancamento < '2022-01-01';
```
