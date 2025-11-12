CREATE TABLE IF NOT EXISTS livro_autor (
	id_livro INTEGER NOT NULL,
	id_autor INTEGER NOT NULL,

	CONSTRAINT pk_lva_idlivroautor PRIMARY KEY (id_livro, id_autor),
	CONSTRAINT fk_lva_idlivro FOREIGN KEY (id_livro) REFERENCES livros (id),
	CONSTRAINT fk_lva_idautor FOREIGN KEY (id_autor) REFERENCES autores (id)
);