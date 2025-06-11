# numeric data type

O MySQL suporta **todos os tipos de dados numéricos padrão do SQL**. Esses tipos incluem:

### tipos de dados numéricos exatos

- `INTEGER`
- `SMALLINT`
- `DECIMAL`
- `NUMERIC`

**Observações importantes:**
- A palavra-chave `INT` é sinônimo de `INTEGER`
- As palavras-chave `DEC` e `FIXED` são sinônimos de `DECIMAL`
- O MySQL trata `DOUBLE` como sinônimo de `DOUBLE PRECISION` (extensão não padrão)
- O MySQL também trata `REAL` como sinônimo de `DOUBLE PRECISION` (variação não padrão), **exceto** quando o modo SQL `REAL_AS_FLOAT` está ativado

---

### tipo de dados bit

O tipo de dados `BIT` armazena **valores de bit** e tem suporte para tabelas:
- `MyISAM`
- `MEMORY`
- `InnoDB`
- `NDB`

### para tipos de dados inteiros

- `M` indica a **largura mínima de exibição** (máximo de 255 caracteres).

> [!IMPORTANT]
> A largura de exibição **não está relacionada** ao intervalo de valores armazenados.
> Este atributo está depreciado e será removido em versões futuras do MySQL.

### para tipos de ponto flutuante e ponto fixo

- `M` representa o **número total de dígitos** armazenáveis.

### comportamento do ZEROFILL

- Ao especificar `ZEROFILL` para uma coluna numérica:
    - MySQL adiciona automaticamente o atributo `UNSIGNED`.

> [!IMPORTANT]
> `ZEROFILL` está depreciado para tipos numéricos. Alternativas recomendadas:
    > Usar `LPAD()` para preenchimento com zeros.
    > Armazenar números formatados em colunas `CHAR`.

### atributos SIGNED/UNSIGNED

- Tipos que permitem `UNSIGNED` também permitem `SIGNED`.
- **Comportamento padrão:** Todos os tipos são assinados (`SIGNED` por padrão).

> [!IMPORTANT]
> Obsoleto para `FLOAT`, `DOUBLE` e `DECIMAL` (e sinônimos). Use `CHECK` constraints como alternativa.

### definições especiais

- `SERIAL` = `BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE`.
- `SERIAL DEFAULT VALUE` = `NOT NULL AUTO_INCREMENT UNIQUE` em colunas inteiras.

> [!IMPORTANT]
> Subtrações envolvendo valores `UNSIGNED` resultam em valor não-assinado
> Exceção: Se o modo SQL `NO_UNSIGNED_SUBTRACTION` estiver ativo

---

## `INTEGER`

O MySQL suporta os tipos de dados inteiros padrão do SQL, como `INTEGER` e `SMALLINT`. Como uma extensão dos tipos de dados padrão, o MySQL também suporta os tipos `TINYINT`, `MEDIUMINT` e `BIGINT`.

### `TINYINT[(M)] [UNSIGNED] [ZEROFILL]`

- **Armazenamento**: 1 byte (8 bits)
- **Faixa com sinal (signed)**: -128 a 127
    - `Exemplo`: -10, 0, 100
- **Faixa sem sinal (unsigned)**: 0 a 255
    - `Exemplo`: 0, 150, 255
- **Uso típico**: Valores booleanos ou pequenas quantidades.
- **Exemplo de criação**:
    ```sql
    CREATE TABLE usuarios (
        id INT PRIMARY KEY,
        idade TINYINT UNSIGNED,  -- Idade não pode ser negativa
        ativo TINYINT(1)         -- 0 = inativo, 1 = ativo (tipo booleano)
    );
    ```
    ```sql
    INSERT INTO usuarios VALUES (1, 25, 1);  -- Válido
    INSERT INTO usuarios VALUES (2, 300, 1); -- Erro: 300 > 255
    ```

---

### `SMALLINT[(M)] [UNSIGNED] [ZEROFILL]`

- **Armazenamento**: 2 bytes (16 bits)
- **Signed**: -32,768 a 32,767
    - `Exemplo`: -15000, 0, 25000
- **Unsigned**: 0 a 65,535
    - `Exemplo`: 0, 50000, 65535
- **Uso típico**: Quantidades médias (estoque, população de cidades).
- **Exemplo**:
    ```sql
    CREATE TABLE estoque (
        produto_id INT,
        quantidade SMALLINT UNSIGNED  -- Quantidade não pode ser negativa
    );
    ```
    ```sql
    INSERT INTO estoque VALUES (101, 10000); -- Válido
    INSERT INTO estoque VALUES (102, -50);   -- Erro: valor negativo
    ```

