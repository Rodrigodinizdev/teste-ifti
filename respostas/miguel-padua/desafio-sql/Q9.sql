select C.Nome, V.Modelo, TP.Nome as FormaPagamento, SP.Nome as StatusPagamento
from Aluguel A
JOIN Cliente C on A.IdCliente = C.Id
JOIN Veiculo V on A.IdVeiculo = V.Id
join Pagamento P on A.Id = P.IdAluguel
join TipoPagamento TP on P.IdTipoPagamento = TP.Id
join StatusPagamento SP on P.IdStatusPagamento = SP.Id
WHERE A.DataDevolucaoReal is NULL
ORDER BY A.DataDevolucaoPrevista ASC