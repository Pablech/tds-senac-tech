# funções

## Funções de Agregação

As funções de agregação no MySQL são usadas para realizar cálculos em conjuntos de dados e retornar um único valor resumido. São essenciais para análise de dados e relatórios.

#### Tabela de Exemplo: `vendas`
| id  | produto | quantidade | preco | data       |
|-----|---------|-----------|-------|------------|
| 1   | Maçã    | 10        | 2.50  | 2023-01-01 |
| 2   | Banana  | 5         | 1.80  | 2023-01-02 |
| 3   | Maçã    | 8         | 2.20  | 2023-01-03 |
| 4   | Laranja | 15        | 1.50  | 2023-01-04 |
| 5   | Banana  | 12        | 1.90  | 2023-01-05 |

### `COUNT()`

- **Função**: Retorna a quantidade de registros que atendem a um critério.
- **Comportamento com `NULL`**: Ignora valores `NULL` (a menos que use `COUNT(*)`).
- **Sintaxe comum**:
    ```sql
    COUNT(*)           -- Conta TODAS as linhas (incluindo NULLs)
    COUNT(coluna)      -- Conta linhas onde "coluna" NÃO é NULL
    COUNT(DISTINCT coluna) -- Conta valores únicos e não nulos
    ```

#### Exemplos:
```sql
-- Total de registros na tabela:
SELECT COUNT(*) AS total_vendas FROM vendas;
-- Resultado: 5

-- Total de vendas do produto "Maçã":
SELECT COUNT(*) AS vendas_maca
FROM vendas
WHERE produto = 'Maçã';
-- Resultado: 2

-- Quantidade de produtos distintos vendidos:
SELECT COUNT(DISTINCT produto) AS produtos_unicos FROM vendas;
-- Resultado: 3 (Maçã, Banana, Laranja)
```

### `SUM()`

- **Função**: Retorna a soma total dos valores em uma coluna numérica.
- **Comportamento com `NULL`**: Ignora valores `NULL`.
- **Atenção**: Usada apenas em colunas numéricas.

#### Exemplos:
```sql
-- Soma total de produtos vendidos:
SELECT SUM(quantidade) AS total_itens FROM vendas;
-- Resultado: 10 + 5 + 8 + 15 + 12 = 50

-- Soma do valor monetário total das vendas:
SELECT SUM(quantidade * preco) AS receita_total FROM vendas;
-- Cálculo: (10*2.50) + (5*1.80) + (8*2.20) + (15*1.50) + (12*1.90) = 104.10
```

### `AVG()`

- **Função**: Retorna a média dos valores em uma coluna numérica.
- **Comportamento com `NULL`**: Ignora valores `NULL`.
- **Atenção**: Se todos os valores forem `NULL`, retorna `NULL`.

#### Exemplos:
```sql
-- Preço médio de TODOS os produtos:
SELECT AVG(preco) AS preco_medio FROM vendas;
-- Cálculo: (2.50 + 1.80 + 2.20 + 1.50 + 1.90) / 5 = 1.98

-- Quantidade média vendida por produto "Banana":
SELECT AVG(quantidade) AS media_banana
FROM vendas
WHERE produto = 'Banana';
-- Cálculo: (5 + 12) / 2 = 8.5
```

### `MAX()`

- **Função**: Encontra o maior valor em uma coluna.
- **Comportamento com `NULL`**: Ignora valores `NULL`.
- **Funciona com**: Números, textos (`VARCHAR`) e datas.

#### Exemplos:
```sql
-- Maior preço na tabela:
SELECT MAX(preco) AS maior_preco FROM vendas;
-- Resultado: 2.50 (Maçã)

-- Data da última venda:
SELECT MAX(data) AS ultima_data FROM vendas;
-- Resultado: 2023-01-05

-- Produto com o nome mais longo (ordem alfabética):
SELECT MAX(produto) AS ultimo_alfabetico FROM vendas;
-- Resultado: 'Maçã' (por ordem lexicográfica: M > L > B)
```

### `MIN()`

- **Função**: Encontra o menor valor em uma coluna.
- **Comportamento com `NULL`**: Ignora valores `NULL`.
- **Funciona com**: Números, textos (`VARCHAR`) e datas.

#### Exemplos:
```sql
-- Menor quantidade vendida:
SELECT MIN(quantidade) AS menor_quantidade FROM vendas;
-- Resultado: 5 (Banana)

-- Primeira data de venda:
SELECT MIN(data) AS primeira_data FROM vendas;
-- Resultado: 2023-01-01

-- Produto com o nome mais curto (ordem alfabética):
SELECT MIN(produto) AS primeiro_alfabetico FROM vendas;
-- Resultado: 'Banana' (B é a primeira letra no alfabeto)
```

### Observações Importantes

1. **`NULL` é ignorado** por todas as funções (exceto `COUNT(*)`).
2. **`DISTINCT`** pode ser combinado com `COUNT()`, `SUM()` e `AVG()` para considerar apenas valores únicos.
3. **Performance**: Índices podem acelerar agregações em grandes tabelas.
4. **Datas**: `MAX()` e `MIN()` funcionam com datas (retornam a data mais recente/antiga).