---

### `MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]`

- **Armazenamento**: 3 bytes (24 bits)
- **Signed**: -8,388,608 a 8,388,607
    - `Exemplo`: -5_000_000, 0, 7_000_000
- **Unsigned**: 0 a 16,777,215
    - `Exemplo`: 0, 10_000_000, 16_777_215
- **Uso típico**: Valores maiores (visualizações de vídeos, métricas web).
- **Exemplo**:
    ```sql
    CREATE TABLE videos (
        video_id INT,
        visualizacoes MEDIUMINT UNSIGNED  -- Visualizações são sempre positivas
    );
    ```
    ```sql
    INSERT INTO videos VALUES (201, 15_000_000); -- Válido
    INSERT INTO videos VALUES (202, 20_000_000); -- Erro: excede 16.7M
    ```

---

### `INTEGER[(M)] [UNSIGNED] [ZEROFILL]` (ou `INT`)

- **Armazenamento**: 4 bytes (32 bits)
- **Signed**: -2,147,483,648 a 2,147,483,647
    - `Exemplo`: -2_000_000_000, 0, 2_000_000_000
- **Unsigned**: 0 a 4,294,967,295
    - `Exemplo`: 0, 3_000_000_000, 4_294_967_295
- **Uso típico**: Chaves primárias, IDs, valores grandes mas não extremos.
- **Exemplo**:
    ```sql
    CREATE TABLE pedidos (
        pedido_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- ID único positivo
        total INT UNSIGNED
    );
    ```
    ```sql
    INSERT INTO pedidos (total) VALUES (3_000_000_000); -- Válido
    INSERT INTO pedidos (total) VALUES (-1);            -- Erro: valor negativo
    ```

---

### `BIGINT[(M)] [UNSIGNED] [ZEROFILL]`

- **Armazenamento**: 8 bytes (64 bits)
- **Signed**: -9,223,372,036,854,775,808 a 9,223,372,036,854,775,807
    - `Exemplo`: -9e18, 0, 9e18
- **Unsigned**: 0 a 18,446,744,073,709,551,615
    - `Exemplo`: 0, 1e19, 1.844e19
- **Uso típico**: Sistemas de grande escala (redes sociais, bancos, métricas astronômicas).
- **Exemplo**:
    ```sql
    CREATE TABLE transacoes_bancarias (
        transacao_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        valor BIGINT UNSIGNED  -- Valores monetários muito grandes (em centavos)
    );
    ```
    ```sql
    INSERT INTO transacoes_bancarias (valor) VALUES (18_000_000_000_000); -- 18 trilhões (válido)
    ```

---

### Regras Gerais e Melhores Práticas
1. **Escolha do Tipo**:
    - Use o menor tipo que comporte seus dados para economizar armazenamento.
        - `Exemplo`: Para "idade", `TINYINT` é melhor que `INT`.

2. **Sinal vs. Não Sinal (UNSIGNED)**:
    - Se valores negativos são impossíveis (ex: quantidade, preço), use `UNSIGNED` para dobrar a faixa positiva.

3. **AUTO_INCREMENT**:
    - `INT` ou `BIGINT` são ideais para chaves primárias automáticas.
        - `Exemplo`: `id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY`.

4. **Desempenho**:
    - Tipos menores (`TINYINT`, `SMALLINT`) são processados mais rápido e ocupam menos espaço em disco/memória.

5. **Overflow**:
    - Valores fora da faixa causam erros.
        - `Exemplo`: Inserir 300 em `TINYINT UNSIGNED` gera erro.

6. **OBS: O Número entre Parênteses (ex: `INT(11)`)**
    - **Não afeta o armazenamento!** É apenas uma dica para exibição (quando usado com `ZEROFILL`).
    ```sql
    CREATE TABLE exemplo (
        numero INT(5) ZEROFILL  -- Exibe "42" como "00042"
    );
    ```

---

### Resumo Comparativo
| Tipo       | Bytes | Faixa Signed                     | Faixa Unsigned             | Exemplo de Uso               |
|------------|-------|----------------------------------|----------------------------|------------------------------|
| `TINYINT`  | 1     | -128 a 127                      | 0 a 255                   | Booleanos, idade             |
| `SMALLINT` | 2     | -32,768 a 32,767                | 0 a 65,535                | Estoque, pequenas cidades    |
| `MEDIUMINT`| 3     | -8,388,608 a 8,388,607          | 0 a 16,777,215            | Visualizações de página      |
| `INT`      | 4     | -2.1e9 a 2.1e9                  | 0 a 4.2e9                 | Chaves primárias, IDs        |
| `BIGINT`   | 8     | -9.2e18 a 9.2e18                | 0 a 1.8e19                | Sistemas de grande escala    |

