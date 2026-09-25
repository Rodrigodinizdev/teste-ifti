USE LocadoraIfti;
GO

SELECT cv.Nome as NomeCategoria, COUNT(*) as QuantidadeAlugueis,  SUM(al.ValorMulta) as ValorTotalMultas
    FROM [dbo].[CategoriaVeiculo] AS cv WITH(NOLOCK)
    JOIN [dbo].[Veiculo] AS ve WITH(NOLOCK)
        ON cv.Id = ve.IdCategoria
    JOIN [dbo].[Aluguel] AS al WITH(NOLOCK)
        ON ve.Id = al.IdVeiculo
    GROUP BY cv.Nome
    HAVING COUNT(*) > 3
    ORDER BY QuantidadeAlugueis DESC;