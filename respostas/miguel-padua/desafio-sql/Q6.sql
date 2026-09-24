use LocadoraIfti
GO

select V.Placa, V.Modelo, CV.Nome as categoria, F.RazaoSocial as Filial, SV.Nome as STATUS
from Veiculo V
JOIN CategoriaVeiculo CV on V.IdCategoria = CV.Id
JOIN Filial F on V.IdFilial = F.Id
JOIN StatusVeiculo SV on V.IdStatusVeiculo = SV.Id
WHERE V.AnoFabricacao BETWEEN 2019 and 2023
AND V.Modelo Like '%o%'
ORDER BY V.AnoFabricacao DESC;
