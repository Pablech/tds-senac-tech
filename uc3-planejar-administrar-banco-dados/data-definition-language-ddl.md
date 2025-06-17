# data definition language - ddl

## `CREATE`

O `CREATE` é usado para criar diferentes estruturas no servidor MySQL.

### `CREATE DATABASE`

Usado para criar um novo banco de dados.

**Sintaxe Completa:**
```sql
CREATE DATABASE [IF NOT EXISTS] nome_do_banco
    [CHARACTER SET charset_name]
    [COLLATE collation_name];
```

**Parâmetros Chave:**
- **`IF NOT EXISTS`**: Evita erros se o banco já existir
- **`CHARACTER SET`**: Define o conjunto de caracteres (ex: `utf8mb4`)
- **`COLLATE`**: Define as regras de comparação (ex: `utf8mb4_unicode_ci`)

---

**Exemplos Práticos:**

**Exemplo 1: Banco simples**
```sql
CREATE DATABASE ecommerce;
```

**Exemplo 2: Banco com charset específico (recomendado para português)**
```sql
CREATE DATABASE IF NOT EXISTS escola
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;
```

**Exemplo 3: Verificar criação**
```sql
SHOW DATABASES; -- Lista todos os bancos
USE escola;     -- Seleciona o banco para uso
```

---

### `CREATE TABLE`

Define a estrutura de uma nova tabela no banco selecionado.

**Sintaxe Completa:**
```sql
CREATE TABLE [IF NOT EXISTS] nome_da_tabela (
    coluna1 tipo_de_dado [restricoes],
    coluna2 tipo_de_dado [restricoes],
    ...
    [restricoes_de_tabela]
) [ENGINE=storage_engine] [DEFAULT CHARSET=charset_name];
```

---

#### Componentes Principais

**A. Tipos de Dados**

- **Inteiros**: `INT`, `TINYINT`, `BIGINT`
- **Decimais**: `DECIMAL(10,2)`, `FLOAT`
- **Texto**: `VARCHAR(255)`, `TEXT`, `CHAR(10)`
- **Data/Hora**: `DATE`, `DATETIME`, `TIMESTAMP`
- **Binários**: `BLOB`, `JSON`

**B. Restrições de Coluna**

| Restrição      | Descrição                          | Exemplo                     |
|----------------|-----------------------------------|----------------------------|
| `PRIMARY KEY`  | Chave primária única              | `id INT PRIMARY KEY`       |
| `AUTO_INCREMENT`| Valor automático (inteiros)       | `id INT AUTO_INCREMENT`    |
| `UNIQUE`       | Valores exclusivos                | `email VARCHAR(100) UNIQUE`|
| `NOT NULL`     | Impede valores nulos              | `nome VARCHAR(50) NOT NULL`|
| `DEFAULT`      | Valor padrão                     | `status TINYINT DEFAULT 1` |
| `CHECK`        | Validação personalizada (MySQL 8.0+)| `preco DECIMAL(10,2) CHECK (preco > 0)` |
| `FOREIGN KEY`  | Chave estrangeira                 | `cliente_id INT REFERENCES clientes(id)` |

**C. Restrições de Tabela**

```sql
PRIMARY KEY (col1, col2),
FOREIGN KEY (col) REFERENCES outra_tabela(col),
UNIQUE (email),
CHECK (salario > 0)
```

---

#### Exemplos Práticos

**Exemplo 1: Tabela simples de usuários**
```sql
CREATE TABLE IF NOT EXISTS usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
    ativo TINYINT(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
```

**Exemplo 2: Tabela com chave estrangeira e composição**
```sql
CREATE TABLE pedidos (
    pedido_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT NOT NULL,
    data_pedido DATE NOT NULL,
    total DECIMAL(10,2) CHECK (total > 0),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
```

**Exemplo 3: Tabela com chave primária composta**
```sql
CREATE TABLE matriculas (
    aluno_id INT,
    curso_id INT,
    data_matricula DATE DEFAULT (CURRENT_DATE),
    PRIMARY KEY (aluno_id, curso_id),
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (curso_id) REFERENCES cursos(id)
);
```

---

#### Erros Comuns e Soluções

