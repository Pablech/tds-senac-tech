drop table jogos;

create table jogos
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(200) NOT NULL,
    genero varchar(100) NOT NULL,
    plataforma varchar(100) NOT NULL,
    qtd_jogadores SMALLINT UNSIGNED NOT NULL,
    metascore TINYINT NULL,
    ano_lanc SMALLINT UNSIGNED NOT NULL
);
