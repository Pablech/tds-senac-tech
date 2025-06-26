-- cria a tabela associativa
create table jogo_plataforma
(
    id_jogo BIGINT UNSIGNED NOT NULL,
    id_plataforma SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (id_jogo, id_plataforma),
    FOREIGN KEY (id_jogo) REFERENCES jogos (id),
    FOREIGN KEY (id_plataforma) REFERENCES plataformas (id)
);

-- popula ela com os dados da tabela jogos
insert into jogo_plataforma
    select id, id_plataforma from jogos ORDER BY id;

-- busca as constraints que apontam para a tabela plataformas
SELECT
    TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    REFERENCED_TABLE_SCHEMA = (SELECT DATABASE()) AND
    REFERENCED_TABLE_NAME = 'plataformas';

-- apaga a chave estrangeira de jogos
alter table jogos drop constraint jogos_ibfk_2;

-- busca apenas pelos jogos com nome repetidos
select id, nome, count(nome)
from jogos
group by nome
having count(nome) > 1
order by id;

-- busca todos os dados dos jogos repetidos
select j.id, j.nome, j.id_plataforma, p.nome
from jogos as j
inner join plataformas as p
on p.id = j.id_plataforma
where j.nome in (
    select nome
    from jogos
    group by nome
    having count(*) > 1
)
order by j.nome, j.id;

-- remove duplicados da tabela jogo_plataforma
delete from jogo_plataforma where id_jogo in (511, 568);
-- e depois apaga de jogo
delete from jogos where id in (511, 568);

-- atualiza na tabela jogo_plataforma o id do jogo 102 para o 1
update jogo_plataforma
set id_jogo = 1
where id_jogo = 102;

-- agora apaga o jogo duplicado de jogos
delete from jogos where id = 102;

-- insere nova plataforma
insert into plataformas (nome) values ('PlayStation 6');
-- os inserts abaixo funcionam como lançamento do jogo em plataformas já cadastradas
insert into jogo_plataforma values (1, 18);
insert into jogo_plataforma values (1, 64);


-- buscando todoas as plataformas que o jogo do bruxo já foi lançado
select
    j.nome as NomeJogo,
    p.nome as NomePlataforma
from jogos as j
inner join jogo_plataforma as jp
    on j.id = jp.id_jogo
inner join plataformas as p
    on p.id = jp.id_plataforma
where j.nome = 'The Witcher 3: Wild Hunt';

-- busca por todas as plataformas com começo Play
select * from plataformas where nome like 'Play%';
