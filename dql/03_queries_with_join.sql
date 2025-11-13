-- 14. O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
CREATE OR REPLACE VIEW livros_info AS
SELECT
	lvr.nome AS livro,
	ctg.nome AS categoria,
	edt.nome AS editora
FROM livros AS lvr
LEFT JOIN categorias AS ctg
	ON lvr.id_categoria = ctg.id
LEFT JOIN editoras AS edt
	ON lvr.id_editora = edt.id;

SELECT * FROM livros_info;

-- 15. O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
CREATE OR REPLACE VIEW livro_autor_info AS
SELECT
	lvr.nome AS livro,
	aut.nome AS autor
FROM livro_autor AS lva
LEFT JOIN livros AS lvr
	ON lva.id_livro = lvr.id
LEFT JOIN autores AS aut
	ON lva.id_autor = aut.id;

SELECT * FROM livro_autor_info;

-- 16. O nome dos livros do autor Ian Graham (LIVRO_AUTOR).
SELECT
	lvr.nome AS livro,
	aut.nome AS autor
FROM livro_autor AS lva
LEFT JOIN livros AS lvr
	ON lva.id_livro = lvr.id
LEFT JOIN autores AS aut
	ON lva.id_autor = aut.id
WHERE aut.nome = 'Ian Graham';

-- 17. O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
SELECT
	aln.nome AS aluno,
	data_emprestimo,
	data_devolucao
FROM emprestimos AS emp
LEFT JOIN alunos AS aln
	ON emp.id_aluno = aln.id;

-- 18. O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).
SELECT 
	lvr.nome AS livro,
	emp.devolvido
FROM emprestimo_livro AS epl
LEFT JOIN livros AS lvr
	ON epl.id_livro = lvr.id
LEFT JOIN emprestimos AS emp
	ON epl.id_emprestimo = emp.id
WHERE emp.devolvido = 'N';