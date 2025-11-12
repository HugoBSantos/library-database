CREATE TABLE IF NOT EXISTS emprestimo_livro (
	id_emprestimo INTEGER NOT NULL,
	id_livro INTEGER NOT NULL,

	CONSTRAINT pk_epl_idemprestimolivro PRIMARY KEY (id_emprestimo, id_livro),
	CONSTRAINT fk_epl_idemprestimo FOREIGN KEY (id_emprestimo) REFERENCES emprestimos (id),
	CONSTRAINT fk_epl_idlivro FOREIGN KEY (id_livro) REFERENCES livros (id)
);