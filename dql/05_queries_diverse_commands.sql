-- 25. O nome de todos os alunos em ordem decrescente e em letra maiúscula.
SELECT UPPER(nome)
FROM alunos
ORDER BY nome DESC;

-- 26. Os empréstimos que foram feitos no mês 04 de 2012.
SELECT * FROM emprestimos AS emp
WHERE
	EXTRACT(MONTH FROM emp.data_emprestimo) = 4 AND
	EXTRACT(YEAR FROM emp.data_emprestimo) = 2012

-- 27. Todos os campos do empréstimo. Caso já tenha sido devolvido,
-- mostrar a mensagem “Devolução completa”, senão “Em atraso”.
SELECT
	id,
	id_aluno,
	data_emprestimo,
	data_devolucao,
	valor,
	CASE devolvido
		WHEN 'S' THEN 'Devolução completa'
	ELSE 'Em atraso'
	END AS devolvido
FROM emprestimos AS emp;

-- 28. Somente o caractere 5 até o caractere 10 do nome dos autores.
SELECT nome, SUBSTRING(nome FROM 5 FOR 10)
FROM autores;

-- 29. O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc
SELECT
	valor,
	CASE EXTRACT(MONTH FROM data_emprestimo)
		WHEN 1 THEN 'Janeiro'
		WHEN 2 THEN 'Fevereiro'
		WHEN 3 THEN 'Março'
		WHEN 4 THEN 'Abril'
		WHEN 5 THEN 'Maio'
		WHEN 6 THEN 'Junho'
		WHEN 7 THEN 'Julho'
		WHEN 8 THEN 'Agosto'
		WHEN 9 THEN 'Setembro'
		WHEN 10 THEN 'Outubro'
		WHEN 11 THEN 'Novembro'
		WHEN 12 THEN 'Dezembro'
	END AS mes_emprestimo
FROM emprestimos;