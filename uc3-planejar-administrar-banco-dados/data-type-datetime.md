# data type datetime

## `DATE`

### Características:
- Armazena **apenas datas** (sem informação de hora)
- Formato: `YYYY-MM-DD`
- Faixa permitida: `1000-01-01` a `9999-12-31`
- Ocupa **3 bytes** de armazenamento

### Exemplo de uso:
```sql
CREATE TABLE eventos (
    id INT,
    data_evento DATE
);

INSERT INTO eventos VALUES (1, '2024-05-15');
```

### Funções úteis:
```sql
SELECT CURDATE(); -- Retorna a data atual
SELECT DAY('2024-05-15'); -- Extrai o dia (retorna 15)
SELECT DATE_FORMAT(data_evento, '%d/%m/%Y'); -- Formata a data (15/05/2024)
```

## `TIME`

### Características:
- Armazena **apenas horas** (sem informação de data)
- Formato: `HH:MM:SS` ou `HHH:MM:SS` para intervalos maiores
- Faixa permitida: `-838:59:59` a `838:59:59`
- Ocupa **3 bytes** de armazenamento
- Pode representar tempo decorrido ou hora do dia

### Exemplo de uso:
```sql
CREATE TABLE tarefas (
    id INT,
    duracao TIME,
    horario_inicio TIME
);

INSERT INTO tarefas VALUES (1, '02:30:00', '09:15:00');
```

### Funções úteis:
```sql
SELECT CURTIME(); -- Retorna a hora atual
SELECT SEC_TO_TIME(3600); -- Converte segundos em TIME (01:00:00)
SELECT TIME_FORMAT(duracao, '%Hh%i'); -- Formata a hora (02h30)
```

## `DATETIME`

### Características:
- Armazena **data e hora combinadas**
- Formato: `YYYY-MM-DD HH:MM:SS`
- Faixa permitida: `1000-01-01 00:00:00` a `9999-12-31 23:59:59`
- Ocupa **8 bytes** de armazenamento
- **Não é afetado por timezone** (armazena o valor literal inserido)

### Exemplo de uso:
```sql
CREATE TABLE pedidos (
    id INT,
    data_hora DATETIME
);

INSERT INTO pedidos VALUES (1, '2024-05-15 14:30:00');
```

### Funções úteis:
```sql
SELECT NOW(); -- Retorna data e hora atuais
SELECT DATE(data_hora); -- Extrai apenas a parte DATE
SELECT TIME(data_hora); -- Extrai apenas a parte TIME
```

## `TIMESTAMP`

### Características:
- Também armazena **data e hora combinadas**
- Formato: `YYYY-MM-DD HH:MM:SS`
- Faixa permitida: `1970-01-01 00:00:01` UTC a `2038-01-19 03:14:07` UTC
- Ocupa **4 bytes** de armazenamento
- **Ajusta automaticamente para o fuso horário** da conexão
- Armazena o valor como número de segundos desde a época Unix (01/01/1970)
- Atualização automática possível com `DEFAULT CURRENT_TIMESTAMP` e `ON UPDATE CURRENT_TIMESTAMP`

### Exemplo de uso:
```sql
CREATE TABLE logs (
    id INT,
    registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO logs (id) VALUES (1); -- Colunas de timestamp são preenchidas automaticamente
```

### Funções úteis:
```sql
SELECT UNIX_TIMESTAMP(); -- Retorna o timestamp atual
SELECT FROM_UNIXTIME(1684146600); -- Converte timestamp Unix para formato legível
```

## Comparação Detalhada

