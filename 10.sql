SELECT Nome, Genero 
FROM Generos generos 
RIGHT JOIN 
    (SELECT Nome, idGenero
        from Filmes filmes 
            LEFT JOIN FilmesGenero filmesGenero ON filmes.Id = filmesGenero.idFilme) filmesComGeneros
    ON FilmesComGeneros.idGenero = generos.Id