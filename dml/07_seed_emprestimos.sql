INSERT INTO emprestimos (id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES
((SELECT id FROM alunos WHERE nome = 'Mario'), '2012-05-02', '2012-05-12', 10.00, 'S'),
((SELECT id FROM alunos WHERE nome = 'Mario'), '2012-04-23', '2012-05-03', 5.00, 'N'),
((SELECT id FROM alunos WHERE nome = 'João'), '2012-05-10', '2012-05-20', 12.00, 'N'),
((SELECT id FROM alunos WHERE nome = 'Paulo'), '2012-05-10', '2012-05-20', 8.00, 'S'),
((SELECT id FROM alunos WHERE nome = 'Pedro'), '2012-05-05', '2012-05-15', 15.00, 'N'),
((SELECT id FROM alunos WHERE nome = 'Pedro'), '2012-05-07', '2012-05-17', 20.00, 'S'),
((SELECT id FROM alunos WHERE nome = 'Pedro'), '2012-05-08', '2012-05-18', 5.00, 'S');