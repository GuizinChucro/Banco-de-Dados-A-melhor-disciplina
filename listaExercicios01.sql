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