---

## exercícios `INTEGER`

<details>
<summary>Lista de Exercícios</summary>

### **Exercícios com TINYINT**

1. **Tabela de Status de Usuários**
   Crie uma tabela `usuario_status` com:
   - `id` (PK, AUTO_INCREMENT)
   - `codigo_status` (TINYINT NOT NULL)
   - `descricao` (VARCHAR(50) NULL)

2. **Tabela de Níveis de Acesso**
   Crie uma tabela `niveis_acesso` com:
   - `id` (PK, AUTO_INCREMENT)
   - `nivel` (TINYINT UNSIGNED NOT NULL)
   - `observacao` (VARCHAR(100) NULL)

3. **Tabela de Respostas de Quiz**
   Crie uma tabela `quiz_respostas` com:
   - `id` (PK, AUTO_INCREMENT)
   - `resposta_correta` (TINYINT(1) NULL)
   - `pergunta_id` (INT NOT NULL)

4. **Tabela de Configurações do Sistema**
   Crie uma tabela `configuracoes` com:
   - `id` (PK, AUTO_INCREMENT)
   - `modo_escuro` (TINYINT(1) NOT NULL)
   - `notificacoes` (TINYINT(1) NULL)

5. **Tabela de Prioridades de Tarefas**
   Crie uma tabela `tarefa_prioridades` com:
   - `id` (PK, AUTO_INCREMENT)
   - `prioridade` (TINYINT NOT NULL)
   - `detalhes` (VARCHAR(50) NULL)

---

### **Exercícios com SMALLINT**

1. **Tabela de Cidades**
   Crie uma tabela `cidades` com:
   - `id` (PK, AUTO_INCREMENT)
   - `codigo_ibge` (SMALLINT UNSIGNED NULL)
   - `habitantes` (SMALLINT UNSIGNED NOT NULL)

2. **Tabela de Salas de Aula**
   Crie uma tabela `salas` com:
   - `id` (PK, AUTO_INCREMENT)
   - `numero` (SMALLINT NOT NULL)
   - `capacidade` (SMALLINT NULL)

3. **Tabela de Produtos em Estoque**
   Crie uma tabela `estoque` com:
   - `id` (PK, AUTO_INCREMENT)
   - `quantidade` (SMALLINT NOT NULL)
   - `localizacao` (VARCHAR(20) NULL)

4. **Tabela de Pontuações**
   Crie uma tabela `pontuacoes` com:
   - `id` (PK, AUTO_INCREMENT)
   - `pontos` (SMALLINT NOT NULL)
   - `bonus` (SMALLINT NULL)

5. **Tabela de Temperaturas**
   Crie uma tabela `temperaturas` com:
   - `id` (PK, AUTO_INCREMENT)
   - `temperatura` (SMALLINT NOT NULL)
   - `observacao` (VARCHAR(30) NULL)

---

### **Exercícios com MEDIUMINT**

1. **Tabela de CEPs**
   Crie uma tabela `ceps` com:
   - `id` (PK, AUTO_INCREMENT)
   - `cep` (MEDIUMINT UNSIGNED NOT NULL)
   - `cidade` (VARCHAR(50) NULL)

2. **Tabela de Visualizações de Vídeos**
   Crie uma tabela `video_views` com:
   - `id` (PK, AUTO_INCREMENT)
   - `visualizacoes` (MEDIUMINT UNSIGNED NOT NULL)
   - `ultima_visualizacao` (DATE NULL)

3. **Tabela de Distâncias**
   Crie uma tabela `distancias` com:
   - `id` (PK, AUTO_INCREMENT)
   - `metros` (MEDIUMINT NOT NULL)
   - `referencia` (VARCHAR(40) NULL)

4. **Tabela de Vendas Mensais**
   Crie uma tabela `vendas_mensais` com:
   - `id` (PK, AUTO_INCREMENT)
   - `quantidade` (MEDIUMINT UNSIGNED NOT NULL)
   - `mes` (VARCHAR(10) NULL)

5. **Tabela de Códigos de Produtos**
   Crie uma tabela `codigos_produto` com:
   - `id` (PK, AUTO_INCREMENT)
   - `codigo` (MEDIUMINT NOT NULL)
   - `descricao` (VARCHAR(60) NULL)

---

### **Exercícios com INT**

1. **Tabela de Clientes**
   Crie uma tabela `clientes` com:
   - `id` (PK, AUTO_INCREMENT)
   - `cpf` (INT UNSIGNED NULL)
   - `idade` (INT NOT NULL)

