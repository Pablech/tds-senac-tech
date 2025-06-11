# Banco de Dados

Um **banco de dados (BD)** é um sistema organizado para armazenar, gerenciar e recuperar informações de forma eficiente. Ele funciona como um "repositório digital" estruturado, permitindo que dados sejam persistidos, consultados, atualizados e protegidos.

## o que é um banco de dados?

1. **estrutura organizada**:
    - dados são armazenados em formatos padronizados (tabelas, documentos, grafos, etc.).
    - exemplo: em um bd **relacional**, dados são organizados em **tabelas** com linhas (registros) e colunas (atributos).
        *tabela "alunos"*:
        | id  | nome     | email               | telefone      |
        |-----|----------|---------------------|---------------|
        | 1   | ana silva| ana@email.com      | (11) 9999-8888|
        | 2   | carlos   | carlos@provedor.com | (21) 7777-1234|

2. **gerenciado por um sgbd**:
    - um **sistema de gerenciamento de banco de dados (sgbd)** como mysql, postgresql, oracle ou mongodb é o software que controla o bd.
    - responsável por: segurança, integridade, backup, e comunicação com aplicações.

3. **depende de um modelo de dados**:
    - **relacional**: dados em tabelas interligadas por chaves (sql).
    - **nosql**: flexível para dados não estruturados (documentos json, grafos, chave-valor).
    - **hierárquico** ou **orientado a objetos**: menos comuns, usados em casos específicos.

### para que serve? principais objetivos

1. **armazenamento persistente**:
    - mantém dados mesmo após desligar o sistema (diferente da memória ram).

2. **recuperação rápida**:
    - permite buscas complexas em milissegundos usando linguagens como **sql** (ex.: `select * from alunos where nome = 'ana'`).

3. **integridade e consistência**:
    - regras evitam dados inválidos (ex.: email único, data de nascimento futura bloqueada).
    - transações garantem operações atômicas (ex.: débito em uma conta + crédito em outra).

4. **controle de acesso e segurança**:
    - usuários têm permissões específicas (ex.: vendedor só acessa clientes da sua região).
    - criptografia e backups protegem contra perdas ou ataques.

5. **redução de redundância**:
    - centraliza informações, evitando duplicação (ex.: um cadastro de cliente usado em vendas, suporte e marketing).

6. **suporte a concorrência**:
    - múltiplos usuários acessam/modificam dados simultaneamente sem conflitos.

7. **Escalabilidade**:
    - Lida desde pequenos apps (SQLite) até sistemas globais (Facebook usa bancos distribuídos).

### aplicações práticas

- **E-commerce**: Estoque, pedidos, perfil de clientes.
- **Redes Sociais**: Posts, amigos, mensagens (NoSQL para alta velocidade).
- **Saúde**: Prontuários eletrônicos com histórico de pacientes.
- **Finanças**: Transações bancárias (ex.: controle rigoroso via transações ACID).
- **IoT**: Armazena milhões de dados de sensores por segundo.

### componentes chave

- **Esquema (Schema)**: "Plantilha" que define a estrutura (ex.: campos da tabela `Clientes`).
- **Índices**: Agilizam buscas (como um índice de livro).
- **Stored Procedures**: Códigos armazenados no BD (ex.: calcular imposto automaticamente).

### vantagens vs. arquivos simples

| **Critério**       | **Banco de Dados**                     | **Arquivo TXT/Planilha**       |
|---------------------|----------------------------------------|--------------------------------|
| **Busca**           | Consultas complexas em milissegundos   | Leitura sequencial lenta       |
| **Escala**          | Suporta terabytes e milhões de usuários | Travam com grandes volumes    |
| **Segurança**       | Controle granular de acesso            | Sem proteção avançada         |
| **Concorrência**    | Múltiplos acessos sem corromper dados  | Risco alto de sobrescrita     |

### exemplo de funcionamento

1. **Aplicação** (site de compras) envia comando:
    ```sql
    INSERT INTO Pedidos (Cliente_ID, Produto, Quantidade) VALUES (1, 'Smartphone', 2);
    ```
2. **SGBD** valida os dados, atualiza tabelas relacionadas (ex.: reduz estoque) e salva em disco.
3. **Usuário** recebe confirmação, e dados ficam disponíveis para relatórios futuros.

## bancos de dados relacional vs. nosql

### 1. banco de dados relacional (sql)

**O que é?**
Organiza dados em **tabelas** (linhas e colunas) com relacionamentos definidos por chaves primárias/estrangeiras. Segue o modelo ACID (*Atomicidade*, *Consistência*, *Isolamento*, *Durabilidade*).

