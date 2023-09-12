SELECT titulo FROM livros;

SELECT nome FROM autores
WHERE YEAR(nascimento) < 1900;

SELECT livros.titulo FROM livros
INNER JOIN autores ON livros.autor_id = autores.id
WHERE autores.nome = 'J.K. Rowling';
