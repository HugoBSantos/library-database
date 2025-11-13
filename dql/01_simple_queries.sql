-- 1. O nome dos autores em ordem alfabética.
SELECT nome FROM autores
ORDER BY nome;

-- 2. O nome dos alunos que começam com a letra P.
SELECT nome FROM alunos
WHERE nome LIKE 'P%';

-- 3. O nome dos livros da categoria Banco de Dados ou Java.
SELECT nome FROM livros
WHERE id_categoria IN (
	SELECT id FROM categorias
	WHERE nome IN ('Banco de Dados', 'Java')
);

-- 3. O nome dos livros da editora Bookman.
SELECT nome FROM livros
WHERE id_editora = (
	SELECT id FROM editoras
	WHERE nome = 'Bookman'
);

-- 4. Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
SELECT * FROM emprestimos
WHERE data_emprestimo
	BETWEEN '2012-05-05' AND '2012-05-10';

-- 5. Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
SELECT * FROM emprestimos
WHERE data_emprestimo
	NOT BETWEEN '2012-05-05' AND '2012-05-10';

-- 6. Os empréstimos que os livros já foram devolvidos.
SELECT * FROM emprestimos
WHERE devolvido = 'S';