**Características:**
- **Esquema rígido:** Estrutura fixa pré-definida (ex.: tipo de dados, relações).
- **SQL:** Linguagem padrão para consultas.
- **Integridade:** Garante precisão (ex.: não permite e-mails duplicados se definido como `UNIQUE`).
- **Exemplos de SGBDs:** PostgreSQL, MySQL, Oracle, SQL Server.

**Quando usar?**
- Dados estruturados com relações complexas (ex.: finanças, ERP).
- Quando **ACID** é crítico (ex.: transações bancárias: débito/crédito devem ser atômicos).
- Aplicações com consultas complexas (JOINs entre múltiplas tabelas).

**Empresas famosas:**
- **MySQL:** Facebook (armazena dados de usuários e relacionamentos).
- **PostgreSQL:** Instagram (gestão de conteúdos e metadados).
- **Oracle:** Bancos como Itaú (sistemas transacionais).

### 2. banco de dados nosql

**O que é?**
Armazena dados **não estruturados/semiestruturados** com esquema flexível. Foca em escalabilidade horizontal e desempenho.

**Tipos principais:**
| Tipo          | Descrição                          | Exemplos de SGBDs       |
|---------------|------------------------------------|-------------------------|
| **Documentos**| Dados em JSON/XML (ex.: perfil de usuário) | MongoDB, Couchbase |
| **Chave-Valor**| Pares simples (chave → valor)      | Redis, DynamoDB       |
| **Colunar**   | Otimizado para consultas em colunas | Cassandra, HBase     |
| **Grafos**    | Foca em relações entre entidades   | Neo4j, Amazon Neptune |

**Quando usar?**
- Dados dinâmicos ou sem esquema fixo (ex.: sensores IoT, logs).
- Alta escalabilidade (ex.: apps com milhões de usuários).
- **Velocidade > Consistência imediata** (ex.: redes sociais).
- Big Data e análises em tempo real.

**Empresas famosas:**
- **MongoDB (Documentos):** eBay (catálogo de produtos), Forbes (gestão de conteúdo).
- **Cassandra (Colunar):** Netflix (recomendações e catálogo), Uber (dados de viagens).
- **Redis (Chave-Valor):** Twitter (timelines em tempo real), Pinterest (cache de sessões).
- **Neo4j (Grafos):** LinkedIn (recomendações de conexões).

## comparação direta: quando escolher cada um

#### cenário 1: sistema bancário
- **Relacional (SQL):**
    - Transações precisam de **ACID**. Exemplo: transferência entre contas deve ser atômica.
    - Consultas complexas (ex.: extrato com JOIN entre tabelas `Contas`, `Transações`, `Clientes`).

#### cenário 2: rede social (ex.: feed de notícias)
- **NoSQL (Documentos/Colunar):**
    - Dados semiestruturados (ex.: posts com formatos variados: texto, vídeo, hashtags).
    - Escalabilidade horizontal para milhões de acessos simultâneos.
    - Cassandra (Netflix) armazena catálogos com alta velocidade de escrita/leitura.

#### Cenário 3: Carrinho de Compras em E-commerce
- **NoSQL (Chave-Valor):**
    - **Redis** armazena sessões temporárias de usuários com baixa latência.
    - Alta concorrência: atualizações rápidas do carrinho sem travar o banco.

#### Cenário 4: Sistema de Recomendações
- **NoSQL (Grafos):**
    - **Neo4j** mapeia relações complexas: *"Usuários que viram X também compraram Y"*.
    - Consulta eficiente de caminhos (ex.: amigos de amigos).

#### Cenário 5: ERP Empresarial
- **Relacional (SQL):**
    - Dados altamente estruturados (estoque, fornecedores, notas fiscais).
    - Relatórios com múltiplos JOINs (ex.: faturamento por filial/mês).

### resumo: vantagens e desvantagens

| **Critério**         | **Relacional (SQL)**                  | **NoSQL**                     |
|----------------------|---------------------------------------|-------------------------------|
| **Esquema**          | Rígido (exige planejamento)           | Flexível (adaptável)          |
| **Escalabilidade**   | Vertical (hardware mais potente)      | Horizontal (+ servidores)     |
| **Consistência**     | Forte (ACID)                          | Eventual (BASE)               |
| **Velocidade**       | Consultas complexas                   | Alta vazão (leitura/escrita)  |
| **Melhor para**      | Transações críticas, dados estruturados | Big Data, escalabilidade      |

## história do sql: a linguagem que revolucionou os dados

O SQL (*Structured Query Language*) é a linguagem padrão para gerenciar bancos de dados relacionais. Sua história é marcada por inovações que moldaram a computação moderna.