1. **Esquecer o `USE database`**:
    ```sql
    -- Erro: No database selected
    CREATE TABLE teste (id INT);

    -- Solução:
    USE meu_banco;
    CREATE TABLE teste (id INT);
    ```

2. **Chave estrangeira sem tabela pai**:
    ```sql
    -- Erro: Cannot add foreign key constraint
    CREATE TABLE pedidos (
        cliente_id INT REFERENCES clientes(id) -- Tabela clientes não existe!
    );
    ```

3. **Nome de tabela reservado**:
    ```sql
    -- Erro com palavras reservadas
    CREATE TABLE order (id INT); -- "order" é palavra-chave

    -- Solução: Usar backticks
    CREATE TABLE `order` (id INT);
    ```

---

#### `PRIMARY KEY` Chave Primária

A chave primária é um identificador único e obrigatório para cada registro em uma tabela. Suas características fundamentais:

| Característica         | Descrição                                                                 |
|------------------------|---------------------------------------------------------------------------|
| **Unicidade**          | Cada valor deve ser exclusivo na tabela                                   |
| **Não nula (NOT NULL)**| Não pode conter valores `NULL`                                            |
| **Identificação única**| Usada para identificar inequivocamente cada linha                         |
| **Índice clusterizado**| Os dados são fisicamente ordenados pela PK (InnoDB)                       |

**Propósitos principais:**
1. Garantir integridade dos dados
2. Permitir relacionamentos entre tabelas (via chaves estrangeiras)
3. Otimizar buscas (cria índice automático)

---

##### Tipos de Chaves Primárias

a) Simples (coluna única):
```sql
CREATE TABLE clientes (
    id INT PRIMARY KEY,  -- Chave primária simples
    nome VARCHAR(50)
);
```

---

#### `AUTO_INCREMENT` (Auto Incremento)

Mecanismo que gera valores sequenciais automaticamente para uma coluna, normalmente usada com chaves primárias surrogate.

**Características:**
| Propriedade             | Descrição                                                                 |
|-------------------------|---------------------------------------------------------------------------|
| **Exclusivo para números** | Funciona com `INT`, `SMALLINT`, `BIGINT`                                |
| **Gerenciamento automático** | MySQL controla a sequência                                              |
| **Início padrão**       | 1                                                                        |
| **Incremento padrão**   | 1                                                                        |
| **Desconsidera deleções** | Valores excluídos não são reutilizados                                  |

---

##### Sintaxe Completa:
```sql
CREATE TABLE tabela (
    id INT [UNSIGNED] AUTO_INCREMENT PRIMARY KEY,
    ...
) AUTO_INCREMENT=100;  -- Valor inicial personalizado
```

---

##### Exemplos Práticos:

**Exemplo 1: Uso básico**
```sql
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(100) UNIQUE
);

-- Inserções:
INSERT INTO usuarios (email) VALUES ('maria@exemplo.com');  -- id=1
INSERT INTO usuarios (email) VALUES ('joao@exemplo.com');   -- id=2
```

**Exemplo 2: Valor inicial personalizado**
```sql
CREATE TABLE departamentos (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50)
) AUTO_INCREMENT = 1000;

-- Primeiro registro terá codigo=1000
INSERT INTO departamentos (nome) VALUES ('TI');
```

**Exemplo 3: Com BIGINT**
```sql
CREATE TABLE transacoes (
    transacao_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2)
);
```

---

#### Comportamento em Ações

a) Inserção:
```sql
-- Atribui automaticamente o próximo valor
INSERT INTO tabela (campo) VALUES ('valor');

-- Pode inserir manualmente (desabilita autoincremento temporário)
INSERT INTO tabela (id, campo) VALUES (100, 'valor');
```

b) Atualização (não permitida):
```sql
-- ERRO! Não pode alterar uma coluna AUTO_INCREMENT
UPDATE usuarios SET id = 10 WHERE id = 1;
```

c) Exclusão:
```sql
DELETE FROM usuarios WHERE id = 2;
-- Próximo INSERT terá id=3 (não reutiliza 2)
```

---

#### Gerenciamento Avançado

**1. Verificar próximo valor:**
```sql
SHOW TABLE STATUS LIKE 'nome_tabela';
-- Verificar coluna 'Auto_increment'
```