2. **Tabela de Pedidos**
   Crie uma tabela `pedidos` com:
   - `id` (PK, AUTO_INCREMENT)
   - `numero_pedido` (INT NOT NULL)
   - `cliente_id` (INT NULL)

3. **Tabela de Matrículas**
   Crie uma tabela `matriculas` com:
   - `id` (PK, AUTO_INCREMENT)
   - `numero_matricula` (INT UNSIGNED NOT NULL)
   - `data_registro` (DATE NULL)

4. **Tabela de Faturas**
   Crie uma tabela `faturas` com:
   - `id` (PK, AUTO_INCREMENT)
   - `valor` (INT NOT NULL)
   - `observacoes` (VARCHAR(100) NULL)

5. **Tabela de IDs Externos**
   Crie uma tabela `ids_externos` com:
   - `id` (PK, AUTO_INCREMENT)
   - `id_sistema_legado` (INT NULL)
   - `tipo` (VARCHAR(20) NOT NULL)

---

### **Exercícios com BIGINT**

1. **Tabela de Transações Bancárias**
   Crie uma tabela `transacoes` com:
   - `id` (PK, AUTO_INCREMENT)
   - `valor` (BIGINT NOT NULL)
   - `codigo_autorizacao` (BIGINT UNSIGNED NULL)

2. **Tabela de Registros de Sistema**
   Crie uma tabela `logs_sistema` com:
   - `id` (PK, AUTO_INCREMENT)
   - `timestamp` (BIGINT NOT NULL)
   - `usuario` (VARCHAR(30) NULL)

3. **Tabela de IDs Globais**
   Crie uma tabela `ids_globais` com:
   - `id` (PK, AUTO_INCREMENT)
   - `uuid` (BIGINT UNSIGNED NOT NULL)
   - `origem` (VARCHAR(10) NULL)

4. **Tabela de Estatísticas**
   Crie uma tabela `estatisticas` com:
   - `id` (PK, AUTO_INCREMENT)
   - `total_acessos` (BIGINT UNSIGNED NOT NULL)
   - `ultimo_acesso` (DATETIME NULL)

5. **Tabela de Códigos de Rastreamento**
   Crie uma tabela `rastreamento` com:
   - `id` (PK, AUTO_INCREMENT)
   - `codigo` (BIGINT NOT NULL)
   - `transportadora` (VARCHAR(20) NULL)

</details>

---

## `DECIMAL` e `NUMERIC`

No MySQL, **`DECIMAL`** e **`NUMERIC`** são tipos de dados de **precisão exata** usados para valores monetários, cálculos financeiros e qualquer cenário que exija exatidão decimal. Eles armazenam valores **exatamente como são definidos**, sem arredondamentos (diferente de `FLOAT` e `DOUBLE`, que são de precisão aproximada).

### Características Comuns

| Característica               | Descrição                                                                 |
|------------------------------|---------------------------------------------------------------------------|
| **Sinonímia**                | `DECIMAL` e `NUMERIC` são **idênticos** no MySQL (podem ser usados intercambiavelmente) |
| **Precisão Exata**           | Armazenam valores exatos sem erros de arredondamento                      |
| **Sintaxe**                  | `DECIMAL(M, D)` ou `NUMERIC(M, D)`<br>- `M`: Precisão total (1-65)<br>- `D`: Casas decimais (0-30) |
| **Armazenamento**            | Variável: 4-16 bytes (depende de `M`)<br>- Ex: `DECIMAL(5,2)` = 3 bytes |
| **Uso Típico**               | Valores monetários, porcentagens, medidas críticas                       |

---

### Estrutura de Armazenamento

O MySQL armazena valores `DECIMAL` como **strings binárias**, preservando cada dígito:
- **Parte inteira**: Dígitos antes da vírgula
- **Parte decimal**: Dígitos após a vírgula
- **Sinal**: Positivo/Negativo

#### Cálculo de Bytes

| Dígitos Totais (M) | Bytes Necessários |
|---------------------|-------------------|
| 1-9                 | 4 bytes           |
| 10-18               | 7 bytes           |
| 19-27               | 10 bytes          |
| 28-36               | 13 bytes          |
| 37-45               | 16 bytes          |
| 46-65               | 20 bytes          |

---

### Definição de Precisão (M) e Escala (D)

- **`M` (Precisão)**: Número total de dígitos (ex: `123.45` tem `M=5`)
- **`D` (Escala)**: Número de dígitos decimais (ex: `123.45` tem `D=2`)

#### Regras

