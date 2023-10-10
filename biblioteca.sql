CREATE TABLE usuarios (
    user_id SERIAL PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    nome_de_usuario VARCHAR(50) UNIQUE,
    senha VARCHAR(255),
    data_de_registro DATE
);

CREATE TABLE livros (
    livro_id SERIAL PRIMARY KEY,
    titulo VARCHAR(255),
    autor VARCHAR(255),
    ano_de_publicacao INTEGER,
    categoria_id INTEGER,
    quantidade_disponivel INTEGER,
    disponivel BOOLEAN
);

CREATE TABLE emprestimos (
    emprestimo_id SERIAL PRIMARY KEY,
    livro_id INTEGER,
    user_id INTEGER,
    data_de_emprestimo DATE,
    data_de_devolucao DATE,
    multa DECIMAL(5, 2)
);

CREATE TABLE categorias_de_livros (
    categoria_id SERIAL PRIMARY KEY,
    nome_da_categoria VARCHAR(100) UNIQUE
);

CREATE TABLE notificacoes (
    notificacao_id SERIAL PRIMARY KEY,
    user_id INTEGER,
    livro_id INTEGER,
    mensagem TEXT,
    data_de_envio TIMESTAMP
);

CREATE TABLE relatorios (
    relatorio_id SERIAL PRIMARY KEY,
    user_id INTEGER,
    livro_id INTEGER,
    acao VARCHAR(50),
    data_da_acao TIMESTAMP
);

INSERT INTO usuarios (nome, endereco, telefone, nome_de_usuario, senha, data_de_registro)
VALUES
    ('João', 'Rua A, 123', '123-456-7890', 'joao123', 'senha123', '2023-09-19'),
    ('Maria', 'Rua B, 356', '987-654-3210', 'maria456', 'senha456', '2023-09-19'),
	('Lucas', 'Rua C, 444', '222-312-112', 'lucas123', 'senha444', '2023-09-19'),
	('Neto', 'Rua D, 555', '333-312-123', 'neto132', 'senha132', '2023-08-12'),
	('Anne', 'Rua E, 678', '111-132-432', 'anne222', 'senha678', '2023-08-13'),
	('Andressa', 'Rua F, 789', '888-345-123', 'andressa789', 'senha789', '2023-09-02'),
	('Kaue', 'Rua G, 876', '987-233-312', 'kaue876', 'senha876', '2023-09-03'),
	('Karen', 'Rua H, 987', '987-234-555', 'karen987', 'senha987', '2023-09-04'),
	('Marcely', 'Rua I, 101', '101-201-310', 'marcely101', 'senha101', '2023-09-05'),
	('Gustavo', 'Rua J, 112', '112-223-334', 'gustavo112', 'senha112', '2023-09-06'),
	('Katia', 'Rua K, 125', '125-542-665', 'katia125', 'senha124', '2023-08-04'),
	('Carlos', 'Rua L, 136', '115-554-534', 'mestremocat042', 'senha042', '2023-09-19'),
	('Luiz', 'Rua L, 146', '136-777-777', 'kyuubi777', 'senha777', '2023-09-19'),
	('Jesus', 'Rua M, 154', '134-135-666', 'jesus777', 'senha777', '2023-09-15'),
	('Lucifer', 'Rua N, 166', '156-343-543', 'lucifer666', 'senha666', '2023-09-15'),
	('Silva', 'Rua O, 177', '177-223-554', 'silva177', 'senha177', '2023-09-12'),
	('Anny', 'Rua P, 188', '188-223-454', 'anny188', 'senha188', '2023-07-21'),
	('Tesla', 'Rua Q, 190', '190-222-2180', 'tesla190', 'senha190', '2023-09-14'),
	('Jack', 'Rua R, 200', '200-222-131', 'jack200', 'senha200', '2023-04-12')
;

INSERT INTO livros (titulo, autor, ano_de_publicacao, categoria_id, quantidade_disponivel, disponivel)
VALUES
	('Tao do Jeet Kune Do', 'Bruce Lee', '1975', '5', '5', '1'),
	('Outliers Fora de Série', 'Malcolm Gladwell', '2008', '1', '6', '1'),
	('A Arte da Guerra', 'Sun Tzu', '1900', '2', '0', '0'),
	('Bruce Lee Uma Vida', 'Matthew Polly', '2012', '3', '3', '1'),
	('Ta-Kwon-Do', 'Wo-lu-tao', '1960', '1', '5', '1'),
	('Judô O Caminho da Suavidade', 'Ney Wilson', '1979', '1', '4', '1'),
	('O Livro dos Cinco Anéis', 'Miyamoto Musashi', '1645', '2', '0', '0'),
	('Dom Quixote', 'Miguel de Cervantes', '1605', '4', '10', '1'),
	('Moby Dick', 'Herman Melville', '1851', '4', '7', '1'),
	('Cem Anos de Solidão', 'Gabriel García Márquez', '1967', '6', '4', '1'),
	('1984', 'George Orwell', '1949', '7', '2', '1'),
	('A Revolução dos Bichos', 'George Orwell', '1945', '8', '10', '1'),
	('O Nome do Vento', 'Patrick Rothfuss', '2007', '9', '30', '1'),
	('O Código da Vinci', 'Dan Brown', '2003', '10', '25', '1'),
	('A Culpa É das Estrelas', 'Jhon Grenn', '2012', '4', '50', '1'),
	('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', '1954', '9', '20', '1'),
	('O Hobbit', 'J.R.R. Tolkien', '1937', '9', '40', '1'),
	('Crime e Castigo', 'Fiódor Dostoiévski', '1986', '4', '9', '1'),
	('A Ilha do Tesouro', 'Robert Louis Stevenson', '1983', '4', '7', '1'),
	('O Apanhador no Campo de Centeio', 'J.D. Salinger', '1951', '4', '0', '0')
