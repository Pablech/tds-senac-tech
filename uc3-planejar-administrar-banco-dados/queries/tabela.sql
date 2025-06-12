drop table jogos;

create table jogos
(
    id INT AUTO_INCREMENT PRIMARY KEY, -- identificador do jogo
    nome varchar(200) NOT NULL, -- nomo de jogo
    genero varchar(100) NOT NULL, -- gênero do jogo (tiro, rpg, etc)
    console varchar(100) NOT NULL, -- plataforma de lançamento (nintendo 64, playstation 3, etc)
    publicadora varchar(100) NOT NULL, -- empresa que publica o jogo (sony, nintendo, etc)
    qtd_jogadores SMALLINT UNSIGNED NOT NULL, -- quantidade de jogadores local ou online
    metascore TINYINT NULL, -- nota do jogo na plataforma no metascore
    ano_lanc SMALLINT UNSIGNED NOT NULL -- ano de lançamento do jogo
);
