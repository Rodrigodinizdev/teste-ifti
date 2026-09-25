USE LocadoraIfti;
GO

SELECT cl.Nome, cl.Email, cl.Telefone
    FROM [dbo].[Cliente] AS cl WITH(NOLOCK)
    LEFT JOIN [dbo].[Aluguel] AS al WITH(NOLOCK)
        ON cl.Id = al.IdCliente
    WHERE al.IdCliente IS NULL;