# comandos

## `IN`

Verifica se um valor corresponde a qualquer valor em uma lista predefinida.

Sintaxe :
```sql
SELECT colunas
FROM tabela
WHERE coluna IN (valor1, valor2, ..., valorN);
```

#### Características:
- Aceita múltiplos valores (até 1000 em alguns SGBDs)
- Funciona com números, strings, datas
- Substitui múltiplas condições `OR`
- Valores `NULL` na lista são ignorados

#### Exemplos Práticos:

**Tabela de Exemplo: `funcionarios`**
| id | nome    | cargo          | salario | departamento |
|----|---------|----------------|---------|--------------|
| 1  | Ana     | Desenvolvedora | 7500    | TI           |
| 2  | Carlos  | Analista       | 5200    | RH           |
| 3  | Mariana | Gerente        | 9800    | Vendas       |
| 4  | Pedro   | Desenvolvedor  | 7200    | TI           |
| 5  | Julia   | Designer       | 4800    | Marketing    |

**Exemplo 1: Filtro com valores numéricos**
```sql
SELECT * FROM funcionarios
WHERE id IN (1, 3, 5);
```
**Resultado:**
| id | nome    | cargo          | salario | departamento |
|----|---------|----------------|---------|--------------|
| 1  | Ana     | Desenvolvedora | 7500    | TI           |
| 3  | Mariana | Gerente        | 9800    | Vendas       |
| 5  | Julia   | Designer       | 4800    | Marketing    |

**Exemplo 2: Filtro com strings**
```sql
SELECT nome, cargo
FROM funcionarios
WHERE departamento IN ('TI', 'Marketing');
```
**Resultado:**
| nome  | cargo          |
|-------|----------------|
| Ana   | Desenvolvedora |
| Pedro | Desenvolvedor  |
| Julia | Designer       |

#### Equivalente com `OR`:

```sql
SELECT * FROM funcionarios
WHERE departamento = 'TI' OR departamento = 'Marketing';
```

---

### `BETWEEN`

Filtra valores dentro de um intervalo **inclusivo** (inclui os limites).

Sintaxe :
```sql
SELECT colunas
FROM tabela
WHERE coluna BETWEEN valor_min AND valor_max;
```

#### Características:
- Funciona com números, datas e strings (ordem alfabética)
- Intervalo é sempre **inclusivo** (`>= min` e `<= max`)
- Valores devem ser do mesmo tipo
- Alternativa para `coluna >= min AND coluna <= max`

#### Exemplos Práticos:

**Exemplo 1: Intervalo numérico**
```sql
SELECT * FROM funcionarios
WHERE salario BETWEEN 5000 AND 8000;
```
**Resultado:**
| id | nome   | cargo          | salario | departamento |
|----|--------|----------------|---------|--------------|
| 1  | Ana    | Desenvolvedora | 7500    | TI           |
| 4  | Pedro  | Desenvolvedor  | 7200    | TI           |

**Exemplo 2: Intervalo de datas**
*(Adicionando coluna `contratacao`)*
```sql
SELECT nome, contratacao
FROM funcionarios
WHERE contratacao BETWEEN '2023-01-01' AND '2023-06-30';
```
**Resultado** (funcionários contratados no 1º semestre de 2023):
| nome    | contratacao |
|---------|-------------|
| Carlos  | 2023-03-15  |
| Mariana | 2023-05-10  |

**Exemplo 3: Intervalo alfabético**
```sql
SELECT nome
FROM funcionarios
WHERE nome BETWEEN 'A' AND 'C';
```
**Resultado:**
| nome  |
|-------|
| Ana   |
| Carlos|

#### Equivalente com Operadores Lógicos:
```sql
SELECT * FROM funcionarios
WHERE salario >= 5000 AND salario <= 8000;
```

---

### Combinações e Observações Importantes

#### `NOT IN` e `NOT BETWEEN`

- **`NOT IN`**: Exclui valores da lista
    ```sql
    SELECT * FROM funcionarios
    WHERE departamento NOT IN ('RH', 'Vendas');
    ```
- **`NOT BETWEEN`**: Exclui o intervalo
    ```sql
    SELECT * FROM funcionarios
    WHERE salario NOT BETWEEN 5000 AND 8000;
    ```

#### Combinando com Outros Operadores:

```sql
SELECT * FROM funcionarios
WHERE departamento = 'TI'
    AND salario BETWEEN 7000 AND 8000
    AND id IN (1, 4);
```

#### Cuidados com Tipos de Dados:

| Tipo de Dado | Comportamento Esperado |
|--------------|------------------------|
| **Datas**    | `BETWEEN '2023-01-01' AND '2023-01-31'` inclui todo dia 31 |
| **Strings**  | `BETWEEN 'A' AND 'C'` inclui "Ana" mas não "Carlos" (ordem lexicográfica) |
| **Decimais** | `BETWEEN 5000.00 AND 8000.00` inclui valores como 5000.00 e 8000.00 |
