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
UPDATE jogos AS j
INNER JOIN generos AS g
    ON g.nome = j.id_genero2
SET j.id_genero2 = g.id;

-- altera a coluna id_genero1 e id_genero2 para ser igual ao id de generos
-- e então criar as Chaves Estrangeiras FK
ALTER TABLE jogos MODIFY COLUMN id_genero1 TINYINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_genero1) REFERENCES generos (id);
ALTER TABLE jogos MODIFY COLUMN id_genero2 TINYINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_genero2) REFERENCES generos (id);

-- fazendo o mesmo para as plataformas
INSERT INTO plataformas (nome)
SELECT DISTINCT id_plataforma
    FROM jogos
    WHERE id_plataforma IS NOT NULL;

UPDATE jogos AS j
INNER JOIN plataformas AS p
    ON p.nome = j.id_plataforma
SET j.id_plataforma = p.id;

ALTER TABLE jogos MODIFY COLUMN id_plataforma SMALLINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_plataforma) REFERENCES plataformas (id);

-- fazendo o mesmo para as publicadoras
INSERT INTO publicadoras (nome)
SELECT DISTINCT id_publicadora
    FROM jogos
    WHERE id_publicadora IS NOT NULL;

UPDATE jogos AS j
INNER JOIN publicadoras AS p
    ON p.nome = j.id_publicadora
SET j.id_publicadora = p.id;

ALTER TABLE jogos MODIFY COLUMN id_publicadora SMALLINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_publicadora) REFERENCES publicadoras (id);

-- fazendo o mesmo para as franquias
INSERT INTO franquias (nome)
SELECT DISTINCT id_franquia
    FROM jogos
    WHERE id_franquia IS NOT NULL;

UPDATE jogos AS j
INNER JOIN franquias AS f
    ON f.nome = j.id_franquia
SET j.id_franquia = f.id;

ALTER TABLE jogos MODIFY COLUMN id_franquia SMALLINT UNSIGNED NOT NULL;
ALTER TABLE jogos ADD CONSTRAINT FOREIGN KEY (id_franquia) REFERENCES franquias (id);