### 1. anos 1970: as origens

- **1970**: O cientista **Edgar F. Codd** (IBM) publica o artigo *"A Relational Model of Data for Large Shared Data Banks"*, introduzindo o **modelo relacional**;
- **1974**: **Donald Chamberlin** e **Raymond Boyce** (IBM) criam a primeira versão do SQL, inicialmente chamada de **SEQUEL** (*Structured English Query Language*), para operar o protótipo de BD relacional **System R**;
- **Objetivo**: Substituir linguagens complexas por uma sintaxe acessível, baseada em álgebra relacional;

### 2. anos 1980: padronização e mercado

- **1979**: A *Oracle Corporation* (fundada por Larry Ellison) lança o **Oracle V2**, o primeiro banco de dados relacional comercial baseado em SQL.
- **1981-1986**: Surgem concorrentes:
    - **IBM DB2** (1983)
    - **Microsoft SQL Server** (1989)
    - **PostgreSQL** (1986, como projeto acadêmico *Ingres*)
- **1986**: O SQL torna-se padrão internacional (**ANSI SQL** : American National Standards Institute Structured Query Language), consolidando sua sintaxe.

### 3. anos 1990: dominância global

- **MySQL** (1995): Criado por Michael Widenius, torna-se o BD **open-source** mais popular para aplicações web.
- **PostgreSQL** (1996): Evolui do projeto *Ingres* com suporte a tipos de dados complexos.
- **Adoção em massa**: Grandes empresas (bancos, varejo) migram de sistemas hierárquicos para SQL.

### 4. anos 2000-presente: expansão e adaptação

- **Desafios do Big Data**: Surgem bancos **NoSQL** (MongoDB, Cassandra), mas o SQL mantém relevância.
- **SQL em ambientes híbridos**:
    - *Ferramentas como Amazon Redshift, Google BigQuery e Snowflake usam SQL para análise de grandes volumes*.
- **Novos padrões**:
    - **SQL:1999** (suporte a JSON, programação procedural).
    - **SQL:2016** (machine learning e grafos).

## curiosidades históricas

- **Por que "SEQUEL" virou "SQL"?**
Um problema de marca registrada forçou a mudança para "SQL" (pronuncia-se "és-kiú-el").

- **A Guerra dos Bancos de Dados**:
Nos anos 1980, a Oracle venceu a IBM ao comercializar agressivamente o SQL para governos e empresas, mesmo sem ter um produto pronto.

- **Linus Torvalds e o PostgreSQL**:
O criador do Linux usou o PostgreSQL para gerenciar o controle de versões do kernel antes do Git existir!

## impacto do sql na tecnologia

| **Área**         | **Contribuição do SQL**                                                                 |
|------------------|----------------------------------------------------------------------------------------|
| **Web**          | Sites como Facebook (MySQL) e Airbnb (PostgreSQL) dependem de SQL para operar.          |
| **Ciência de Dados** | SQL é a linguagem #1 para extrair e pré-processar dados (antes de Python/R).         |
| **Nuvem**        | Serviços como AWS Aurora e Azure SQL Database oferecem SQL como serviço gerenciado.    |
| **Mobile**       | Bancos locais (SQLite) estão em todos os smartphones (Android/iOS).                    |

## sql vs. outras linguagens

```sql
-- Exemplo de SQL (simplicidade):
SELECT nome, salário FROM funcionários WHERE departamento = 'TI' ORDER BY salário DESC;
```
- **Vantagem**: Sintaxe intuitiva (próxima do inglês), diferente de linguagens procedurais como COBOL.
- **Flexibilidade**: Funciona em qualquer BD relacional (com pequenas variações de dialeto).

## o futuro do sql

- **SQL + NoSQL**: Bancos como **PostgreSQL** agora aceitam JSON (NoSQL) e consultas SQL.
- **SQL em streaming**: Ferramentas como **Apache Flink** usam SQL para processar dados em tempo real.
- **Inteligência Artificial**: Bancos modernos (Oracle, Microsoft) integram modelos de ML via comandos SQL.

## sgbd: o "cérebro" que gerencia bancos de dados

Um **Sistema de Gerenciamento de Banco de Dados (SGBD)** é o software responsável por **controlar, organizar e proteger** os dados armazenados em um banco de dados. Ele age como um **intermediário** entre o banco de dados físico (arquivos em disco) e os usuários/aplicações.

### principais componentes de um sgbd

