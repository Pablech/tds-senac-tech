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

## `UPDATE`

O comando `UPDATE` no MySQL é usado para **modificar dados existentes** em uma tabela. Ele permite alterar valores de uma ou mais colunas em registros específicos.

Sintaxe :
```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2, ...
[WHERE condição]
[ORDER BY ...]
[LIMIT ...];
```

### Exemplos de Uso

1. **Defina a tabela e as colunas a serem atualizadas:**
    - Especifique a tabela após `UPDATE`.
    - Use `SET` para definir as colunas e seus novos valores.

    ```sql
    UPDATE clientes
    SET nome = 'João Silva', email = 'joao.silva@email.com';
    ```
    > [!WARNING]
    > Sem `WHERE`, todos os registros da tabela serão atualizados!

2. **Filtre registros com `WHERE`:**
    - Use `WHERE` para restringir quais registros serão modificados.
    - Pode usar operadores como `=`, `>`, `<`, `AND`, `OR`, `IN`, etc.

    ```sql
    UPDATE clientes
    SET cidade = 'São Paulo'
    WHERE id = 100;
    ```

3. **Atualize múltiplas colunas:**
    - Separe as atribuições por vírgulas.

    ```sql
    UPDATE clientes
    SET
        nome = 'Maria Oliveira',
        idade = 30,
        cidade = 'Rio de Janeiro'
    WHERE id = 200;
    ```

4. **Atualize com base em valores existentes:**
    - Use o valor atual da coluna em expressões.

    ```sql
    UPDATE produtos
    SET preco = preco * 1.10  -- Aumenta o preço em 10%
    WHERE categoria = 'Eletrônicos';
    ```

5. **Ordene e limite com `ORDER BY` e `LIMIT`:**
    - Útil para atualizar um subconjunto controlado de registros.

    ```sql
    UPDATE pedidos
    SET status = 'cancelado'
    WHERE data < '2023-01-01'
    ORDER BY data ASC
    LIMIT 10;  -- Cancela os 10 pedidos mais antigos
    ```

6. **Atualize com dados de outra tabela (usando `JOIN`):**
    - Combine com `INNER JOIN` ou `LEFT JOIN`.

    ```sql
    UPDATE clientes c
    JOIN pedidos p ON c.id = p.cliente_id
    SET c.ultima_compra = p.data
    WHERE p.valor > 1000;
    ```

### Boas Práticas e Advertências:

1. **SEMPRE USE `WHERE`:**
    Sem `WHERE`, o `UPDATE` afeta **todos os registros** da tabela. Isso pode causar perda de dados irreversível!

2. **Faça backup antes:**
    Execute um `SELECT` com a mesma condição do `WHERE` para verificar quais registros serão alterados:
    ```sql
    SELECT * FROM clientes WHERE id = 42;  -- Verifique antes de atualizar!
    ```

3. **Use transações em operações críticas:**
    ```sql
    START TRANSACTION;
    UPDATE ...;  -- Sua operação UPDATE aqui
    COMMIT;      -- Confirma as alterações
    -- ou
    ROLLBACK;    -- Desfaz em caso de erro
    ```

4. **Teste em ambiente seguro:**
    Execute comandos `UPDATE` em um ambiente de testes antes de aplicar em produção.

5. **Restrições de chaves:**
    Se a tabela possui chaves estrangeiras (`FOREIGN KEY`), garanta que os novos valores respeitem as restrições.

### Casos Especiais:

- **Atualizar NULLs:**
    ```sql
    UPDATE tabela
    SET coluna = NULL
    WHERE condição;
    ```

- **Atualizar datas:**
    ```sql
    UPDATE eventos
    SET data_inicio = DATE_ADD(data_inicio, INTERVAL 7 DAY)
    WHERE status = 'adiado';
    ```

### Exercícios

<details>
<summary>Lista de Exercícios</summary>

#### Básicos
1. Atualize o gênero primário para "Ação-Aventura" do jogo com ID 15.
2. Corrija a publicadora do jogo "Cyberpunk 2077" para "CD Projekt RED".
3. Aumente a nota do Metascore em 5 pontos para todos os jogos da Nintendo com nota inferior a 80.
4. Atualize o número de jogadores para 4 no jogo "Super Smash Bros. Ultimate".
5. Defina a franquia como "The Legend of Zelda" para todos os jogos cujo nome começa com "The Legend of Zelda:".

#### Intermediários
6. Reduza a nota da IGN em 0.5 para todos os jogos lançados antes de 2010 com nota superior a 8.0.
7. Atualize a plataforma e publicadora de "The Witcher 3" para "PlayStation 5" e "CD Projekt RED" respectivamente.
8. Ajuste o gênero secundário para "Battle Royale" em jogos de tiro que contenham "Royale" no nome.
9. Para jogos sem franquia da Ubisoft, defina a franquia como "Original Ubisoft".
10. Atualize a data de lançamento para '2023-05-15' do jogo "The Legend of Zelda: Tears of the Kingdom".

#### Avançados
11. Aumente em 1 o número máximo de jogadores para todos os jogos de luta que suportam até 3 jogadores.
12. Atualize simultaneamente as notas do Metascore (92) e IGN (9.5) para "Elden Ring".
13. Migre jogos com Metascore >90 do PlayStation 4 para PlayStation 5.
14. Inverta os gêneros primário e secundário para jogos de RPG com gênero secundário definido.
15. Atualize a publicadora para "Microsoft" em todos os jogos da franquia "Halo" publicados pela "Bungie".

