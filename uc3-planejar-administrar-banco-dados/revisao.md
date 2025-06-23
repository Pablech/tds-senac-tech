# Resumo

## 1. Criação de Banco de Dados

A criação de um banco de dados é o primeiro passo para armazenar informações de forma estruturada. Em SQL (Structured Query Language), o comando CREATE DATABASE é utilizado para este propósito.

Sintaxe Básica:
```sql
CREATE DATABASE nome_do_banco_de_dados;
```

Exemplo:
Para criar um banco de dados chamado minha_colecao_jogos:
```sql
CREATE DATABASE minha_colecao_jogos;
```

## 2. Criação de Tabelas

As tabelas são os objetos fundamentais onde os dados são realmente armazenados. Elas são compostas por colunas (que definem o tipo de dado) e linhas (que contêm os registros individuais). O comando CREATE TABLE é usado para definir a estrutura de uma tabela.

Sintaxe Básica:
```sql
CREATE TABLE nome_da_tabela (
    nome_coluna1 TIPO_DADO restricoes,
    nome_coluna2 TIPO_DADO restricoes,
    ...
);
```

Exemplo com a tabela jogos:
```sql
CREATE TABLE jogos
(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- identificador do jogo
    nome VARCHAR(200) NOT NULL, -- nome do jogo
    id_franquia VARCHAR(128) NULL, -- franquia a qual o jogo pertence (GTA IV pertence ao GTA, Bloodborne não tem, etc)
    id_genero1 VARCHAR(32) NOT NULL, -- gênero primário do jogo (tiro, rpg, etc)
    id_genero2 VARCHAR(32) NULL, -- gênero secundário do jogo (nem todos terão)
    id_plataforma VARCHAR(100) NOT NULL, -- plataforma de lançamento (nintendo 64, playstation 3, PC, etc)
    id_publicadora VARCHAR(100) NOT NULL, -- empresa que publica o jogo (sony, nintendo, bethesda, etc)
    nr_jogadores SMALLINT UNSIGNED NOT NULL, -- quantidade de jogadores local ou online
    nota_metascore TINYINT NULL, -- nota do jogo na plataforma no metacritic (geralmente de 0 a 99)
    nota_ign NUMERIC(3, 1) NULL, -- nota do jogo na plataforma IGN (de 0.0 a 10.0)
    data_lancamento DATE NOT NULL
);
```

Observações:
- `AUTO_INCREMENT`: Atribui um valor único e incremental automaticamente a cada novo registro.
- `PRIMARY KEY`: Define a coluna como chave primária (veja seção 16).
- `NOT NULL`: Garante que a coluna não pode ter um valor nulo (vazio).
- `NULL`: Permite que a coluna tenha um valor nulo.
- `UNSIGNED`: Para tipos numéricos, indica que a coluna só pode armazenar valores não negativos (a partir de 0).

## 3. Tipos Numéricos Inteiros: `TINYINT`, `SMALLINT`, `MEDIUMINT`, `INT` e `BIGINT`

Esses tipos armazenam números inteiros (sem casas decimais) e variam em sua capacidade de armazenamento e faixa de valores. A escolha do tipo correto otimiza o uso de espaço e a performance.

| Tipo | Tamanho (bytes) | Faixa de Valores (com sinal) | Faixa de Valores (UNSIGNED) | Exemplo na Tabela jogos |
| :----: | :----: | :----: | :----: | :----: |
| TINYINT | 1 byte | −128 a 127 | 0 a 255 | nota_metascore |
| SMALLINT | 2 bytes | −32,768 a 32,767 | 0 a 65,535 | nr_jogadores |
| MEDIUMINT | 3 bytes | −8,388,608 a 8,388,607 | 0 a 16,777,215 | Não usado |
| INT | 4 bytes | −2,147,483,648 a 2,147,483,647 | 0 a 4,294,967,295 | Não usado |
| BIGINT | 8 bytes | −9,223,372,036,854,775,808 a 9,223,372,036,854,775,807 | 0 a 18,446,744,073,709,551,615 | id |

