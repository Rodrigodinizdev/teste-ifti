USE LocadoraIfti;
GO

UPDATE [dbo].[Reserva]
    SET DataAtendimento = '2026-07-20', 
        StatusReserva = 'Atendida'
    WHERE Id = 2
GO
