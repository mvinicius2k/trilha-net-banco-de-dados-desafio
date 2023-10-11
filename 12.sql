SELECT Nome, PrimeiroNome, UltimoNome, Papel 
from Filmes filmes 
LEFT JOIN (SELECT PrimeiroNome, UltimoNome, Papel, IdFilme FROM Atores atores RIGHT JOIN ElencoFilme elencoFilme ON elencoFilme.IdAtor = atores.Id) elencoFilmeUniao
    ON elencoFilmeUniao.IdFilme = filmes.Id