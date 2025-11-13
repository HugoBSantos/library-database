-- 30. A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.
SELECT
	data_emprestimo, valor
FROM emprestimos
WHERE valor > (
	SELECT AVG(valor) FROM emprestimos
);

-- 31. A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.
SELECT
	emp.data_emprestimo,
	emp.valor,
	(
		SELECT COUNT(id_emprestimo)
		FROM emprestimo_livro AS epl
		WHERE epl.id_emprestimo = emp.id
	)
FROM emprestimos AS emp;

-- 32. A data do empréstimo e o valor dos empréstimos que o valor seja menor que a soma de todos os empréstimos.
SELECT
	data_emprestimo,
	valor
FROM emprestimos
WHERE valor < (
	SELECT SUM(valor) FROM emprestimos
);