;

INSERT INTO emprestimos (livro_id, user_id, data_de_emprestimo, data_de_devolucao, multa)
VALUES
    (1, 1, '2023-09-05', NULL, NULL),
    (2, 2, '2023-09-10', NULL, NULL),
    (3, 3, '2023-09-15', NULL, NULL),
    (4, 4, '2023-09-20', NULL, NULL),
    (5, 5, '2023-09-25', NULL, NULL),
	(6, 6, '2023-09-12', NULL, NULL),
	(7, 7, '2023-09-04', NULL, NULL),
	(8, 8, '2023-09-03', NULL, NULL),
	(9, 9, '2023-09-06', NULL, NULL),
	(10, 10, '2023-09-07', NULL, NULL),
	(11, 11, '2023-09-11', NULL, NULL),
	(12, 12, '2023-09-13', NULL, NULL),
	(13, 13, '2023-09-14', NULL, NULL),
	(14, 14, '2023-09-17', NULL, NULL),
	(15, 15, '2023-09-18', NULL, NULL),
	(16, 16, '2023-09-19', NULL, NULL),
	(17, 17, '2023-09-21', NULL, NULL),
	(18, 18, '2023-09-21', NULL, NULL),
	(19, 19, '2023-08-30', NULL, NULL),
	(20, 20, '2023-08-29', NULL, NULL);
	
INSERT INTO categorias_de_livros (nome_da_categoria)
VALUES
    ('Mistério'),
    ('Distopia'),
    ('Fantasia'),
    ('Clássico'),
    ('Realismo Mágico');
	
INSERT INTO notificacoes (user_id, livro_id, mensagem, data_de_envio)
VALUES
    (1, 2, 'O livro Outliers Fora de Série está disponível para empréstimo.', '2023-09-10 10:30:00'),
    (2, 4, 'Você tem um livro atrasado.', '2023-09-20 14:15:00'),
    (3, 1, 'Você tem um livro atrasado.', '2023-09-05 11:45:00'),
	(4, 5, 'O livro Ta-Kwon-Do está disponível para empréstimo.', '2023-09-27 15:40:00'),
	(5, 3, 'O livro A Arte da Guerra está disponível para empréstimo.', '2023-09-15 17:30:00'),
	(6, 6, 'Você tem um livro atrasado.', '2023-09-12 09:20:00');
	
INSERT INTO relatorios (user_id, livro_id, acao, data_da_acao)
VALUES
    (1, 2, 'Empréstimo', '2023-09-12 10:30:00'),
    (2, 4, 'Devolução', '2023-09-18 14:15:00'),
    (3, 1, 'Reserva', '2023-09-20 11:45:00');
	
--1
SELECT u.user_id, u.nome, SUM(e.multa) AS total_multas
FROM usuarios u
INNER JOIN emprestimos e ON u.user_id = e.user_id
WHERE e.data_de_devolucao IS NULL
GROUP BY u.user_id, u.nome
HAVING SUM(e.multa) <= 50;


--2
SELECT l.livro_id, l.titulo, l.autor, l.ano_de_publicacao
FROM livros l
LEFT JOIN emprestimos e ON l.livro_id = e.livro_id
WHERE e.emprestimo_id IS NULL;

--3
SELECT EXTRACT(MONTH FROM data_de_emprestimo) AS mes,
       COUNT(*) AS total_emprestimos
FROM emprestimos
WHERE data_de_emprestimo >= NOW() - INTERVAL '1 year'
GROUP BY mes
ORDER BY total_emprestimos DESC
LIMIT 1;

--4
SELECT u.user_id, u.nome, COUNT(e.emprestimo_id) AS total_emprestimos
FROM usuarios u
INNER JOIN emprestimos e ON u.user_id = e.user_id
WHERE e.data_de_emprestimo >= NOW() - INTERVAL '1 month'
GROUP BY u.user_id, u.nome
HAVING COUNT(e.emprestimo_id) > 3;

--5
SELECT l.livro_id, l.titulo, COUNT(e.emprestimo_id) AS total_emprestimos
FROM livros l
LEFT JOIN emprestimos e ON l.livro_id = e.livro_id
WHERE e.data_de_emprestimo >= NOW() - INTERVAL '3 months'
GROUP BY l.livro_id, l.titulo
HAVING COUNT(e.emprestimo_id) >= 5;

--7
SELECT u.nome AS nome_do_usuario, l.titulo AS titulo_do_livro, e.data_de_emprestimo, e.data_de_devolucao, e.multa
FROM emprestimos e
INNER JOIN usuarios u ON e.user_id = u.user_id
INNER JOIN livros l ON e.livro_id = l.livro_id
WHERE u.user_id = 1
ORDER BY e.data_de_emprestimo DESC;



	