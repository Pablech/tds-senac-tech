# comandos

## `BETWEEN`

Usado para verificar se um valor está em um deterinado intervalo fechado.

```sql
-- Idades entre 18 e 30 (inclusive)
SELECT * FROM usuarios
WHERE idade BETWEEN 18 AND 30;
```

## `IN`

Usado para verificar se um determado valor faz parte de uma lista.

```sql
-- Clientes de SP, RJ ou MG
SELECT * FROM clientes
WHERE estado IN ('SP', 'RJ', 'MG');
```
