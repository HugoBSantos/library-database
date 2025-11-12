CREATE TABLE IF NOT EXISTS livros (
	id SERIAL NOT NULL,
	id_editora INTEGER NOT NULL,
	id_categoria INTEGER NOT NULL,
	nome VARCHAR(100) NOT NULL,

	CONSTRAINT pk_lvr_id PRIMARY KEY (id),
	CONSTRAINT fk_lvr_ideditora FOREIGN KEY (id_editora) REFERENCES editoras (id),
	CONSTRAINT fk_lvr_idcategoria FOREIGN KEY (id_categoria) REFERENCES categorias (id),
	CONSTRAINT un_lvr_nome UNIQUE (nome)
);