Uso na tabela jogos:
- `nota_metascore TINYINT NULL`: `TINYINT` é adequado pois a nota vai de 0 a 99, que está dentro da faixa de 0 a 255 para `UNSIGNED TINYINT` (ou 0 a 127 para `TINYINT` sem `UNSIGNED`).
- `nr_jogadores SMALLINT UNSIGNED NOT NULL`: `SMALLINT UNSIGNED` é ideal para a quantidade de jogadores, pois dificilmente excederá 65.535.
- `id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY`: `BIGINT` é usado para o `id` para garantir que haja um número muito grande de identificadores únicos disponíveis, especialmente em tabelas que crescem muito.

## 4. Tipos Numéricos Decimais: `DECIMAL` e `NUMERIC`

Esses tipos são usados para armazenar números com precisão e escala fixas, o que é crucial para valores monetários ou medições que exigem exatidão. NUMERIC é geralmente um sinônimo de DECIMAL.

Sintaxe: DECIMAL(P, S) ou NUMERIC(P, S)
- `P` (Precision): Número total de dígitos que o número pode ter (antes e depois do ponto decimal).
- `S` (Scale): Número de dígitos após o ponto decimal.

Exemplo na Tabela jogos:
- `nota_ign NUMERIC(3, 1) NULL`: Significa que a nota pode ter um total de 3 dígitos, com 1 dígito após o ponto decimal. Isso permite valores como 0.0 a 99.9. Por exemplo, uma nota 10.0 seria armazenada, mas 100.0 não. Uma nota 9.5 seria armazenada.

## 5. Tipos de Caracteres: `CHAR` e `VARCHAR`

Ambos armazenam sequências de caracteres (texto), mas diferem na forma como o espaço é alocado.
- `CHAR(tamanho)`:
    - Armazena uma string de tamanho fixo.
    - Se a string for menor que o `tamanho` especificado, ela será preenchida com espaços em branco até atingir o tamanho definido.
    - É mais eficiente para strings que sempre terão o mesmo comprimento.
    - Exemplo: `CHAR(5)` armazenaria "abc  " (com dois espaços no final) para "abc".
- `VARCHAR(tamanho)`:
    - Armazena uma string de tamanho variável, com um comprimento máximo especificado.
    - Armazena apenas os caracteres fornecidos, sem preenchimento de espaços.
    - Mais eficiente para strings com comprimentos variáveis, pois economiza espaço.
    - Exemplo na Tabela jogos:
        - `nome VARCHAR(200) NOT NULL`: O nome do jogo pode ter até 200 caracteres, mas só ocupará o espaço necessário para o nome real.
        - `id_franquia VARCHAR(128) NULL`: A franquia pode ter até 128 caracteres.
        - `id_genero1 VARCHAR(32) NOT NULL`: O gênero primário pode ter até 32 caracteres.

## 6. Tipos de Data e Hora: `DATETIME`, `DATE` e `TIME`

Esses tipos são usados para armazenar informações temporais.
- `DATE`:
    - Armazena apenas a data (ano, mês, dia).
    - Formato: `'YYYY-MM-DD'`.
    - Exemplo na Tabela jogos:
        - `data_lancamento DATE NOT NULL`: Armazena a data de lançamento do jogo, como `'2023-10-26'`.
- `TIME`:
    - Armazena apenas a hora (horas, minutos, segundos).
    - Formato: `'HH:MM:SS'`.
- `DATETIME`:
    - Armazena a data e a hora.
    - Formato: `'YYYY-MM-DD HH:MM:SS'`.

## 7. Operadores Aritméticos

Usados para realizar cálculos matemáticos em expressões numéricas.

| Operador | Descrição | Exemplo | Resultado |
| :----: | :----: | :----: | :----: |
| + | Adição| `10 + 5` | 15 |
| - | Subtração| `10 - 5` | 5 |
| * | Multiplicação| `10 * 5` | 50 |
| / | Divisão| `10 / 2` | 5 |
| % | Módulo (resto)| `10 % 3` (resto da divisão de 10 por 3) | 1 |

## 8. Operadores Lógicos

Usados para combinar ou negar condições em cláusulas WHERE.

| Operador | Descrição | Exemplo (em WHERE) |
| :----: | :----: | :----: |
| `AND` | Retorna TRUE se ambas as condições forem TRUE. | WHERE id_genero1 = 'RPG' AND nr_jogadores > 1 |
| `OR` | Retorna TRUE se qualquer uma das condições for TRUE. | WHERE id_plataforma = 'PC' OR id_plataforma = 'PlayStation 5' |
| `NOT` | Inverte o resultado de uma condição (TRUE se a condição for FALSE). | WHERE NOT id_publicadora = 'Nintendo' |

