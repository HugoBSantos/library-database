INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Edgard Blusher'),
	(SELECT id FROM categorias WHERE nome = 'Banco de Dados'),
	'Banco de Dados – 1 Edição'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Bookman'), 
	(SELECT id FROM categorias WHERE nome = 'Banco de Dados'), 
	'Oracle DataBase 11G Administração'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Nova Terra'), 
	(SELECT id FROM categorias WHERE nome = 'Java'), 
	'Programação de Computadores em Java'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Brasport'), 
	(SELECT id FROM categorias WHERE nome = 'Java'), 
	'Programação Orientada a Aspectos em Java'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Brasport'), 
	(SELECT id FROM categorias WHERE nome = 'HTML'), 
	'HTML5 – Guia Prático'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Nova Terra'), 
	(SELECT id FROM categorias WHERE nome = 'HTML'), 
	'XHTML: Guia de Referência para Desenvolvimento na Web'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Bookman'), 
	(SELECT id FROM categorias WHERE nome = 'PHP'), 
	'PHP para Desenvolvimento Profissional'
);

INSERT INTO livros (id_editora, id_categoria, nome)
VALUES (
	(SELECT id FROM editoras WHERE nome = 'Edgard Blusher'), 
	(SELECT id FROM categorias WHERE nome = 'PHP'), 
	'PHP com Programação Orientada a Objetos'
);