drop table jogos;

create table jogos
(
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY, -- identificador do jogo
    nome VARCHAR(200) NOT NULL, -- nomo de jogo
    franquia VARCHAR(128) NULL, -- franquia a qual o jogo pertence (GTA IV pertence ao GTA, Bloodborne não tem, etc)
    genero1 VARCHAR(32) NOT NULL, -- gênero primário do jogo (tiro, rpg, etc)
    genero2 VARCHAR(32) NULL, -- gênero secundário do jogo (nem todos terão)
    plataforma VARCHAR(100) NOT NULL, -- plataforma de lançamento (nintendo 64, playstation 3, PC, etc)
    publicadora VARCHAR(100) NOT NULL, -- empresa que publica o jogo (sony, nintendo, bethesda, etc)
    nr_jogadores SMALLINT UNSIGNED NOT NULL, -- quantidade de jogadores local ou online
    nota_metascore TINYINT NULL, -- nota do jogo na plataforma no metacritic (geralmente de 0 a 99)
    nota_ign NUMERIC(3, 1) NULL, -- nota do jogo na plataforma IGN (de 0.0 a 10.0)
    data_lancamento DATE NOT NULL -- data de lançamento do jogo
);