## 9. Operadores de Comparação (ou Algébricos/Relacionais)

Usados para comparar valores em uma cláusula WHERE.

| Operador | Descrição | Exemplo (em WHERE) |
| :----: | :----: | :----: |
| `=` | Igual a | `WHERE nome = 'The Witcher 3'` |
| `<>` ou `!=` | Diferente de | `WHERE id_publicadora <> 'Sony'` |
| `>` | Maior que | `WHERE nota_metascore > 80` |
| `<` | Menor que | `WHERE nota_ign < 7.5` |
| `>=` | Maior ou igual a | `WHERE nr_jogadores >= 2` |
| `<=` | Menor ou igual a | `WHERE data_lancamento <= '2020-01-01'` |

## 10. Comandos SQL Essenciais: SELECT, INSERT, UPDATE, DELETE

Esses são os comandos DML (Data Manipulation Language) mais utilizados para interagir com os dados em um banco de dados.

### 1. `SELECT` (Consulta de Dados)

Usado para recuperar dados de uma ou mais tabelas.

Sintaxe Básica:
```sql
SELECT coluna1, coluna2, ...
FROM nome_da_tabela
WHERE condicao; -- Opcional
```

Exemplos com jogos:
- Selecionar todos os campos de todos os jogos:
    ```sql
    SELECT *
    FROM jogos;
    ```

- Selecionar o nome e a plataforma dos jogos:
    ```sql
    SELECT nome, id_plataforma
    FROM jogos;
    ```

- Selecionar jogos de RPG com mais de um jogador:
    ```sql
    SELECT nome, id_genero1, nr_jogadores
    FROM jogos
    WHERE id_genero1 = 'RPG' AND nr_jogadores > 1;
    ```

### 2. `INSERT` (Inserção de Dados)

Usado para adicionar novas linhas (registros) a uma tabela.

Sintaxe Básica:
```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, ...)
VALUES (valor1, valor2, ...);
```

Exemplo com jogos:
```sql
INSERT INTO jogos (nome, id_franquia, id_genero1, id_genero2, id_plataforma, id_publicadora, nr_jogadores, nota_metascore, nota_ign, data_lancamento)
VALUES ('Grand Theft Auto V', 'GTA', 'Ação', 'Aventura', 'PC', 'Rockstar Games', 1, 97, 10.0, '2013-09-17');

INSERT INTO jogos (nome, id_genero1, id_plataforma, id_publicadora, nr_jogadores, data_lancamento)
VALUES ('Bloodborne', 'RPG de Ação', 'PlayStation 4', 'Sony Computer Entertainment', 1, '2015-03-24');
```

Observação: Não é necessário especificar o `id` se ele for `AUTO_INCREMENT`.

### 3. `UPDATE` (Atualização de Dados)

Usado para modificar dados existentes em uma ou mais linhas de uma tabela.

Sintaxe Básica:
```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1, coluna2 = novo_valor2, ...
WHERE condicao; -- CRUCIAL: Sem WHERE, todos os registros são atualizados!
```

Exemplo com jogos:
- Atualizar a nota do Metascore para um jogo específico:
    ```sql
    UPDATE jogos
    SET nota_metascore = 96
    WHERE nome = 'Grand Theft Auto V';
    ```

- Atualizar a plataforma de um jogo:
    ```sql
    UPDATE jogos
    SET id_plataforma = 'PC'
    WHERE nome = 'The Last of Us Part I';
    ```

### 4. `DELETE` (Exclusão de Dados)

Usado para remover linhas existentes de uma tabela.

Sintaxe Básica:
```sql
DELETE FROM nome_da_tabela
WHERE condicao; -- CRUCIAL: Sem WHERE, todos os registros são deletados!
```

Exemplo com jogos:
- Deletar um jogo específico:
    ```sql
    DELETE FROM jogos
    WHERE nome = 'Anthem';
    ```

- Deletar todos os jogos de uma publicadora:
    ```sql
    DELETE FROM jogos
    WHERE id_publicadora = 'Electronic Arts';
    ```

