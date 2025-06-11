# data manipulation language - dml

## `INSERT`

O comando `INSERT` é fundamental para adicionar dados às tabelas do MySQL.

Sintaxe :
```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

Exemplo :
```sql
INSERT INTO clientes (nome, email, idade)
VALUES ('João Silva', 'joao@email.com', 30);
```

### Inserindo Múltiplas Linhas de Uma Vez

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, ...)
VALUES
    (valor1, valor2, ...),
    (valor3, valor4, ...),
    (valor5, valor6, ...);
```

Exemplo :
```sql
INSERT INTO produtos (nome, preco, estoque)
VALUES
    ('Notebook', 3500.00, 10),
    ('Smartphone', 1999.90, 20),
    ('Tablet', 1200.50, 15);
```

### Inserindo Valores `NULL`

Se uma coluna permite `NULL`, você pode inserir explicitamente:

```sql
INSERT INTO clientes (nome, telefone)
VALUES ('Ana', NULL);  -- Telefone é opcional
```

### `INSERT` com `AUTO_INCREMENT`

Se uma tabela tem uma coluna `AUTO_INCREMENT`, você pode omiti-la:

```sql
INSERT INTO produtos (nome, preco)
VALUES ('Mouse', 89.90);  -- id é gerado automaticamente
```

### Erros Comuns

| Erro                          | Causa                           | Solução                        |
|-------------------------------|---------------------------------|--------------------------------|
| `Column count doesn't match`  | Número de colunas ≠ valores     | Verifique a lista de colunas   |
| `Duplicate entry for key`     | Violação de UNIQUE/PRIMARY KEY  | Use `INSERT IGNORE` ou `ON DUPLICATE KEY UPDATE` |
| `Data too long for column`    | Valor maior que o tamanho da coluna | Reduza o texto ou aumente `VARCHAR` |