| Característica       | DATE       | TIME        | DATETIME            | TIMESTAMP           |
|----------------------|------------|-------------|---------------------|---------------------|
| Armazena             | Data       | Hora        | Data + Hora         | Data + Hora         |
| Faixa                | 1000-9999  | -838:59:59  | 1000-01-01 00:00:00 | 1970-01-01 00:00:01 |
|                      |            | to 838:59:59| to 9999-12-31 23:59:59| to 2038-01-19 03:14:07|
| Tamanho (bytes)      | 3          | 3           | 8                   | 4                   |
| Timezone             | Não        | Não         | Não                 | Sim (converte)      |
| Atualização automática | Não     | Não         | Não                 | Sim (opcional)      |
| Armazenamento interno| Data pura  | Tempo puro  | Data+hora literal   | Segundos desde Unix |

## Casos de Uso Recomendados

1. **DATE**: Quando apenas a informação de data é relevante (aniversários, feriados)
2. **TIME**: Para durações ou horários específicos sem data (horário de funcionamento)
3. **DATETIME**:
    - Para eventos futuros (como agendamentos)
    - Quando precisa de uma faixa ampla (antes de 1970 ou depois de 2038)
    - Quando o timezone não é relevante ou deve ser armazenado literalmente

4. **TIMESTAMP**:
    - Para registro de quando algo ocorreu (logs, transações)
    - Quando precisa de conversão automática de timezone
    - Para campos de "última atualização" com auto-preenchimento

## Considerações Importantes

1. **Problema do Ano 2038**: TIMESTAMP tem limitação até 2038 (em MySQL 8.0 pode ser estendido)
2. **Conversão de Timezone**: TIMESTAMP converte para UTC ao armazenar e para o timezone da sessão ao recuperar
3. **Performance**: TIMESTAMP geralmente é mais eficiente por usar menos espaço
4. **Valores nulos**: TIMESTAMP não pode ser NULL a menos que explicitamente definido

## Exemplos Avançados

### Diferença entre DATETIME e TIMESTAMP com timezone:
```sql
SET time_zone = '+00:00';
INSERT INTO temp VALUES (NOW(), NOW()); -- Insere data/hora atual em UTC

SET time_zone = '+03:00';
SELECT * FROM temp; -- DATETIME mostra igual, TIMESTAMP ajustado +3 horas
```

### Extração de partes específicas:
```sql
SELECT
    YEAR(data_hora) AS ano,
    MONTHNAME(data_hora) AS mes,
    DAYOFWEEK(data_hora) AS dia_semana
FROM tabela;
```

### Cálculos com datas:
```sql
SELECT DATE_ADD(data_evento, INTERVAL 7 DAY) AS uma_semana_depois
FROM eventos;

SELECT DATEDIFF('2024-12-31', '2024-01-01') AS dias_no_ano; -- 364
```

## Exercícios

<details>
<summary>Lista de Exercícios</summary>

### Tabela Base para Todos os Exercícios

```sql
CREATE DATABASE IF NOT EXISTS exercicios_temporais;
USE exercicios_temporais;

CREATE TABLE registros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    data_evento DATE,
    hora_evento TIME,
    data_hora_evento DATETIME,
    registro_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status ENUM('agendado', 'em_andamento', 'concluido', 'cancelado') DEFAULT 'agendado'
);

-- Inserção de dados de exemplo
INSERT INTO registros (descricao, data_evento, hora_evento, data_hora_evento, status) VALUES
('Reunião de equipe', '2024-06-15', '09:00:00', '2024-06-15 09:00:00', 'concluido'),
('Entrega de projeto', '2024-06-20', '17:30:00', '2024-06-20 17:30:00', 'agendado'),
('Manutenção do sistema', '2024-05-10', '23:00:00', '2024-05-10 23:00:00', 'concluido'),
('Treinamento novo software', '2024-07-01', '14:00:00', '2024-07-01 14:00:00', 'agendado'),
('Backup mensal', '2024-06-30', '02:00:00', '2024-06-30 02:00:00', 'em_andamento'),
('Auditoria', '2024-05-25', '10:15:00', '2024-05-25 10:15:00', 'concluido'),
('Atualização de segurança', '2024-06-05', '18:45:00', '2024-06-05 18:45:00', 'cancelado'),
('Entrevista candidato', '2024-06-18', '11:30:00', '2024-06-18 11:30:00', 'agendado'),
('Revisão de contrato', '2024-04-15', '16:20:00', '2024-04-15 16:20:00', 'concluido'),
('Lançamento de produto', '2024-07-15', '20:00:00', '2024-07-15 20:00:00', 'agendado');
```