## 11. Filtros da Cláusula `WHERE` com `IN`, `BETWEEN`, `LIKE`

Estes operadores são filtros especiais que facilitam a especificação de condições na cláusula WHERE.

### 1. `IN` (Para múltiplos valores)

Usado para especificar uma lista de valores possíveis para uma coluna.

Exemplo com jogos:
- Selecionar jogos que são de PC ou PlayStation 5:
    ```sql
    SELECT nome, id_plataforma
    FROM jogos
    WHERE id_plataforma IN ('PC', 'PlayStation 5');
    ```

### 2. `BETWEEN` (Para faixa de valores)

Usado para selecionar valores dentro de um intervalo (inclusive os limites). Funciona com números, datas e textos.

Exemplo com jogos:
- Selecionar jogos lançados entre 2010 e 2015 (inclusive):
    ```sql
    SELECT nome, data_lancamento
    FROM jogos
    WHERE data_lancamento BETWEEN '2010-01-01' AND '2015-12-31';
    ```

- Selecionar jogos com nota Metascore entre 85 e 90:
    ```sql
    SELECT nome, nota_metascore
    FROM jogos
    WHERE nota_metascore BETWEEN 85 AND 90;
    ```

### 3. `LIKE` (Para busca de padrões de texto)

Usado para buscar padrões específicos em colunas de texto, utilizando caracteres curinga:
- `%`: Representa zero ou mais caracteres.
- `_`: Representa um único caractere.

Exemplo com jogos:
- Selecionar jogos cujo nome começa com "Grand":
    ```sql
    SELECT nome
    FROM jogos
    WHERE nome LIKE 'Grand%';
    ```

- Selecionar jogos cujo nome contém "Auto":
    ```sql
    SELECT nome
    FROM jogos
    WHERE nome LIKE '%Auto%';
    ```

- Selecionar jogos cujo nome tem "e" como o segundo caractere (ex: "Red Dead Redemption"):
    ```sql
    SELECT nome
    FROM jogos
    WHERE nome LIKE '_e%';
    ```

## 12. Funções Agregadoras

Funções que realizam um cálculo em um conjunto de linhas e retornam um único valor resumido.

| Função | Descrição | Exemplo |
| :----: | :----: | :----: |
| COUNT() | Retorna o número de linhas que correspondem a um critério. | SELECT COUNT(*) FROM jogos; (total de jogos) |
| SUM() | Retorna a soma total de uma coluna numérica. | SELECT SUM(nr_jogadores) FROM jogos WHERE id_genero1 = 'Esportes'; |
| AVG() | Retorna a média de valores em uma coluna numérica. | SELECT AVG(nota_metascore) FROM jogos; (média das notas) |
| MAX() | Retorna o valor máximo em uma coluna. | SELECT MAX(nota_ign) FROM jogos; (maior nota IGN) |
| MIN() | Retorna o valor mínimo em uma coluna. | SELECT MIN(data_lancamento) FROM jogos; (jogo mais antigo) |

Exemplo de uso com `GROUP BY`:
- Contar quantos jogos existem para cada plataforma:
    ```sql
    SELECT id_plataforma, COUNT(*) AS total_jogos
    FROM jogos
    GROUP BY id_plataforma;
    ```

## 13. Chave Primária (Primary Key - PK)

Uma chave primária é uma coluna (ou conjunto de colunas) que identifica de forma única cada registro em uma tabela.
- **Unicidade**: Cada valor de chave primária deve ser único na tabela.
- **Não Nula**: Não pode conter valores nulos (NULL).
- **Finalidade**: Garante a integridade dos dados e é essencial para o relacionamento entre tabelas.

Na tabela jogos:
- `id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY`: A coluna id é a chave primária. Cada jogo terá um id único, garantindo que não haja dois jogos com o mesmo identificador na tabela.

## 14. Chave Estrangeira (Foreign Key - FK)

Uma chave estrangeira é uma coluna (ou conjunto de colunas) em uma tabela que faz referência à chave primária de outra tabela. Ela estabelece e impõe um vínculo entre os dados em duas tabelas.
- **Integridade Referencial**: Garante que os dados relacionados existam na tabela à qual a chave estrangeira faz referência.
- **Relacionamento**: Cria a ligação entre tabelas.

