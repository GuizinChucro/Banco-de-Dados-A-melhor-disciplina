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