**2. Alterar próximo valor:**
```sql
ALTER TABLE tabela AUTO_INCREMENT = 50;
```

**3. Reiniciar contagem:**
```sql
-- Apagar todos os dados e reiniciar contagem
TRUNCATE TABLE tabela;
```

---

#### Boas Práticas

1. **Sempre use com `PRIMARY KEY` ou `UNIQUE`**
    ```sql
    -- RUIM (permite duplicatas)
    CREATE TABLE errada (
        id INT AUTO_INCREMENT  -- Falta PRIMARY KEY!
    );
    ```

2. **Combine com `UNSIGNED` para dobrar a faixa positiva**
    ```sql
    CREATE TABLE exemplo (
        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    );
    ```

3. **Prefira `BIGINT` para tabelas com crescimento exponencial**
    ```sql
    CREATE TABLE grande_tabela (
        id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    );
    ```

---

#### Limitações e Armadilhas

**1. Máximo valor possível:**
- `INT`: 2,147,483,647
- `BIGINT`: 9,223,372,036,854,775,807

**2. Duplicatas em inserções manuais:**
```sql
INSERT INTO usuarios (id, email) VALUES (10, 'teste@exemplo.com');
-- Inserção automática posterior pode tentar usar id=10 novamente!
```

---

#### Exemplo Completo: Sistema de Vendas

```sql
CREATE TABLE clientes (
    cliente_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE
) AUTO_INCREMENT = 1000;

CREATE TABLE pedidos (
    pedido_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT UNSIGNED NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

-- Inserções
INSERT INTO clientes (nome, cpf) VALUES ('Ana Silva', '12345678901');
INSERT INTO pedidos (cliente_id) VALUES (1000); -- ID automático
```

---

## exercícios

<details>
<summary>Lista de Exercícios</summary>

**Exercício 1**
Crie uma tabela `usuarios` com:
- ID inteiro auto-incrementado (chave primária)
- Nome (texto, máx 50 caracteres, obrigatório)
- Email (texto, máx 100 caracteres)
- Idade (inteiro opcional)

**Exercício 2**
Crie uma tabela `produtos` com:
- Código (chave primária inteira)
- Nome (texto, máx 80 caracteres, obrigatório)
- Preço (inteiro positivo)
- Categoria (texto, máx 30 caracteres)

**Exercício 3**
Crie uma tabela `pedidos` com chave primária composta por:
- Número do pedido (inteiro)
- Item (inteiro)
- Produto (texto, máx 50 caracteres)
- Quantidade (inteiro)

**Exercício 4**
Crie uma tabela `cidades` usando como chave primária:
- CEP (texto, 8 caracteres)
- Nome (texto, máx 50 caracteres)
- População (inteiro)

**Exercício 5**
Crie uma tabela `logs` onde:
- ID começa em 1000 e incrementa de 5 em 5
- Mensagem (texto, máx 200 caracteres)
- Nível (inteiro)

**Exercício 6**
Crie uma tabela `contatos` onde:
- ID (auto-incrementado)
- Telefone (texto, 11 caracteres, obrigatório)
- Tipo (texto, máx 10 caracteres, obrigatório)

**Exercício 7**
Crie uma tabela `estoque` com:
- Produto_ID (inteiro, chave primária)
- Nome (texto, máx 50 caracteres)
- Quantidade (inteiro, não negativo)
- Localização (texto, máx 10 caracteres)

**Exercício 8**
Crie uma tabela `matriculas` com chave primária composta por:
- Aluno_ID (inteiro)
- Disciplina (texto, máx 30 caracteres)
E uma coluna:
- Nota (inteiro)

**Exercício 9**
Crie uma tabela `veiculos` com:
- Placa (texto, 7 caracteres, chave primária)
- Modelo (texto, máx 40 caracteres, obrigatório)
- Ano (inteiro)

</details>

## `DROP`

Comando usado para apagar um banco de dados ou uma tabela.

```sql
DROP TABLE alunos;
DROP DATABASE escola;
```

## `ALTER`

O comando `ALTER TABLE` é usado para modificar a estrutura de um objeto.

### Alterando Tabela