| Componente               | Função                                                                 | Exemplo Prático                                  |
|--------------------------|---------------------------------------|--------------------------------------------------|
| **Motor de Armazenamento** | Gerencia leitura/gravação em disco  | InnoDB (MySQL), WAL (PostgreSQL)                 |
| **Processador de Consultas** | Interpreta e executa comandos (ex: SQL)  | Otimiza `SELECT JOIN` para resposta rápida       |
| **Gerenciador de Transações** | Garante ACID (atomicidade, consistência, etc.)  | Rollback se falhar em `UPDATE Saldo + DELETE Registro` |
| **Gerenciador de Concorrência** | Controla acesso simultâneo (ex: bloqueios)  | Evita que 2 usuários editem o mesmo pedido       |
| **Gerenciador de Índices**  | Acelera buscas (ex: índice em coluna "CPF")  | Índice B-tree para `WHERE id = 100` em 1ms       |
| **Mecanismo de Segurança**  | Autentica usuários e define permissões  | "Apenas RH pode ver tabela `Salários`"           |

### para que serve um sgbd?

1. **Abstração de Dados**
    - Esconde complexidade do armazenamento físico: você usa `SELECT * FROM clientes`, não lê bytes brutos em disco.

2. **Integridade dos Dados**
    - Aplica regras: `CHECK (idade >= 18)`, chaves estrangeiras, `UNIQUE`.
    - *Exemplo:* Bloqueia e-mail duplicado mesmo se 2 usuários tentarem registrar juntos.

3. **Controle de Concorrência**
    - Gerencia *locks* (bloqueios):
        - **Lock otimista:** Versiona dados (Git-like).
        - **Lock pessimista:** Bloqueia linha durante edição.

4. **Recuperação de Falhas**
    - Logs de transações (*Write-Ahead Logging*): Recupera dados após queda de energia.
    - *Exemplo:* PostgreSQL usa WAL para reconstruir o BD até o último segundo antes do crash.

5. **Backup e Replicação**
    - Cria cópias automáticas e sincroniza servidores secundários (ex: réplica na AWS).

### tipos de sgbds

| Tipo                | Características                                         | Exemplos de Software        |
|---------------------|--------------------------------------------------------|-----------------------------|
| **Relacional (SQL)**  | Esquema rígido, ACID, SQL                               | PostgreSQL, MySQL, Oracle   |
| **NoSQL**           | Esquema flexível, escalabilidade horizontal            | MongoDB, Cassandra, Redis   |
| **Orientado a Objetos** | Armazena objetos (classes, herança)                   | db4o, Versant               |
| **Em Memória**      | Dados na RAM (ultra-rápido, volátil)                   | Redis, MemSQL               |

### exemplos práticos de uso

#### Cenário 1: E-commerce (PostgreSQL como SGBD)
- **Transação:**
    ```sql
    BEGIN;
    UPDATE estoque SET quantidade = quantidade - 1 WHERE produto_id = 305;
    INSERT INTO pedidos (cliente_id, produto_id) VALUES (145, 305);
    COMMIT; -- Ou ROLLBACK se falhar
    ```
- **Papel do SGBD:**
    - Garante que estoque seja atualizado **e** o pedido criado (atomicidade).
    - Índices aceleram busca por `produto_id`.

#### Cenário 2: App de Mensagens (MongoDB como SGBD)
- **Operação:**
    ```javascript
    db.mensagens.insertOne({
        de: "userA",
        para: "userB",
        texto: "Olá!",
        timestamp: new Date()
    });
    ```
- **Papel do SGBD:**
    - Armazena JSON flexível (sem esquema fixo).
    - Replica dados para 3 servidores automaticamente.

### sgbds vs. bancos de dados: a diferença

| **Banco de Dados (BD)**       | **SGBD**                                  |
|-------------------------------|-------------------------------------------|
| Coleção de dados armazenados  | **Software** que gerencia esses dados     |
| Ex: Arquivo `clientes.db`     | Ex: Programa PostgreSQL que lê/edita o arquivo |

### Curiosidades Técnicas

- **MySQL vs. MariaDB**: MariaDB é um *fork* do MySQL (criado após compra pela Oracle).
- **SQLite**: SGBD embutido (sem servidor) usado em Android, iOS e navegadores.
- **Cloud SGBDs**: Serviços gerenciados como **Amazon RDS** (SQL) e **Azure Cosmos DB** (NoSQL).

### Por Que SGBDs São Essenciais?
Imagine um banco sem SGBD:
- Dados corrompidos se o sistema travar durante uma transferência.
- Busca lenta em 10 milhões de registros.
- Vazamento de dados sensíveis por falta de permissões.

> **Em resumo**: Um SGBD transforma um simples repositório de dados em um sistema **confiável, rápido e seguro**. É o alicerce de qualquer aplicação crítica.
