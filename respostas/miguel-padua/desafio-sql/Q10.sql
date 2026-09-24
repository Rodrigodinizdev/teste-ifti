select C.Nome, C.Email, C.Telefone
from Cliente C
LEFT JOIN Aluguel A on C.Id = A.IdCliente
WHERE A.Id is NULL