INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'Banco de Dados - 1 Edição'),
	(SELECT id FROM autores WHERE nome = 'Waldemar Setzer')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'Banco de Dados - 1 Edição'),
	(SELECT id FROM autores WHERE nome = 'Flávio Soares')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'Oracle DataBase 11G Administração'),
	(SELECT id FROM autores WHERE nome = 'John Watson')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'Programação de Computadores em Java'),
	(SELECT id FROM autores WHERE nome = 'Rui Rossi dos Santos')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'Programação Orientada a Aspectos em Java'),
	(SELECT id FROM autores WHERE nome = 'Antonio Pereira de Resende')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'Programação Orientada a Aspectos em Java'),
	(SELECT id FROM autores WHERE nome = 'Claudiney Calixto Lima')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'HTML5 - Guia Prático'),
	(SELECT id FROM autores WHERE nome = 'Evandro Carlos Teruel')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'XHTML: Guia de Referência para Desenvolvimento na Web'),
	(SELECT id FROM autores WHERE nome = 'Ian Graham')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'PHP para Desenvolvimento Profissional'),
	(SELECT id FROM autores WHERE nome = 'Fabrício Xavier')
);

INSERT INTO livro_autor (id_livro, id_autor)
VALUES (
	(SELECT id FROM livros WHERE nome = 'PHP com Programação Orientada a Objetos'),
	(SELECT id FROM autores WHERE nome = 'Pablo Dalloglio')
);