Exemplo:

Vamos criar uma tabela generos para exemplificar:
```sql
CREATE TABLE generos (
    id VARCHAR(32) PRIMARY KEY,
    nome_genero VARCHAR(100) NOT NULL
);

INSERT INTO generos (id, nome_genero) VALUES ('Ação', 'Ação');
INSERT INTO generos (id, nome_genero) VALUES ('RPG', 'Role-Playing Game');
```

Na tabela jogos, as colunas id_genero1 e id_genero2 seriam chaves estrangeiras que fazem referência ao id da tabela generos. A sintaxe para adicionar chaves estrangeiras à tabela jogos seria:
```sql
ALTER TABLE jogos
ADD CONSTRAINT fk_genero1
FOREIGN KEY (id_genero1) REFERENCES generos(id);

ALTER TABLE jogos
ADD CONSTRAINT fk_genero2
FOREIGN KEY (id_genero2) REFERENCES generos(id);
```

Isso garante que qualquer valor em `id_genero1` ou `id_genero2` na tabela `jogos` precise existir como um `id` válido na tabela `generos`.

## 15. `INNER JOIN` (Combinação de Tabelas)

O `INNER JOIN` é usado para combinar linhas de duas ou mais tabelas com base em uma coluna relacionada comum entre elas. Ele retorna apenas as linhas onde há correspondência em ambas as tabelas.

Sintaxe Básica:
```sql
SELECT colunas
FROM tabela1
INNER JOIN tabela2 ON tabela1.coluna_comum = tabela2.coluna_comum;
```

Exemplo com jogos e generos:
Para listar os nomes dos jogos junto com o nome completo do seu gênero primário:
```sql
SELECT
    j.nome AS NomeDoJogo,
    g.nome_genero AS GeneroPrimario
FROM
    jogos AS j -- Alias 'j' para a tabela jogos
INNER JOIN
    generos AS g ON j.id_genero1 = g.id; -- Alias 'g' para a tabela generos
```

Explicação:
- `SELECT j.nome, g.nome_genero`: Seleciona o nome do jogo da tabela `jogos` (usando o alias `j`) e o nome do gênero da tabela `generos` (usando o alias `g`).
- `FROM jogos AS j`: Indica que estamos começando com a tabela `jogos` e dando a ela o alias `j`.
- `INNER JOIN generos AS g ON j.id_genero1 = g.id`: Combina `jogos` com `generos` onde o `id_genero1` da tabela jo`gos é igual ao `id` da tabela `generos`. Apenas os jogos que possuem um gênero primário correspondente na tabela `generos` serão retornados.

## 16. Material da Aula

```sql
create database revisao;

drop table jogos;
create table jogos
(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(256) NOT NULL,
    id_plataforma INTEGER NOT NULL,
    data_lanc DATE NULL,
    nota NUMERIC(4,2) NULL,
    CONSTRAINT FOREIGN KEY (id_plataforma) REFERENCES plataformas (id)
);

create table plataformas
(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(256) NOT NULL
);

insert into jogos (nome, id_plataforma, data_lanc, nota) values
    ('The Witcher 3', 4, '2017-07-01', 4.5),
    ('Skyrim', 3, '2011-11-11', 9.8),
    ('Mario Kart Sunshine', 2, '2020-12-01', 7.4),
    ('Minecraft', 5, '2001-09-11', 6.66),
    ('Duke Nukem 3D', 3, '1996-05-07', 6.9),
    ('Quake', 1, '1994-02-28', 5.6),
    ('Tetris', 4, '2010-05-17', 7.4),
    ('Paper Please', 5, '2013-08-08', 2.56);

select * from jogos;
order by plataforma asc;


insert into plataformas (nome) values
    ('DOS'),('Nintendo Switch'),('PC'),('PS4'),('XBox');
select * from plataformas;
insert into plataformas (nome) values ('Atari');


update jogos
    set nota = 8.7
    where id = 1;

select j.nome as NomeJogo, p.nome as NomePlataforma, j.nota
from jogos as j
inner join plataformas as p
    on p.id = j.id_plataforma
where j.nome like '%a%' and not j.nota > 7.0;

select * from jogos;
delete from jogos;
delete from plataformas;
```
