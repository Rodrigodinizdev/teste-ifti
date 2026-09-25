USE LocadoraIfti;
GO

SELECT TOP 3 cl.Nome as NomeCliente, COUNT(*) as QuantidadeAlugueis
    FROM [dbo].[Cliente] AS cl WITH(NOLOCK)
    JOIN [dbo].[Aluguel] AS al WITH(NOLOCK)
        ON cl.Id = al.IdCliente
    WHERE al.IdStatusAluguel <> 4
    GROUP BY cl.Id, cl.Nome
    ORDER BY QuantidadeAlugueis DESC;