# PostgreSQL

PostgreSQL: O Gigante dos Bancos de Dados Relacionais de Código Aberto 🐘

## o que é postgresql?

PostgreSQL (também chamado de **Postgres**) é um sistema gerenciador de banco de dados relacional (SGBD) de código aberto, conhecido por sua **robustez, confiabilidade e conformidade com padrões SQL**. Diferente de soluções como MySQL, o PostgreSQL é **orientado a objetos** e suporta recursos avançados como:
- Tipos de dados complexos (JSON, XML, geometria com PostGIS).
- Transações ACID (Atomicidade, Consistência, Isolamento, Durabilidade).
- Controle de concorrência multiversão (MVCC).
- Extensibilidade via linguagens (Python, Perl, etc.).

## história: de projeto acadêmico a líder global

1. **Anos 1980: O Nascimento**
    - Criado por **Michael Stonebraker** na Universidade de Berkeley (EUA) como sucessor do banco **Ingres**.
    - Nome original: **POSTGRES** (*Post-Ingres*), focado em orientação a objetos.

2. **1994: A Revolução SQL**
    - Adoção da linguagem SQL (substituindo a linguagem QUEL).
    - Renomeado para **PostgreSQL** para refletir o suporte ao padrão SQL.

3. **1996: Código Aberto**
    - Liberado sob licença **BSD** (uma das mais permissivas), permitindo uso comercial sem restrições.

4. **Anos 2000: Consolidação**
    - Versão 7.1 (2001) introduziu *write-ahead logging* (WAL), crucial para recuperação de falhas.
    - Adoção em massa por empresas como **Apple, Spotify e Reddit**.

5. **Atualidade**
    - Versão estável: **PostgreSQL 16** (2023).
    - Considerado o SGBD de código aberto mais avançado do mundo.

## curiosidades marcantes

1. **O Mascote Elefante** 🐘
    - Simboliza **memória forte e confiabilidade** (elefantes nunca esquecem!).
    - Criado por **Simon Riggs** em 2006, baseado em um brinquedo de sua filha.

2. **NASA e PostgreSQL** 🚀
    - Usado para armazenar dados de telemetria de missões espaciais.
    - A extensão **PostGIS** (para dados geográficos) é padrão em projetos de geolocalização.

3. **"A Baleia Azul dos Bancos de Dados"**
    - Referência à sua capacidade de lidar com **cargas massivas** (ex: bancos de 50+ TB).
    - Lidera o ranking **DB-Engines** como o SGBD mais popular entre os *open-source* desde 2017.

4. **Concorrência com Oracle e SQL Server**
    - Recursos como *Table Partitioning* e *Parallel Query* foram inspirados em soluções empresariais caras.
    - Empresas migram para o Postgres para economizar **milhões em licenças**.

5. **Fatores "Nerd"** 💡
    - Suporta **JSON melhor que muitos bancos NoSQL** (ex: consultas JSONB com índice).
    - Permite criar **tipos de dados customizados** (ex: moedas, coordenadas astronômicas).
    - Único SGBD com suporte nativo a **lógica fuzzy** (extensão `pg_trgm`).

6. **Cultura da Comunidade**
    - **Não há uma empresa por trás**: desenvolvido por uma comunidade global de > 1.000 colaboradores.
    - Eventos como **PGConf** reúnem especialistas de 50+ países anualmente.

## por que postgresql domina?**

| Característica               | Impacto                                                                 |
|------------------------------|-------------------------------------------------------------------------|
| **Conformidade com SQL**     | Implementa 160+ dos 179 recursos do padrão SQL:2023 (recordista mundial). |
| **Extensibilidade**          | 50+ extensões oficiais (ex: PostGIS, TimescaleDB para dados temporais). |
| **Resiliência**              | Recuperação automática após falhas (zero downtime em configurações HA). |
| **Ecosistema**               | Ferramentas como pgAdmin, pgBackRest, e Bucardo para alta disponibilidade. |

---

> **"PostgreSQL é como um elefante: poderoso, confiável, e surpreendentemente ágil quando necessário."**
> — *Bruce Momjian (Co-fundador do PostgreSQL Global Development Group)*

Seu legado combina **solidez acadêmica** com **inovação comunitária**, tornando-o a escolha definitiva para aplicações críticas.

---

## postgresql - instalação sem direitos de administrador no windows

**Contexto:**
Em ambientes corporativos, é comum que desenvolvedores não tenham permissões de administrador para instalar softwares. No entanto, se você deseja explorar o PostgreSQL por conta própria, é possível configurá-lo manualmente no Windows **sem precisar de acesso de administrador**.

Este guia passo a passo mostra como instalar o PostgreSQL, inicializar o banco de dados, utilizar o `psql`, e até mesmo configurar o **pgAdmin4**, tudo isso sem precisar de privilégios administrativos.

