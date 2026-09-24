USE LocadoraIfti;
GO

SELECT  cl.Nome as Cliente,
        ve.Modelo as Modelo,
        tp.Nome as FormaDePagamento,
        sp.Nome as StatusPagamento
    FROM [dbo].[Aluguel] AS al WITH(NOLOCK)
        INNER JOIN [dbo].[Cliente] AS cl WITH(NOLOCK)
            ON al.IdCliente = cl.Id
        INNER JOIN [dbo].[Veiculo] AS ve WITH(NOLOCK)
            ON al.IdVeiculo = ve.Id
        LEFT JOIN [dbo].[Pagamento] AS pg WITH(NOLOCK)
            ON pg.IdAluguel = al.Id
        LEFT JOIN [dbo].[TipoPagamento] AS tp WITH(NOLOCK)
            ON pg.IdTipoPagamento = tp.Id
        LEFT JOIN [dbo].[StatusPagamento] AS sp WITH(NOLOCK)
            ON pg.IdStatusPagamento = sp.Id
    WHERE al.DataDevolucaoReal IS NULL
    ORDER BY al.DataDevolucaoPrevista ASC;
GO
