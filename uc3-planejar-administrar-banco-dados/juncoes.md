# JOINs

Na linguagem SQL, executamos diversas consultas para geralmente criar relatórios que serão posteriormente utilizados para análise e a tomada de alguma decisão, e para criarmos consultas cada vez mais completas precisamos utilizar várias tabelas em conjunto e para isso usamos os `JOIN`s.

## Modelos dos Exemplos

Neste cenário, será usado a abordagem de **FK direta** (1:N), onde cada jogo está vinculado a **apenas um console** através de uma chave estrangeira na tabela de jogos.

### Estrutura das Tabelas:
```sql
-- Tabela de consoles
CREATE TABLE consoles (
    id_console INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

-- Tabela de jogos com FK direta
CREATE TABLE jogos (
    id_jogo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    id_console INT NOT NULL,  -- FK apontando para consoles
    ano_lancamento YEAR,
    FOREIGN KEY (id_console) REFERENCES consoles(id_console)
);

-- Inserindo dados
INSERT INTO consoles (nome) VALUES
('PlayStation 5'),
('Nintendo Switch'),
('Xbox Series X');

INSERT INTO jogos (nome, id_console, ano_lancamento) VALUES
('Demon''s Souls', 1, 2020),           -- Exclusivo PS5
('The Legend of Zelda: Breath of the Wild', 2, 2017), -- Exclusivo Switch
('Halo Infinite', 3, 2021),             -- Exclusivo Xbox
('God of War: Ragnarök', 1, 2022),      -- Exclusivo PS5
('Forza Horizon 5', 3, 2021);           -- Exclusivo Xbox
```

## `INNER JOIN`

### 1. `JOIN` Básico
```sql
SELECT
    jogos.nome AS jogo,
    consoles.nome AS console
FROM jogos
INNER JOIN consoles ON jogos.id_console = consoles.id_console;
```

**Resultado:**
| jogo                                       | console          |
|--------------------------------------------|------------------|
| Demon's Souls                              | PlayStation 5    |
| The Legend of Zelda: Breath of the Wild    | Nintendo Switch  |
| Halo Infinite                              | Xbox Series X    |
| God of War: Ragnarök                       | PlayStation 5    |
| Forza Horizon 5                            | Xbox Series X    |

**Funcionamento:**
- Para cada jogo na tabela `jogos`, o SGBD busca o console correspondente em `consoles` usando `id_console`
- Só retorna jogos que têm console válido associado


### 2. `JOIN` com Filtro `WHERE`
```sql
SELECT
    jogos.nome AS jogo,
    jogos.ano_lancamento
FROM jogos
INNER JOIN consoles ON jogos.id_console = consoles.id_console
WHERE consoles.nome = 'PlayStation 5';
```

**Resultado:**
| jogo                | ano_lancamento |
|---------------------|----------------|
| Demon's Souls       | 2020           |
| God of War: Ragnarök| 2022           |

### 3. `JOIN` com `ORDER BY`
```sql
SELECT
    jogos.nome AS jogo,
    consoles.nome AS console,
    jogos.ano_lancamento
FROM jogos
INNER JOIN consoles ON jogos.id_console = consoles.id_console
ORDER BY jogos.ano_lancamento DESC;
```

**Resultado:**
| jogo                                       | console          | ano_lancamento |
|--------------------------------------------|------------------|----------------|
| God of War: Ragnarök                       | PlayStation 5    | 2022           |
| Halo Infinite                              | Xbox Series X    | 2021           |
| Forza Horizon 5                            | Xbox Series X    | 2021           |
| Demon's Souls                              | PlayStation 5    | 2020           |
| The Legend of Zelda: Breath of the Wild    | Nintendo Switch  | 2017           |

### 4. `JOIN` com Alias e Funções
```sql
SELECT
    j.nome AS "Nome do Jogo",
    c.nome AS "Plataforma",
    CONCAT('Lançado em ', j.ano_lancamento) AS "Informações"
FROM jogos j  -- Alias 'j' para jogos
INNER JOIN consoles c ON j.id_console = c.id_console  -- Alias 'c' para consoles
WHERE j.ano_lancamento > 2019;
```

**Resultado:**
| Nome do Jogo          | Plataforma       | Informações        |
|-----------------------|------------------|--------------------|
| Demon's Souls         | PlayStation 5    | Lançado em 2020    |
| Halo Infinite         | Xbox Series X    | Lançado em 2021    |
| God of War: Ragnarök  | PlayStation 5    | Lançado em 2022    |
| Forza Horizon 5       | Xbox Series X    | Lançado em 2021    |

### Como o INNER JOIN Funciona Internamente (Passo a Passo)

Para esta consulta:
```sql
SELECT j.nome, c.nome
FROM jogos j
INNER JOIN consoles c ON j.id_console = c.id_console
```

**Passo 1:** O SGBD acessa a tabela `jogos` (primeira tabela no FROM)
| id_jogo | nome                                      | id_console |
|---------|-------------------------------------------|------------|
| 1       | Demon's Souls                             | 1          |
| 2       | The Legend of Zelda: Breath of the Wild   | 2          |
| 3       | Halo Infinite                             | 3          |

**Passo 2:** Para cada linha de `jogos`, busca correspondência em `consoles` usando `id_console`
- Para `id_console=1` → Encontra "PlayStation 5"
- Para `id_console=2` → Encontra "Nintendo Switch"
- Para `id_console=3` → Encontra "Xbox Series X"

