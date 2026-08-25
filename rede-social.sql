/* =========================================================
   TABELA USUARIO
   ========================================================= */

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome_completo VARCHAR(100) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    nome_usuario VARCHAR(50) NOT NULL UNIQUE,
    data_de_nascimento VARCHAR(20) NOT NULL,
    senha VARCHAR(25) NOT NULL
);

/* Listar Todos os Usuários */
SELECT * FROM usuario;

/* =========================================================
   CADASTRAR USUÁRIOS
   ========================================================= */

INSERT INTO usuario
(
    nome_completo,
    email,
    nome_usuario,
    data_de_nascimento,
    senha
)
VALUES
(
    'Beatriz Almeida',
    'beatriz.almeida@email.com',
    'beatriz_almeida',
    '2008-02-14',
    'Bia789'
);

INSERT INTO usuario
(
    nome_completo,
    email,
    nome_usuario,
    data_de_nascimento,
    senha
)
VALUES
(
    'João Pedro Martins',
    'joao.martins@email.com',
    'joao_martins',
    '2007-06-28',
    'Joao456'
);

INSERT INTO usuario
(
    nome_completo,
    email,
    nome_usuario,
    data_de_nascimento,
    senha
)
VALUES
(
    'Camila Rodrigues',
    'camila.rodrigues@email.com',
    'camila_rodrigues',
    '2009-01-17',
    'Camila123'
);

INSERT INTO usuario
(
    nome_completo,
    email,
    nome_usuario,
    data_de_nascimento,
    senha
)
VALUES
(
    'Henrique Oliveira',
    'henrique.oliveira@email.com',
    'henrique_oliveira',
    '2006-09-03',
    'Henrique321'
);

INSERT INTO usuario
(
    nome_completo,
    email,
    nome_usuario,
    data_de_nascimento,
    senha
)
VALUES
(
    'Isabela Fernandes',
    'isabela.fernandes@email.com',
    'isabela_fernandes',
    '2008-12-11',
    'Isabela654'
);

INSERT INTO usuario
(
    nome_completo,
    email,
    nome_usuario,
    data_de_nascimento,
    senha
)
VALUES
(
    'Rafael Mendes',
    'rafael.mendes@email.com',
    'rafael_mendes',
    '2007-04-25',
    'Rafael987'
);


/* =========================================================
   TABELA POSTAGEM
   ========================================================= */

CREATE TABLE postagem (
    id SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL UNIQUE,
    data_da_postagem VARCHAR(20) NOT NULL,
    comentario VARCHAR(1500)
);

/* Listar dados da postagem */
SELECT * FROM postagem;


/* =========================================================
   CADASTRAR POSTAGENS
   ========================================================= */

INSERT INTO postagem
(
    nome_usuario,
    data_da_postagem,
    comentario
)
VALUES
(
    'beatriz_almeida',
    '2026-08-20',
    'Hoje comecei um projeto novo e estou muito animada!'
);

INSERT INTO postagem
(
    nome_usuario,
    data_da_postagem,
    comentario
)
VALUES
(
    'joao_martins',
    '2026-08-21',
    'Passei a tarde estudando programação. Foi cansativo, mas valeu a pena!'
);

INSERT INTO postagem
(
    nome_usuario,
    data_da_postagem,
    comentario
)
VALUES
(
    'camila_rodrigues',
    '2026-08-22',
    'Finalmente chegou o final de semana! Hora de descansar.'
);

INSERT INTO postagem
(
    nome_usuario,
    data_da_postagem,
    comentario
)
VALUES
(
    'henrique_oliveira',
    '2026-08-23',
    'Hoje assisti a um filme muito bom com meus amigos.'
);

INSERT INTO postagem
(
    nome_usuario,
    data_da_postagem,
    comentario
)
VALUES
(
    'isabela_fernandes',
    '2026-08-24',
    'O dia estava lindo, aproveitei para passear no parque.'
);


/* =========================================================
   TABELA COMENTARIO
   ========================================================= */

CREATE TABLE comentario (
    id SERIAL PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    data_comentario VARCHAR(50) NOT NULL UNIQUE,
    conteudo VARCHAR(1700)
);

/* Listar dados dos comentários */
SELECT * FROM comentario;


/* =========================================================
   CADASTRAR COMENTÁRIOS
   ========================================================= */

INSERT INTO comentario
(
    nome_usuario,
    data_comentario,
    conteudo
)
VALUES
(
    'rafael_mendes',
    '2026-08-20',
    'Também estou trabalhando em um projeto novo. Boa sorte!'
);

INSERT INTO comentario
(
    nome_usuario,
    data_comentario,
    conteudo
)
VALUES
(
    'beatriz_almeida',
    '2026-08-21',
    'Estudar programação realmente exige bastante dedicação.'
);

INSERT INTO comentario
(
    nome_usuario,
    data_comentario,
    conteudo
)
VALUES
(
    'joao_martins',
    '2026-08-22',
    'Alguém conhece algum filme bom para assistir hoje?'
);

INSERT INTO comentario
(
    nome_usuario,
    data_comentario,
    conteudo
)
VALUES
(
    'camila_rodrigues',
    '2026-08-23',
    'Também aproveitei o dia para descansar um pouco.'
);

INSERT INTO comentario
(
    nome_usuario,
    data_comentario,
    conteudo
)
VALUES
(
    'henrique_oliveira',
    '2026-08-24',
    'Começando mais uma semana com bastante disposição!'
);