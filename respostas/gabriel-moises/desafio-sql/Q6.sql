USE LocadoraIfti;
GO

SELECT  ve.Placa as Placa,
        ve.Modelo as Modelo,
        ca.Nome as Categoria,
        fi.RazaoSocial as Filial,
        sv.Nome as StatusAtual
    FROM [dbo].[Veiculo] AS ve WITH(NOLOCK)
        INNER JOIN [dbo].[CategoriaVeiculo] AS ca WITH(NOLOCK)
            ON ve.IdCategoria = ca.Id
        INNER JOIN [dbo].[Filial] AS fi WITH(NOLOCK)
            ON ve.IdFilial = fi.Id
        INNER JOIN [dbo].[StatusVeiculo] AS sv WITH(NOLOCK)
            ON ve.IdStatusVeiculo = sv.Id
    WHERE ve.Modelo LIKE '%o%'
        AND ve.AnoFabricacao BETWEEN 2019 AND 2023
    ORDER BY ve.AnoFabricacao DESC;
GO