1. `D` deve ser ≤ `M`
2. Se `D=0`, o valor é inteiro (sem parte decimal)
3. Valores padrão:
    - `M` padrão = 10
    - `D` padrão = 0
    - Ex: `DECIMAL` = `DECIMAL(10,0)`

---

### exemplos práticos

#### Exemplo 1: DECIMAL(5,2)
```sql
CREATE TABLE produtos (
    id INT,
    preco DECIMAL(5,2)  -- 5 dígitos totais, 2 decimais (ex: 999.99)
);

INSERT INTO produtos VALUES
(1, 299.99),   -- Válido
(2, -150.50),  -- Válido (negativo)
(3, 1000.00);  -- Erro! Excede precisão (6 dígitos)
```

#### Exemplo 2: DECIMAL(10,4) para Alta Precisão
```sql
CREATE TABLE transacoes (
    id BIGINT,
    valor DECIMAL(10,4)  -- Ex: 999999.9999
);

INSERT INTO transacoes VALUES
(1, 12345.6789),     -- Válido
(2, 0.1000),         -- Válido
(3, 123456.7891);    -- Erro! Excede precisão (11 dígitos)
```

#### Exemplo 3: Sem Decimais (D=0)
```sql
CREATE TABLE estoque (
    item VARCHAR(50),
    unidades DECIMAL(6,0)  -- 6 dígitos inteiros (ex: 999999)
);

INSERT INTO estoque VALUES
('Camiseta', 100000),  -- Válido
('Calça', 1500.75);    -- Conversão para 1501 (arredondamento!)
```

---

### Comportamento de Arredondamento

- Se inserir mais decimais que `D`, o MySQL **arredonda** o valor:
    ```sql
    CREATE TABLE teste (valor DECIMAL(4,2));
    INSERT INTO teste VALUES (10.499);  -- Armazenado como 10.50
    INSERT INTO teste VALUES (10.501);  -- Armazenado como 10.50 (modo padrão)
    ```
- Use `STRICT_ALL_TABLES` para gerar erros em vez de arredondar.

---

### Casos de Uso Recomendados
1. **Sistemas financeiros**:
    ```sql
    CREATE TABLE contas (
        conta_id INT,
        saldo DECIMAL(15,2)  -- Suporta até 999.999.999.999,99
    );
    ```
2. **Impostos e porcentagens**:
    ```sql
    CREATE TABLE impostos (
        produto_id INT,
        aliquota DECIMAL(5,4)  -- Ex: 0.1750 (17.50%)
    );
    ```
3. **Medições industriais**:
    ```sql
    CREATE TABLE sensores (
        leitura_id INT,
        precisao DECIMAL(8,6)  -- Ex: 123.456789
    );
    ```

---

### Limitações Importantes

1. **Operações matemáticas**: Mais lentas que com inteiros.
2. **Armazenamento**: Consome mais espaço que `FLOAT`/`DOUBLE`.
3. **Valores padrão**: Não use valores não-inteiros como chaves primárias.
4. **Máxima precisão**: `DECIMAL(65,30)` é o limite.

---

### Boas Práticas
1. **Defina precisão explicitamente**:
    ```sql
    -- Ruim
    total DECIMAL

    -- Bom
    total DECIMAL(10,2)
    ```
2. **Use `UNSIGNED` para valores não negativos**:
    ```sql
    desconto DECIMAL(5,2) UNSIGNED  -- Não aceita negativos
    ```
3. **Evite arredondamentos indesejados**:
    ```sql
    SET SESSION sql_mode = 'STRICT_ALL_TABLES';  -- Gera erro em overflow
    ```
4. **Prefira `DECIMAL` sobre `FLOAT` para dinheiro**:
    ```sql
    -- Perigoso
    preco FLOAT

    -- Seguro
    preco DECIMAL(10,2)
    ```

---

### Resumo Final
| Parâmetro          | DECIMAL/NUMERIC                                     |
|--------------------|-----------------------------------------------------|
| **Precisão**       | Exata                                               |
| **Faixa Típica**   | Até 65 dígitos (30 decimais)                        |
| **Armazenamento**  | Eficiente para precisão definida                    |
| **Overflow**       | Erro ou arredondamento (depende do modo SQL)        |
| **Melhor Para**    | Dinheiro, onde exatidão é essencial                 |

```sql
-- Exemplo completo
CREATE TABLE financeiro (
    id BIGINT AUTO_INCREMENT,
    valor DECIMAL(15,2) UNSIGNED,  -- Até 999.999.999.999,99
    taxa DECIMAL(5,4),             -- Ex: 0.0250 (2.50%)
    saldo DECIMAL(20,2),           -- Para grandes corporações
    PRIMARY KEY (id)
);
```
