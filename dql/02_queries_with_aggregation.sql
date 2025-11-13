-- 7. A quantidade de livros.
SELECT COUNT(*) FROM livros;

-- 8. O somatório do valor dos empréstimos.
SELECT SUM(valor) FROM emprestimos;

-- 9. A média do valor dos empréstimos.
SELECT AVG(valor) FROM emprestimos;

-- 10. O maior valor dos empréstimos.
SELECT MAX(valor) FROM emprestimos;

-- 11. O menor valor dos empréstimos.
SELECT MIN(valor) FROM emprestimos;

-- 12. O somatório do valor dos empréstimos que estão entre 05/05/2012 e 10/05/2012.
SELECT SUM(valor) FROM emprestimos
WHERE data_emprestimo
	BETWEEN '2012-05-05' AND '2012-05-10';

-- 13. A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
SELECT COUNT(*) FROM emprestimos
WHERE data_emprestimo
	BETWEEN '2012-05-01' AND '2012-05-05';