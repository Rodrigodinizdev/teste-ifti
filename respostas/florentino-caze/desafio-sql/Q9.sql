USE LocadoraIfti;
GO

SELECT cl.Nome as NomeCliente, ve.Modelo as ModeloVeiculo, tp.Nome as TipoPagamento, sp.Nome as StatusPagamento
    FROM [dbo].[Aluguel] AS al WITH(NOLOCK)
    JOIN [dbo].[Cliente] AS cl WITH(NOLOCK)
        ON al.IdCliente = cl.Id
    JOIN [dbo].[Veiculo] AS ve WITH(NOLOCK)
        ON al.IdVeiculo = ve.Id
    JOIN [dbo].[Pagamento] AS pa WITH(NOLOCK)
        ON pa.IdAluguel = al.Id
    JOIN [dbo].[StatusPagamento] AS sp WITH(NOLOCK)
        ON sp.Id = pa.IdStatusPagamento
    JOIN [dbo].[TipoPagamento] AS tp WITH(NOLOCK)
        ON tp.Id = pa.IdTipoPagamento
    WHERE al.DataDevolucaoReal IS NULL
    ORDER BY al.DataDevolucaoPrevista ASC;