#### 1. Adicionar Coluna
```sql
-- Adiciona uma coluna "preco" (DECIMAL) após "publicadora"
ALTER TABLE jogos
ADD COLUMN preco DECIMAL(8,2) NULL AFTER publicadora;
```
- **`ADD COLUMN`**: Define nova coluna.
- **`AFTER publicadora`**: Posiciona a coluna após "publicadora" (opcional).

#### 2. Remover Coluna
```sql
-- Remove a coluna "nota_ign"
ALTER TABLE jogos
DROP COLUMN nota_ign;
```
- **`DROP COLUMN`**: Exclui a coluna e seus dados permanentemente.

#### 3. Modificar Tipo/Definição de Coluna
```sql
-- Altera "franquia" para VARCHAR(150) e permite NULL
ALTER TABLE jogos
MODIFY COLUMN franquia VARCHAR(150) NULL;

-- Altera "nr_jogadores" para TINYINT UNSIGNED
ALTER TABLE jogos
MODIFY COLUMN nr_jogadores TINYINT UNSIGNED NOT NULL;
```
- **`MODIFY COLUMN`**: Altera tipo, tamanho ou constraints (preserva dados existentes se compatíveis).

#### 4. Renomear Coluna
```sql
-- Renomeia "plataforma" para "plataforma_lancamento"
ALTER TABLE jogos
RENAME COLUMN plataforma TO plataforma_lancamento;
```
- **`RENAME COLUMN ... TO ...`**: Muda o nome da coluna.

#### 5. Adicionar Chave Estrangeira
```sql
-- Adiciona FK para "id_genero2" (se não existir na criação)
ALTER TABLE jogos
ADD CONSTRAINT fk_jogos_genero2
FOREIGN KEY (id_genero2) REFERENCES generos(id);
```
- **`ADD CONSTRAINT ... FOREIGN KEY`**: Cria relação com outra tabela.

#### 6. Remover Chave Estrangeira
```sql
-- Remove a FK "fk_jogos_genero2"
ALTER TABLE jogos
DROP FOREIGN KEY fk_jogos_genero2;
```
- **`DROP FOREIGN KEY`**: Exclui a constraint (não remove a coluna).

#### 7. Alterar Nome da Tabela
```sql
-- Renomeia a tabela para "jogos_info"
ALTER TABLE jogos
RENAME TO jogos_info;
```
- **`RENAME TO`**: Muda o nome da tabela.

#### 8. Adicionar Índice
```sql
-- Cria índice na coluna "publicadora"
ALTER TABLE jogos
ADD INDEX idx_publicadora (publicadora);
```
- **`ADD INDEX`**: Melhora performance em buscas.

#### 9. Adicionar Valor Padrão
```sql
-- Define valor padrão 1 para "nr_jogadores"
ALTER TABLE jogos
ALTER COLUMN nr_jogadores SET DEFAULT 1;
```
- **`ALTER COLUMN ... SET DEFAULT`**: Define valor padrão.

#### 10. Remover Valor Padrão
```sql
-- Remove o valor padrão de "nr_jogadores"
ALTER TABLE jogos
ALTER COLUMN nr_jogadores DROP DEFAULT;
```

#### 11. Adicionar Restrição `UNIQUE`
```sql
-- Garante que "nome" seja único por plataforma
ALTER TABLE jogos
ADD CONSTRAINT uc_jogo_plataforma UNIQUE (nome, plataforma);
```

#### 12. Remover Restrição `UNIQUE`
```sql
-- Remove a constraint "uc_jogo_plataforma"
ALTER TABLE jogos
DROP INDEX uc_jogo_plataforma;
```

---

### Observações Importantes:
1. **Backup de Dados**: Sempre faça backup antes de usar `ALTER TABLE` em produção.
2. **Compatibilidade**: Alterar tipos de dados pode causar perda de dados se incompatível (ex: `VARCHAR` para `INT`).
3. **Desempenho**: Operações em grandes tabelas podem ser lentas. Use `ALGORITHM=INPLACE` quando possível (MySQL 5.6+).
4. **Chaves Estrangeiras**: Ao remover uma coluna referenciada por uma FK, remova a FK primeiro.
5. **Transações**: `ALTER TABLE` é auto-commit (não pode ser revertido com `ROLLBACK`).
