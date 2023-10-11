SELECT Ano, Quantidade 
FROM (SELECT Ano, COUNT(*) as Quantidade, SUM(Duracao) as DuracaoTotal from Filmes GROUP BY Ano) AS DATA ORDER BY Ano DESC