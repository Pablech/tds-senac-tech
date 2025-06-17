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

## Subqueries

Subqueries (ou subconsultas) são consultas SQL aninhadas dentro de outra consulta principal. Elas permitem realizar operações complexas em etapas, usando o resultado de uma consulta interna para filtrar, comparar ou processar dados na consulta externa.

### Tipos de Subqueries:

1. **Quanto à Posição:**
    - **`WHERE`/`HAVING`:** Filtragem baseada em resultados internos.
    - **`FROM`:** Tratada como tabela temporária (derived table).
    - **`SELECT`:** Retorna valor único para cada linha.

2. **Quanto ao Retorno:**
    - **Scalar:** Retorna um único valor.
    - **Column:** Retorna uma coluna de valores.
    - **Row:** Retorna uma linha.
    - **Table:** Retorna múltiplas linhas/colunas.

3. **Quanto à Dependência:**
    - **Não Correlacionada:** Independente da consulta externa.
    - **Correlacionada:** Referencia colunas da consulta externa.

### Exemplos

#### 1. Subquery no `WHERE` (Scalar - Não Correlacionada)
**Objetivo:** Jogos com nota acima da média do Metascore.
```sql
SELECT nome, nota_metascore
FROM jogos
WHERE nota_metascore > (
    SELECT AVG(nota_metascore) FROM jogos
);
```
- **Funcionamento:** A subquery calcula a média geral (`AVG`) antes da execução da query principal.

#### 2. Subquery no `WHERE` com `IN` (Column - Não Correlacionada)
**Objetivo:** Jogos das franquias com mais de 5 títulos.
```sql
SELECT nome, franquia
FROM jogos
WHERE franquia IN (
    SELECT franquia
    FROM jogos
    GROUP BY franquia
    HAVING COUNT(*) > 5
);
```
- **Funcionamento:** A subquery retorna uma lista de franquias (coluna).

#### 3. Subquery Correlacionada no `WHERE`
**Objetivo:** Jogos com nota superior à média **da sua própria franquia**.
```sql
SELECT nome, franquia, nota_metascore
FROM jogos j1
WHERE nota_metascore > (
    SELECT AVG(nota_metascore)
    FROM jogos j2
    WHERE j2.franquia = j1.franquia
);
```
- **Funcionamento:** A subquery é executada **para cada linha** da consulta externa (`j1`).

#### 4. Subquery no `FROM` (Derived Table)
**Objetivo:** Média de jogadores por plataforma, apenas para plataformas com mais de 10 jogos.
```sql
SELECT plataforma, AVG(nr_jogadores) AS media_jogadores
FROM (
    SELECT plataforma, nr_jogadores
    FROM jogos
    WHERE plataforma IS NOT NULL
) AS jogos_filtrados
GROUP BY plataforma
HAVING COUNT(*) > 10;
```
- **Funcionamento:** A subquery cria uma tabela temporária filtrada para a consulta externa.

#### 5. Subquery no `SELECT` (Scalar)
**Objetivo:** Listar jogos e a diferença entre sua nota e a nota máxima do gênero.
```sql
SELECT
    nome,
    nota_metascore,
    nota_metascore - (
        SELECT MAX(nota_metascore)
        FROM jogos j2
        WHERE j2.id_genero1 = j1.id_genero1
    ) AS diff_max_genero
FROM jogos j1;
```

#### 6. Subquery com `EXISTS` (Correlacionada)
**Objetivo:** Franquias que possuem pelo menos um jogo com nota 10 no IGN.
```sql
SELECT DISTINCT franquia
FROM jogos j1
WHERE EXISTS (
    SELECT 1
    FROM jogos j2
    WHERE j2.franquia = j1.franquia
        AND j2.nota_ign = 10.0
);
```
- **`EXISTS`** verifica se a subquery retorna **pelo menos uma linha**.

### Regras e Boas Práticas

1. **Subqueries Scalar:**
    - Devem retornar **exatamente 1 valor**.
    - Exemplo inválido:
        ```sql
        SELECT nome, (SELECT plataforma FROM jogos) -- Erro! Retorna múltiplas linhas
        ```

2. **Subqueries Correlacionadas:**
    - São **menos eficientes** (executadas repetidamente).
    - Sempre avalie se um `JOIN` resolve melhor.

3. **Limitações:**
    - Não podem usar `ORDER BY` sem `LIMIT` em subqueries do `WHERE`.
    - Evite subqueries muito profundas (dificultam a leitura).

---

### Subqueries vs. JOINs: Quando Usar?

| **Cenário**                     | **Subquery** | **JOIN** |
|---------------------------------|--------------|----------|
| Filtragem com `IN`/`NOT IN`     | ✓            | ✓        |
| Comparação com valor único      | ✓            | ✗        |
| Derived tables                  | ✓            | ✓        |
| Valores agregados por categoria | ✓ (Correl.)  | ✓        |
| Performance em grandes tabelas  | ✗ (Correl.)  | ✓        |

---

### Exemplo de Problema Comum

**Objetivo:** Jogos com a maior nota do seu gênero (usando `JOIN`):
```sql
SELECT j1.nome, j1.id_genero1, j1.nota_metascore
FROM jogos j1
INNER JOIN (
    SELECT id_genero1, MAX(nota_metascore) AS max_nota
    FROM jogos
    GROUP BY id_genero1
) j2 ON j1.id_genero1 = j2.id_genero1
   AND j1.nota_metascore = j2.max_nota;
```

### **Conclusão**
Subqueries são ferramentas poderosas para:
- **Decompor problemas complexos** em etapas.
- **Filtrar dados** baseado em condições dinâmicas.
- **Criar colunas calculadas** contextuais.

Sempre:
1. Teste a subquery isoladamente.
2. Avalie alternativas com `JOINs`.
3. Monitore desempenho em grandes volumes de dados.
