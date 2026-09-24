use LocadoraIfti
GO

select CV.Nome, count(*) as QuantidadeAlugueis, SUM(A.ValorMulta) as TotalMultas
from CategoriaVeiculo CV
join Veiculo V on CV.Id = V.IdCategoria
join Aluguel A on V.Id = A.IdVeiculo
GROUP BY CV.Nome
HAVING COUNT(*) > 3
ORDER BY QuantidadeAlugueis DESC