### Exercícios com Tipo DATE

1. Selecione todos os eventos que ocorreram em junho de 2024.
2. Liste os eventos ordenados por data, do mais recente para o mais antigo.
3. Encontre todos os eventos que aconteceram no primeiro trimestre de 2024 (janeiro a março).
4. Calcule quantos dias faltam para cada evento agendado a partir da data atual.
5. Selecione eventos que ocorreram em fins de semana (sábado ou domingo).
6. Liste os eventos agrupados por mês e conte quantos eventos ocorreram em cada mês.
7. Encontre o evento mais antigo registrado na tabela.
8. Selecione eventos que ocorreram nos últimos 30 dias.
9. Atualize a data de todos os eventos "agendados" para 7 dias após a data original.
10. Crie uma consulta que mostre a descrição do evento e o dia da semana em que ocorreu (ex: "Segunda-feira").

### Exercícios com Tipo TIME

1. Selecione todos os eventos que ocorrem pela manhã (antes do meio-dia).
2. Liste os eventos ordenados por horário, do mais cedo para o mais tarde.
3. Encontre eventos que duram mais de 2 horas (considerando que hora_evento é a duração).
4. Calcule a média de horário dos eventos concluídos.
5. Selecione eventos que ocorrem em horário comercial (entre 09:00 e 18:00).
6. Formate todos os horários para exibir no formato 12h com AM/PM.
7. Encontre a diferença em horas entre o evento mais cedo e o mais tarde do dia.
8. Atualize o horário de todos os eventos "agendados" para 1 hora depois do horário original.
9. Selecione eventos que ocorrem em horários "redondos" (ex: 09:00, 10:00, etc.).
10. Crie uma consulta que mostre a descrição e classifique os eventos como "Manhã", "Tarde" ou "Noite".

### Exercícios com Tipo DATETIME

1. Selecione eventos que ocorreram entre 01/06/2024 e 30/06/2024.
2. Liste os eventos ordenados por data e hora, do mais recente para o mais antigo.
3. Encontre eventos que ocorreram no mesmo dia da semana que hoje.
4. Calcule a diferença em horas entre a data/hora atual e cada evento futuro.
5. Selecione eventos que ocorreram no último mês completo.
6. Formate todas as datas/horas para exibir no formato "DD/MM/YYYY HH24:MI".
7. Encontre eventos que ocorreram em feriados nacionais (crie uma lista de feriados para teste).
8. Atualize a data/hora de todos os eventos "cancelados" para NULL.
9. Selecione eventos que ocorreram em dias úteis (segunda a sexta) em horário comercial.
10. Crie uma consulta que mostre a descrição e classifique os eventos como "Passado", "Presente" (hoje) ou "Futuro".

### Exercícios com Tipo TIMESTAMP

1. Selecione todos os registros modificados na última hora.
2. Liste os registros ordenados pelo timestamp de modificação, do mais recente para o mais antigo.
3. Encontre o intervalo de tempo entre o registro mais antigo e o mais recente na tabela.
4. Calcule quantos registros foram atualizados em cada dia da semana.
5. Selecione registros que foram modificados fora do horário comercial.
6. Converta todos os timestamps para exibir no fuso horário UTC-3.
7. Encontre registros que foram criados e modificados em momentos diferentes.
8. Atualize a descrição de um registro específico e observe a mudança no timestamp.
9. Selecione registros que permaneceram inalterados por mais de 7 dias.
10. Crie uma consulta que mostre a descrição e o tempo decorrido desde a última modificação (ex: "2 horas atrás").

</details>
