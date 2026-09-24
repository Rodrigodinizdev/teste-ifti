USE LocadoraIfti;
GO

SELECT  ca.Nome as Categoria,
        COUNT(al.Id) as QuantidadeDeAlugueis,
        SUM(al.ValorMulta) as ValorMultas
    FROM [dbo].[Aluguel] AS al WITH(NOLOCK)
        INNER JOIN [dbo].[Veiculo] AS ve WITH(NOLOCK)
            ON al.IdVeiculo = ve.Id
        INNER JOIN [dbo].[CategoriaVeiculo] AS ca WITH(NOLOCK)
            on ve.IdCategoria = ca.Id
    GROUP BY ca.Nome
    HAVING COUNT(al.Id) > 3
    ORDER BY QuantidadeDeAlugueis DESC;
GO
