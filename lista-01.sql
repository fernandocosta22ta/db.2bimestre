-- ex1, Inserir um Novo Livro:
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES ('As Crônicas de Nárnia', 'C.S. Lewis', 1950, TRUE, 'Fantasia', '978-0064471190', 'HarperCollins', 768, 'Inglês');


-- ex2, Inserir Múltiplos Livros:
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma) VALUES
('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, TRUE, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, TRUE, 'Fantasia', '978-0439708180', 'Bloomsbury', 309, 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, TRUE, 'Fantasia', '978-0618640157', 'HarperCollins', 423, 'Inglês');


-- ex3, Inserir Livro com Categoria Específica:
INSERT INTO livros (titulo, autor, ano_publicacao, disponibilidade, categoria, isbn, editora, paginas, idioma)
VALUES ('Bíblia', 'Espírito Santo', 1898, TRUE, 'História', '978-1234567890', 'CPB', 950, 'Português');


-- ex4, Atualizar Disponibilidade:
UPDATE livros
SET disponibilidade = FALSE
WHERE ano_publicacao < 2000;


-- ex5, Atualizar Editora:
UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';


-- ex6, Atualizar Idioma: 
UPDATE livros
SET idioma = 'Inglês'
WHERE editora = 'Penguin Books';


-- ex7, Atualizar Título:
UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
WHERE isbn = '978-0439708180';


-- ex8, Deletar por Categoria:
DELETE FROM livros
WHERE categoria = 'Terror';


-- ex9, Deletar por Idioma e Ano:
DELETE FROM livros
WHERE idioma = 'Francês' AND ano_publicacao < 1970;


-- ex10, Deletar Livro Específico: 
DELETE FROM livros
WHERE titulo = 'As Crônicas de Nárnia';


-- ex11, Deletar por Editora: 
DELETE FROM livros
WHERE editora = 'Penguin Books';


-- ex12, Selecionar com WHERE:
SELECT * FROM livros
WHERE paginas > 500;


-- ex13, Selecionar com GROUP BY:
SELECT categoria, COUNT(1) AS quantidade
FROM livros
GROUP BY categoria;


-- ex14, Selecionar com LIMIT: 
SELECT * FROM livros
ORDER BY id 
LIMIT 5;


-- ex15, Selecionar com COUNT e AVG: 
SELECT COUNT(1) AS total_livros, AVG(paginas) AS media_paginas
FROM livros
WHERE categoria = 'Drama';


-- ex16, Selecionar com AVG: 
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros
WHERE disponibilidade = TRUE;


-- ex17, Selecionar com MAX e MIN:
SELECT * FROM livros WHERE ano_publicacao = (SELECT MAX(ano_publicacao) FROM livros);
SELECT * FROM livros WHERE ano_publicacao = (SELECT MIN(ano_publicacao) FROM livros);

-- ex18, Selecionar com ORDER BY:
SELECT * FROM livros
ORDER BY ano_publicacao DESC;


-- ex19, Selecionar com UNION:
SELECT titulo FROM livros
WHERE idioma = 'Inglês'
UNION
SELECT titulo FROM livros
WHERE idioma = 'Português';


-- ex20, Selecionar Livros de um Autor Específico:
SELECT * FROM livros
WHERE autor = 'George Orwell';
