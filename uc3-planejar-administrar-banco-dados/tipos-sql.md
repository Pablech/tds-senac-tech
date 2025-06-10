# tipos de sql

Embora o SQL seja uma linguagem, ela é dividida em tipos de acordo com a finalidade dos comandos.

## DDL (Data Definition Language)

**Finalidade:** Definir/modificar a **estrutura** do banco de dados (esquema).
**Comandos Principais:**
- `CREATE`: Cria objetos (tabelas, índices, views).
    ```sql
    CREATE TABLE Clientes (
        id INT PRIMARY KEY,
        nome VARCHAR(50) NOT NULL
    );
    ```
- `ALTER`: Modifica objetos existentes.
    ```sql
    ALTER TABLE Clientes ADD email VARCHAR(100);
    ```
- `DROP`: Exclui objetos.
    ```sql
    DROP TABLE Clientes;
    ```
- `TRUNCATE`: Remove todos os dados de uma tabela (mas mantém a estrutura).
    ```sql
    TRUNCATE TABLE Logs; -- Mais rápido que DELETE
    ```

**Características:**
- Operações **auto-commit** (não podem ser desfeitas com `ROLLBACK`).
- Afeta o **catálogo do SGBD** (metadados).

---

## DML (Data Manipulation Language)

**Finalidade:** Manipular **dados** dentro das tabelas (CRUD: Create, Read, Update, Delete).
**Comandos Principais:**
- `INSERT`: Adiciona registros.
    ```sql
    INSERT INTO Clientes (id, nome) VALUES (1, 'Ana');
    ```
- `UPDATE`: Altera registros.
    ```sql
    UPDATE Clientes SET nome = 'Ana Silva' WHERE id = 1;
    ```
- `DELETE`: Remove registros.
    ```sql
    DELETE FROM Clientes WHERE id = 1;
    ```
- `MERGE`: Combina inserção/atualização (UPSERT).

**Características:**
- Requer `COMMIT` para confirmar alterações (ou `ROLLBACK` para desfazer).
- Pode ser filtrada com `WHERE`.

---

## DQL (Data Query Language)

**Finalidade:** **Consultar** dados (operacionalização da leitura).
**Comando Principal:**
- `SELECT`: Recupera dados de uma ou mais tabelas.
    ```sql
    SELECT nome, email FROM Clientes WHERE id = 1;
    ```

**Cláusulas Associadas:**
- `JOIN`: Combina tabelas.
- `GROUP BY`: Agrupa resultados.
- `HAVING`: Filtra grupos.
- `ORDER BY`: Ordena resultados.

---

## DCL (Data Control Language)

**Finalidade:** Controlar **acesso e permissões** aos dados.
**Comandos Principais:**
- `GRANT`: Concede privilégios.
    ```sql
    GRANT SELECT, INSERT ON Clientes TO usuario_x;
    ```
- `REVOKE`: Revoga privilégios.
    ```sql
    REVOKE DELETE ON Clientes FROM usuario_x;
    ```
**Tipos de Permissões:**
- `SELECT`, `INSERT`, `UPDATE`, `DELETE`, `ALL PRIVILEGES`.

---

## TCL (Transaction Control Language)

**Finalidade:** Gerenciar **transações** (garantindo ACID).
**Comandos Principais:**
- `COMMIT`: Confirma alterações permanentemente.
    ```sql
    UPDATE Contas SET saldo = saldo - 100 WHERE id = 1;
    COMMIT; -- Salva no disco
    ```
- `ROLLBACK`: Desfaz alterações pendentes.
    ```sql
    DELETE FROM Pedidos WHERE status = 'pendente';
    ROLLBACK; -- Cancela a operação
    ```
- `SAVEPOINT`: Cria ponto de restauração parcial.
    ```sql
    SAVEPOINT ponto1;
    INSERT INTO Logs (mensagem) VALUES ('Teste');
    ROLLBACK TO ponto1; -- Volta ao estado após SAVEPOINT
    ```

> Também pode ser chamada de DTL (Data Transaction Language), embora não seja correto.
> Isso provavelmente foi adotado para se manter as siglas parecidas.

---

### **Resumo Visual**
| **Categoria** | Sigla       | Função                          | Comandos Chave               |
|---------------|-------------|---------------------------------|------------------------------|
| Definição     | **DDL**     | Estrutura do BD                 | `CREATE`, `ALTER`, `DROP`    |
| Manipulação   | **DML**     | Dados (CRUD)                    | `INSERT`, `UPDATE`, `DELETE` |
| Consulta      | **DQL**     | Leitura de dados                | `SELECT`                     |
| Controle      | **DCL**     | Permissões de acesso            | `GRANT`, `REVOKE`            |
| Transações    | **TCL**     | Controle de transações          | `COMMIT`, `ROLLBACK`         |

---

### **Fluxo de Uso no SQL**
1. **DDL** para criar tabelas:
    ```sql
    CREATE TABLE Produtos (...);
    ```
2. **DCL** para dar acesso:
    ```sql
    GRANT INSERT ON Produtos TO vendedores;
    ```
3. **DML** para inserir dados:
    ```sql
    INSERT INTO Produtos (...) VALUES (...);
    ```
4. **TCL** para confirmar:
    ```sql
    COMMIT;
    ```
5. **DQL** para consultar:
    ```sql
    SELECT * FROM Produtos WHERE preço > 100;
    ```

---

### **Importância Prática**
- **Sem DDL**: Não há onde armazenar dados.
- **Sem DML**: Dados estáticos (sem atualizações).
- **Sem TCL**: Risco de inconsistência (ex.: transferência bancária falha).
- **Sem DCL**: Segurança comprometida (qualquer usuário pode apagar tabelas!).
