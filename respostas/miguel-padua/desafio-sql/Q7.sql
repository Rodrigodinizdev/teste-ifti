use LocadoraIfti
GO

SELECT TOP 3 C.Nome, COUNT(*) as QuantidadeAlugueis
from Cliente C
JOIN Aluguel A on C.Id = A.IdCliente
JOIN statusaluguel SA on A.IdStatusAluguel = SA.Id
WHERE SA.Nome <> 'Cancelado'
GROUP BY C.Nome
ORDER BY QuantidadeAlugueis DESC