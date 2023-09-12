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