### Passo 1: Baixar Binários do PostgreSQL

Ao invés do instalador padrão, baixe apenas os arquivos binários:

1. Acesse: [https://www.enterprisedb.com/download-postgresql-binaries](https://www.enterprisedb.com/download-postgresql-binaries).
2. Selecione a versão mais recente (ex: PostgreSQL 16) em formato ZIP.
3. Salve o arquivo em um diretório com acesso total (ex: `D:\PostgreSQL`).

> **Nota:** Versões descontinuadas (ex: PostgreSQL 13) devem ser evitadas por questões de segurança.

### Passo 2: Extrair e Organizar os Arquivos

Após o download :

1. Crie uma pasta dedicada (ex: `D:\PostgreSQL\pgsql`).
2. Extraia o conteúdo do ZIP diretamente nela.

### Passo 3: Configurar Variáveis de Ambiente
1. Pressione `Win + R`, digite `sysdm.cpl` **Configurações avançadas do sistema**.
2. Na aba **Avançado**, clique em **Variáveis de Ambiente** → Seção "Variáveis do usuário".
3. Edite a variável `Path` do seu usuário e adicione:
    ```
    D:\PostgreSQL\pgsql\bin
    ```
4. Valide com `echo %Path%` no Prompt de Comando.

### Passo 4: Verificar a Instalação

Abra o terminal (cmd ou PowerShell) e digite :

```bash
postgres -V  # Versão do servidor
psql -V      # Versão do cliente
```

### Passo 5: Inicializar o Banco de Dados

Crie o diretório de dados e inicialize o banco com :

```bash
initdb -D D:\PostgreSQL\pgsql\data -U postgres -E utf8 -A scram-sha-256 -W
```

| Flag               | Descrição dos Parâmetros                                                  |
|--------------------|---------------------------------------------------------------------------|
| `-D`               | Diretório de armazenamento dos dados (crie a pasta `data` manualmente se necessário). |
| `-U postgres`      | Define o superusuário padrão.                                             |
| `-E utf8`          | Codificação padrão do banco.                                              |
| `-A scram-sha-256` | Método de criptografia da senha (recomendado).                            |
| `-W`               | Solicitará a senha do superusuário durante a execução.                    |

> **Atenção:** O diretório `data` deve ser criado antes da execução.

### Passo 6: Iniciar o Servidor PostgreSQL

Inicie o banco com o seguinte comando :

```bash
pg_ctl -D D:\PostgreSQL\pgsql\data -l D:\PostgreSQL\pgsql\logfile start
```

Esse comando inicia o servidor e gera um log no arquivo `logfile`.

- Verifique se o servidor está ativo com:
    ```bash
    pg_isready -d postgres
    ```

### Passo 7: Configurar pgAdmin (Opcional)

1. Acesse `D:\PostgreSQL\pgsql\pgAdmin 4\runtime` e execute `pgadmin4.exe`.
2. A interface abrirá no navegador. Defina uma **senha mestra**.
3. Adicione um novo servidor:
    - **Nome:** `LocalServer`
    - **Host:** `localhost`
    - **Porta:** `5432`
    - **Usuário/Senha:** Credenciais definidas no `initdb`.

### Passo 8: Criar um Banco de Dados

Com o servidor ativo, crie um banco de dados de teste.

Via **pgAdmin**:
- Clique com botão direito em **Databases** → **Create** → `Database` → Nomeie (ex: `escola`).

Via **Prompt de Comando**:
```bash
psql -U postgres -c "CREATE DATABASE escola;"
```

### Passo 9: Parar o Servidor

Quando quiser parar o banco de dados :

```bash
pg_ctl -D D:\PostgreSQL\pgsql\data stop
```

## configurar caminhos binários no pgadmin (backup/restore)

Para utilizar recursos como backup, restauração e atualização no pgAdmin :

1. No pgAdmin: **File** → **Preferences** → **Paths** → **Binary Paths**.
2. Selecione a versão do PostgreSQL e insira:
    ```
    D:\PostgreSQL\pgsql\bin
    ```

Com este guia, você tem um ambiente PostgreSQL funcional no Windows **sem direitos de administrador**, incluindo:
- Controle total sobre inicialização/parada do servidor.
- Capacidade de criar bancos de dados e gerenciar usuários.
- Integração com pgAdmin para operações avançadas (backup, restore).

**Vantagens:**
- Ideal para ambientes corporativos restritivos.
- Portabilidade: Todo o ambiente pode ser movido para outro diretório ou máquina.
- Compatível com versões recentes do PostgreSQL (16+).

> **Dica:** Para persistência de dados, mantenha backups regulares do diretório `data`.
