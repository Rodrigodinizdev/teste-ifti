use LocadoraIfti
GO

CREATE TABLE Reserva(
Id INT IDENTITY(1,1) PRIMARY KEY,
IdVeiculo INT FOREIGN KEY REFERENCES Veiculo(Id),
IdCliente INT FOREIGN KEY REFERENCES Cliente(Id),
DataReserva DATE,
StatusReserva VARCHAR(20)
);

