USE LocadoraIfti;
GO

CREATE TABLE [dbo].[Reserva] (
    Id INT IDENTITY,
    IdVeiculo INT NOT NULL,
    IdCliente INT NOT NULL,
    DataReserva DATETIME NOT NULL,
    StatusReserva VARCHAR(10) NOT NULL,
    CONSTRAINT PK_Reserva PRIMARY KEY (Id),
    CONSTRAINT FK_IdVeiculo_Reserva FOREIGN KEY (IdVeiculo) REFERENCES [dbo].[Veiculo] (Id),
    CONSTRAINT FK_IdCliente_Reserva FOREIGN KEY (IdCliente) REFERENCES [dbo].[Cliente] (Id),
    CONSTRAINT CK_StatusReserva CHECK (StatusReserva IN ('Ativa', 'Atendida', 'Cancelada'))
)