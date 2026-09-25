USE LocadoraIfti;
GO

SELECT ve.Placa, ve.Modelo, cv.Nome as CategoriaVeiculo, fl.RazaoSocial as Filial, sv.Nome as StatusVeiculo
    FROM [dbo].[Veiculo] AS ve WITH(NOLOCK)
    JOIN [dbo].[CategoriaVeiculo] AS cv WITH(NOLOCK)
        ON ve.IdCategoria = cv.Id
    JOIN [dbo].[Filial] AS fl WITH(NOLOCK)
        ON ve.IdFilial = fl.Id
    JOIN [dbo].StatusVeiculo AS sv WITH(NOLOCK)
        ON ve.IdStatusVeiculo = sv.Id
    WHERE ve.AnoFabricacao BETWEEN 2019 AND 2023
    AND ve.Modelo LIKE '%o%'
    ORDER BY ve.AnoFabricacao DESC;