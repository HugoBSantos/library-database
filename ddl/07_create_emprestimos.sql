CREATE TABLE IF NOT EXISTS emprestimos (
	id SERIAL NOT NULL,
	id_aluno INTEGER NOT NULL,
	data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
	data_devolucao DATE NOT NULL,
	valor NUMERIC(4,2) NOT NULL,
	devolvido CHAR(1) NOT NULL,

	CONSTRAINT pk_emp_id PRIMARY KEY (id),
	CONSTRAINT fk_emp_idaluno FOREIGN KEY (id_aluno) REFERENCES alunos (id)
);

CREATE INDEX idx_emp_data_emprestimo ON emprestimos (data_emprestimo);
CREATE INDEX idx_emp_data_devolucao ON emprestimos (data_devolucao);