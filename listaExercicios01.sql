SELECT titulo FROM livros;

SELECT nome FROM autores
WHERE YEAR(nascimento) < 1900;

SELECT livros.titulo FROM livros
INNER JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';

SELECT alunos.nome FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE matriculas.curso = 'Engenharia de Software';

SELECT produto, SUM(receita) as receita_total
FROM vendas
GROUP BY produto;

SELECT autores.nome, COUNT(livros.id) as numero_de_livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome;

SELECT matriculas.curso, COUNT(alunos.id) as numero_de_alunos FROM matriculas
INNER JOIN alunos ON matriculas.aluno_id = alunos.id GROUP BY matriculas.curso;

SELECT produto, AVG(receita) as media_de_receita FROM vendas GROUP BY produto;

SELECT produto, SUM(receita) as receita_total FROM vendas
GROUP BY produto HAVING SUM(receita) > 10000;

SELECT autores.nome, COUNT(livros.id) AS total_de_livros FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id GROUP BY autores.nome HAVING COUNT(livros.id) > 2;

SELECT livros.titulo, autores.nome AS autor FROM livros
INNER JOIN autores ON livros.autor_id = autores.id;

SELECT alunos.nome AS aluno, matriculas.curso FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id;

SELECT autores.nome AS autor, IFNULL(livros.titulo, 'Sem Livros Publicados') AS livro FROM autores
RIGHT JOIN livros ON autores.id = livros.autor_id;

SELECT alunos.nome AS aluno, IFNULL(matriculas.curso, 'Nenhum Curso Matriculado') AS curso
FROM matriculas
RIGHT JOIN alunos ON matriculas.aluno_id = alunos.id;

SELECT A1.nome AS aluno1, A2.nome AS aluno2, M1.curso FROM matriculas M1
INNER JOIN matriculas M2 ON M1.curso = M2.curso AND M1.aluno_id < M2.aluno_id
INNER JOIN alunos A1 ON M1.aluno_id = A1.id
INNER JOIN alunos A2 ON M2.aluno_id = A2.id;

SELECT autores.nome AS autor, COUNT(livros.id) AS quantidade_de_livros FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id GROUP BY autores.nome ORDER BY quantidade_de_livros DESC
LIMIT 1;

SELECT produto, receita FROM vendas
WHERE receita = (SELECT MIN(receita) FROM vendas);

/*Exercício 18*/

SELECT alunos.nome AS aluno, COUNT(matriculas.id) AS total_de_matriculas FROM alunos
LEFT JOIN matriculas ON alunos.id = matriculas.aluno_id GROUP BY alunos.nome;
