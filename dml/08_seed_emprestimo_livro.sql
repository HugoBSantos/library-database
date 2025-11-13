WITH emprestimos_identificados AS (
    SELECT 
        e.id,
        a.nome as aluno,
        e.data_emprestimo,
        ROW_NUMBER() OVER (PARTITION BY a.nome ORDER BY e.data_emprestimo) as num_emprestimo
    FROM emprestimos e
    JOIN alunos a ON e.id_aluno = a.id
)
INSERT INTO emprestimo_livro (id_emprestimo, id_livro)
VALUES 
    -- Primeiro empréstimo do Mário
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Mario' AND num_emprestimo = 1), 
     (SELECT id FROM livros WHERE nome = 'Banco de Dados - 1 Edição')),
    
    -- Segundo empréstimo do Mário - Livro 1
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Mario' AND num_emprestimo = 2), 
     (SELECT id FROM livros WHERE nome = 'Programação Orientada a Aspectos em Java')),
    
    -- Segundo empréstimo do Mário - Livro 2
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Mario' AND num_emprestimo = 2), 
     (SELECT id FROM livros WHERE nome = 'Programação de Computadores em Java')),
    
    -- Empréstimo do João - Livro 1
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'João'), 
     (SELECT id FROM livros WHERE nome = 'Oracle DataBase 11G Administração')),
    
    -- Empréstimo do João - Livro 2
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'João'), 
     (SELECT id FROM livros WHERE nome = 'PHP para Desenvolvimento Profissional')),
    
    -- Empréstimo do Paulo
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Paulo'), 
     (SELECT id FROM livros WHERE nome = 'HTML5 - Guia Prático')),
    
    -- Primeiro empréstimo do Pedro
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Pedro' AND num_emprestimo = 1), 
     (SELECT id FROM livros WHERE nome = 'Programação Orientada a Aspectos em Java')),
    
    -- Segundo empréstimo do Pedro - Livro 1
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Pedro' AND num_emprestimo = 2), 
     (SELECT id FROM livros WHERE nome = 'XHTML: Guia de Referência para Desenvolvimento na Web')),
    
    -- Segundo empréstimo do Pedro - Livro 2
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Pedro' AND num_emprestimo = 2), 
     (SELECT id FROM livros WHERE nome = 'Banco de Dados - 1 Edição')),
    
    -- Terceiro empréstimo do Pedro
    ((SELECT id FROM emprestimos_identificados WHERE aluno = 'Pedro' AND num_emprestimo = 3), 
     (SELECT id FROM livros WHERE nome = 'PHP com Programação Orientada a Objetos'));