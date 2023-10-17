SELECT Nome, Ano FROM Filmes;

SELECT * FROM Filmes ORDER BY Ano ASC;

SELECT * FROM Filmes WHERE Nome = 'De Volta para o Futuro';

SELECT * FROM Filmes WHERE Ano = 1997;

SELECT * FROM Filmes WHERE Ano > 2000;

SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

SELECT * FROM Filmes WHERE Ano = 1997;

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M';

SELECT Id, PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome;

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Generos.Genero = 'Mistério';

SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Papel FROM ElencoFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id;