**Passo 3:** Combina as linhas correspondentes
| j.nome                                      | c.nome          |
|---------------------------------------------|-----------------|
| Demon's Souls                               | PlayStation 5   |
| The Legend of Zelda: Breath of the Wild     | Nintendo Switch |
| Halo Infinite                               | Xbox Series X   |

**Passo 4:** Descarta:
- Jogos sem console associado (se existissem)
- Consoles sem jogos associados (ex: se tivéssemos um PC sem jogos)

### Casos Especiais

#### 1. Chave Estrangeira NULL
Se a FK permitisse NULL (não é nosso caso):
```sql
-- Inserir jogo sem console associado
INSERT INTO jogos (nome, id_console) VALUES ('Jogo Fantasma', NULL);

-- Consulta
SELECT * FROM jogos j
INNER JOIN consoles c ON j.id_console = c.id_console;
```
**Resultado:** O "Jogo Fantasma" não apareceria nos resultados

#### 2. Console sem jogos
```sql
-- Inserir console sem jogos
INSERT INTO consoles (nome) VALUES ('PC');

-- Consulta
SELECT * FROM consoles c
INNER JOIN jogos j ON c.id_console = j.id_console;
```
**Resultado:** O PC não apareceria nos resultados

---

### Vantagens desta Abordagem
1. **Simplicidade:** Apenas 2 tabelas envolvidas
2. **Desempenho:** Apenas 1 operação de JOIN
3. **Consultas diretas:** Fácil filtragem por console
4. **Índices eficientes:** Apenas 1 coluna FK para indexar

### Limitações
1. Não suporta jogos multi-plataforma
2. Se um jogo existir em dois consoles, precisa de duplicação:
```sql
-- Problema com jogos multiplataforma
INSERT INTO jogos (nome, id_console) VALUES
('The Witcher 3', 1),  -- PS5
('The Witcher 3', 3);  -- Xbox → Duplicação!
```

### Exercícios de `INNER JOIN`

<details>
<summary>Lista de Exercícios</summary>

1. Liste o nome do jogo e o nome da franquia correspondente para todos os jogos que possuem franquia associada.
   *(Relacionamento: jogos.id_franquia → franquias.id)*

2. Mostre o nome do jogo junto com o nome do gênero primário para jogos lançados após 2020.
   *(Relacionamento: jogos.id_genero1 → generos.id)*

3. Exiba o nome do jogo, o nome da plataforma e o nome da publicadora para jogos com nota Metascore acima de 90.
   *(Dois JOINs: plataformas + publicadoras)*

4. Liste todos os jogos com seu gênero secundário (se existir), mostrando nome do jogo e nome do gênero.
   *(Relacionamento: jogos.id_genero2 → generos.id)*

5. Mostre nome do jogo, nome da plataforma e data de lançamento para jogos da plataforma "PlayStation 5" ordenados por data.
   *(Relacionamento: jogos.id_plataforma → plataformas.id)*

6. Liste jogos com sua publicadora e franquia, mostrando todos os campos, apenas para jogos com nota IGN maior que 9.0.
   *(Três JOINs: publicadoras + franquias)*

7. Exiba o nome do jogo, nome da publicadora e ano de lançamento para jogos da publicadora "Nintendo" lançados antes de 2010.
   *(Relacionamento: jogos.id_publicadora → publicadoras.id)*

8. Mostre todos os jogos do gênero primário "RPG" com seu nome e data de lançamento, ordenados por nota Metascore decrescente.
   *(Relacionamento: jogos.id_genero1 → generos.id)*

9. Liste nome do jogo, nome do gênero primário e nome do gênero secundário para jogos que possuem ambos os gêneros definidos.
   *(Dois JOINs com a mesma tabela generos)*

10. Exiba jogos multiplayer (4+ jogadores) mostrando nome do jogo, nome da plataforma e quantidade de jogadores.
    *(Relacionamento: jogos.id_plataforma → plataformas.id)*

11. Mostre nome do jogo, nome da franquia e nota IGN para jogos da franquia "The Legend of Zelda".
    *(Relacionamento: jogos.id_franquia → franquias.id)*

12. Liste jogos sem franquia associada, mostrando nome do jogo, gênero primário e plataforma.
    *(Dois JOINs: generos + plataformas)*

13. Exiba o nome do jogo, nome da publicadora e diferença em anos entre data de lançamento e hoje.
    *(Relacionamento: jogos.id_publicadora → publicadoras.id)*

14. Mostre os 10 jogos mais recentes da plataforma "PC" com seu nome e data de lançamento.
    *(Relacionamento: jogos.id_plataforma → plataformas.id)*

15. Liste jogos com mesmo gênero primário e secundário, mostrando nome do jogo e nome do gênero.
    *(Self-join implícito com generos)*

16. Exiba nome do jogo, nome da plataforma e nome da publicadora para jogos onde publicadora e plataforma têm o mesmo nome (ex: Nintendo).
    *(Dois JOINs com condição adicional)*

17. Mostre jogos com nota Metascore e nota IGN, exibindo nome do jogo, nome da franquia e diferença entre as notas.
    *(Relacionamento: jogos.id_franquia → franquias.id)*

18. Liste jogos do gênero secundário "Ação" com nome do jogo, nome do gênero primário e plataforma.
    *(Dois JOINs: generos para gênero1 + generos para gênero2)*

19. Exiba a contagem de jogos por publicadora, mostrando nome da publicadora e total de jogos.
    *(Relacionamento: jogos.id_publicadora → publicadoras.id)*

20. Mostre nome do jogo, nome da plataforma e trimestre de lançamento para jogos com menos de 2 jogadores.
    *(Relacionamento: jogos.id_plataforma → plataformas.id)*

</details>