#### Complexos
16. Adicione "Cooperativo" como gênero secundário para jogos de ação com capacidade para 4+ jogadores.
17. Aumente 10% nas notas da IGN (com arredondamento) para jogos da franquia "God of War" pós-2018.
18. Adicione "(Remastered)" ao nome do jogo com ID 77.
19. Atualize a data de lançamento para 2 anos após a original em jogos com "Definitive Edition" no nome.
20. Padronize o nome da publicadora "Sony" para "Sony Interactive Entertainment".

</details>

## `DELETE`

O comando `DELETE` é usado para **remover registros** de uma tabela. É uma operação crítica que requer cautela, pois os dados são permanentemente excluídos do banco.

Sintaxe :
```sql
DELETE FROM nome_da_tabela
[WHERE condição]
[ORDER BY ...]
[LIMIT ...];
```

### Exemplos de Uso

1. **Remover registros específicos (com `WHERE`):**
    - Sempre especifique uma condição `WHERE` para evitar excluir toda a tabela.

    ```sql
    DELETE FROM jogos
    WHERE id = 100;
    ```

2. **Remover múltiplos registros:**
    - Use condições combinadas com `AND`, `OR`, `IN`, etc.

    ```sql
    DELETE FROM jogos
    WHERE plataforma = 'PlayStation 3'
    AND nota_metascore < 50;
    ```

3. **Ordenar e limitar exclusões:**
    - Útil para remover registros antigos/pesados primeiro.

    ```sql
    DELETE FROM jogos
    WHERE data_lancamento < '2000-01-01'
    ORDER BY data_lancamento ASC
    LIMIT 10;  -- Remove os 10 mais antigos
    ```

4. **Excluir todos os registros (cuidado!):**
    - **Não use `WHERE`** - isso remove **todos os dados** da tabela.

    ```sql
    DELETE FROM jogos;  -- ESVAZIA A TABELA!
    ```
    > [!TIP]
    > Para esvaziar tabelas grandes, prefira `TRUNCATE TABLE jogos` (mais eficiente).

### Boas Práticas e Perigos:

1. **SEMPRE USE `WHERE`:**
    Sem cláusula `WHERE`, você **excluirá todos os registros** da tabela. Isso é irreversível sem backup!

2. **Verifique antes de excluir:**
    Execute um `SELECT` com a mesma condição para conferir os registros:
    ```sql
    SELECT * FROM jogos WHERE nota_metascore < 40; -- Verifique primeiro!
    ```

3. **Use transações em operações críticas:**
    ```sql
    START TRANSACTION;
    DELETE FROM jogos WHERE ...;  -- Sua operação aqui
    COMMIT;  -- Confirma
    -- ou
    ROLLBACK;  -- Desfaz
    ```

4. **Cuidado com chaves estrangeiras:**
    Se houver relacionamentos (`FOREIGN KEY`), a exclusão pode:
    - Falhar (se houver registros dependentes)
    - Excluir em cascata (se definido `ON DELETE CASCADE`)

5. **Backup regular:**
    Mantenha backups atualizados para recuperação de acidentes.

### Diferença entre `DELETE` e `TRUNCATE`:

| Característica          | `DELETE`                          | `TRUNCATE`                |
|-------------------------|-----------------------------------|---------------------------|
| Velocidade              | Mais lento (registra cada exclusão)| Rápido (remove todos de uma vez) |
| Condições (`WHERE`)     | Suportado                         | **Não suportado**         |
| Reinicia auto-increment | Não                               | **Sim**                   |
| Transações              | Pode ser revertido com `ROLLBACK` | Não pode ser revertido    |

### Exercícios

<details>
<summary>Lista de Exercícios</summary>

#### Básicos
1. Delete o jogo com `id = 78`.
2. Remova todos os jogos da publicadora "EA Sports".
3. Exclua jogos lançados antes de 2000.
4. Delete jogos com nota Metascore menor que 30.
5. Remova jogos do gênero primário "Esporte".

#### Intermediários
6. Exclua jogos da plataforma "PlayStation 3" com nota IGN inferior a 6.0.
7. Delete jogos da franquia "FIFA" lançados antes de 2015.
8. Remova jogos que suportam mais de 4 jogadores e têm menos de 70 no Metascore.
9. Exclua jogos sem gênero secundário (`genero2 IS NULL`) da Nintendo.
10. Delete jogos de "Tiro" com menos de 2 jogadores locais.

#### Avançados
11. Remova os 5 jogos mais antigos da franquia "Call of Duty".
12. Delete jogos duplicados (mesmo `nome` e `plataforma`), mantendo apenas o de maior `id`.
13. Exclua jogos com nota Metascore mais baixa que a média geral de notas.
14. Remova todos os jogos da Ubisoft exceto os da franquia "Assassin's Creed".
15. Delete jogos lançados em feriados (ex: 25/12) entre 2005 e 2015.

#### Complexos
16. Exclua jogos de plataformas descontinuadas (ex: "Dreamcast", "Wii U").
17. Remova jogos cuja diferença entre `nota_ign` e `nota_metascore/10` seja maior que 2.0.
18. Delete jogos de publicadoras que faliram (ex: "THQ", "Midway").
19. Exclua jogos sem análise (`nota_metascore IS NULL` e `nota_ign IS NULL`).
20. Remova jogos com nome contendo "(Demo)" ou "(Beta)" na descrição.

</details>
