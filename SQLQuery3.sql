-- 1
SELECT 
    Filmes.Nome,
    Filmes.Ano  
FROM Filmes

-- 2
SELECT 
Filmes.Nome,
Filmes.Ano,
Filmes.Duracao
FROM Filmes
ORDER BY Filmes.Ano 

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De volta para o futuro'
ORDER BY Nome, Ano, Duracao

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 
SELECT
    Filmes.Ano,
    COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
    PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT
    PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10 
SELECT Filmes.Nome AS NomeDoFilme, Generos.Genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

-- 11
SELECT Filmes.Nome AS NomeDoFilme, Generos.Genero AS Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';


-- 12
SELECT Filmes.Nome AS NomeDoFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;