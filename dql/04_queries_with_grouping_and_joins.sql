-- 19. O nome da editora e a quantidade de livros de cada editora (LIVRO).
SELECT
	edt.nome AS editora,
	COUNT(lvr.id) AS quantidade_livros
FROM livros AS lvr
LEFT JOIN editoras AS edt
	ON lvr.id_editora = edt.id
GROUP BY editora;

-- 20. O nome da categoria e a quantidade de livros de cada categoria (LIVRO).
SELECT
	ctg.nome AS categoria,
	COUNT(ctg.id) AS quantidade_livros
FROM livros AS lvr
LEFT JOIN categorias AS ctg
	ON lvr.id_categoria = ctg.id
GROUP BY categoria;

-- 21. O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
SELECT
	aut.nome AS autor,
	COUNT(lvr.id) AS quantidade_livros
FROM livro_autor AS lva
LEFT JOIN autores AS aut
	ON lva.id_autor = aut.id
LEFT JOIN livros AS lvr
	ON lva.id_livro = lvr.id
GROUP BY autor;

-- 22. O nome do aluno e a quantidade de empréstimos de cada aluno (EMPRESTIMO).
SELECT
	aln.nome AS aluno,
	COUNT(emp.id) AS quantidade_emprestimos
FROM emprestimos AS emp
LEFT JOIN alunos AS aln
	ON emp.id_aluno = aln.id
GROUP BY aluno;

-- 23. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).
SELECT
	aln.nome AS aluno,
	SUM(emp.valor) AS valor_emprestimos
FROM emprestimos AS emp
LEFT JOIN alunos AS aln
	ON emp.id_aluno = aln.id
GROUP BY aluno;

-- 24. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno
-- somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).
SELECT
	aln.nome AS aluno,
	SUM(emp.valor) AS valor_emprestimos
FROM emprestimos AS emp
LEFT JOIN alunos AS aln
	ON emp.id_aluno = aln.id
GROUP BY aluno
HAVING
	SUM(emp.valor) > 7;