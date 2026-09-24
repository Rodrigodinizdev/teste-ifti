USE LocadoraIfti;
GO

SELECT  TOP 3
        cl.Nome as Nome,
        COUNT(al.Id) as QuantidadeDeAlugueis
    FROM [dbo].[Aluguel] AS al WITH(NOLOCK)
        INNER JOIN [dbo].[Cliente] AS cl WITH(NOLOCK)
            ON al.IdCliente = cl.Id
        INNER JOIN [dbo].[StatusAluguel] AS sa WITH(NOLOCK)
            ON al.IdStatusAluguel = sa.Id
    WHERE sa.Nome != 'Cancelado'
    GROUP BY cl.Nome
    ORDER BY QuantidadeDeAlugueis DESC;
GO
