drop table jogos;
drop table generos;
drop table plataformas;
drop table franquias;
drop table publicadoras;

CREATE TABLE generos
(
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL
);

CREATE TABLE plataformas
(
    id SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL
);

CREATE TABLE franquias
(
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL
);

CREATE TABLE publicadoras
(
    id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(128) NOT NULL
);

create table jogos
(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- identificador do jogo
    nome VARCHAR(200) NOT NULL, -- nomo de jogo
    id_franquia VARCHAR(128) NULL, -- franquia a qual o jogo pertence (GTA IV pertence ao GTA, Bloodborne não tem, etc)
    id_genero1 varchar(32) NOT NULL, -- gênero primário do jogo (tiro, rpg, etc)
    id_genero2 varchar(32) NULL, -- gênero secundário do jogo (nem todos terão)
    id_plataforma VARCHAR(100) NOT NULL, -- plataforma de lançamento (nintendo 64, playstation 3, PC, etc)
    id_publicadora VARCHAR(100) NOT NULL, -- empresa que publica o jogo (sony, nintendo, bethesda, etc)
    nr_jogadores SMALLINT UNSIGNED NOT NULL, -- quantidade de jogadores local ou online
    nota_metascore TINYINT NULL, -- nota do jogo na plataforma no metacritic (geralmente de 0 a 99)
    nota_ign NUMERIC(3, 1) NULL, -- nota do jogo na plataforma IGN (de 0.0 a 10.0)
    data_lancamento DATE NOT NULL -- data de lançamento do jogo
);
