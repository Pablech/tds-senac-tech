-- insere os gêneros únicos na tabela gênero
INSERT INTO generos (nome)
SELECT DISTINCT id_genero1 FROM jogos WHERE id_genero1 IS NOT NULL
UNION
SELECT id_genero2 FROM jogos WHERE id_genero2 IS NOT NULL;

-- atualiza a tabela jogos com o ID da tabela generos
UPDATE jogos AS j
INNER JOIN generos AS g
    ON g.nome = j.id_genero1
SET j.id_genero1 = g.id;

-- altera a coluna id_genero1 para ser igual ao id de generos
-- e então criar a Chave Estrangeira FK
ALTER TABLE jogos MODIFY COLUMN id_genero1 TINYINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_genero1) REFERENCES generos (id);
-- PARA PRATICAR : faca para o genero 2

-- fazendo o mesmo para as plataformas
INSERT INTO plataformas (nome)
SELECT DISTINCT id_plataforma FROM jogos WHERE id_plataforma IS NOT NULL;

UPDATE jogos AS j
INNER JOIN plataformas AS p
    ON p.nome = j.id_plataforma
SET j.id_plataforma = j.id;

ALTER TABLE jogos MODIFY COLUMN id_plataforma SMALLINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_plataforma) REFERENCES plataformas (id);

-- PARA PRATICAR : faça o mesmo para as tabelas franquias e publicadoras
