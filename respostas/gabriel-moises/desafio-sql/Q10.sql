USE LocadoraIfti;
GO

SELECT  cl.Nome as Cliente,
        cl.Email as Email,
        cl.Telefone as Telefone
    FROM [dbo].[Cliente] AS cl WITH(NOLOCK)
        LEFT JOIN [dbo].[Aluguel] AS al WITH(NOLOCK)
            ON al.IdCliente = cl.Id
    WHERE al.IdCliente IS NULL;
GO
